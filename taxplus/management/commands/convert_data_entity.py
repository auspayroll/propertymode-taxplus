from django.core.management.base import BaseCommand, CommandError 
from datetime import date, datetime, time, timedelta
from taxplus.models import Business, SubBusiness, Citizen, Entity, CategoryChoice, IdentityDocument, BusinessOwnership, PropertyOwnership, Ownership
import dateutil.parser
from datetime import date
from django.utils import timezone
from django import db
from dateutil.relativedelta import relativedelta


class Command(BaseCommand):
	#fixed_asset/rental_income/trading_license/cleaning_fee/market_fee/land_lease_fee
	args = ''
	help = """
	Transform businesses, subbusiness, citizens in to one Entity object/table

	"""
	name= ''
	
	def handle(self, *args, **options):
		errors = []
		
		for business in Business.objects.all():
			entity = Entity()
			entity.entity_type = CategoryChoice.objects.get(category__code='entity_type', code='business')
			entity.business = business
			entity.sector = business.sector
			entity.cell = business.cell
			entity.village = business.village
			entity.status = CategoryChoice.objects.get(category__code='status', code=(business.i_status or 'active'))
			entity.save()


		for citizen in Citizen.objects.all():
			entity = Entity()
			entity.entity_type = CategoryChoice.objects.get(category__code='entity_type', code='individual')
			entity.citizen_id = citizen.pk
			if citizen.status_id ==1:
				entity.status = CategoryChoice.objects.get(category__code='status', code='active')
			else:
				entity.status = CategoryChoice.objects.get(category__code='status', code='inactive')
			entity.contact_details_confirmed = citizen.contact_details_confirmed
			entity.credit = 0
			entity.save()

			if citizen.foreign_identity_type or citizen.foreign_identity_number:
				document = IdentityDocument()
				document.foreign_identity_type = citizen.foreign_identity_type
				document.foreign_identity_number = citizen.foreign_identity_number
				document.entity = entity
				document.save()


		for sub in SubBusiness.objects.all():
			entity = Entity()
			entity.entity_type = CategoryChoice.objects.get(category__code='entity_type', code='subsiduary')
			entity.subbusiness_id = sub.pk
			entity.parent = Entity.objects.get(business_id=sub.business.pk)
			entity.status = CategoryChoice.objects.get(category__code='status', code=(sub.business.i_status or 'active'))
			entity.sector = sub.sector
			entity.cell = sub.cell
			entity.village = sub.village
			entity.save()


		for ownership in Ownership.objects.filter(asset_property__isnull=False):  #.all():	
			if ownership.owner_citizen_id:
				owner = Entity.objects.get(citizen_id=ownership.owner_citizen_id)

			elif ownership.owner_business_id:
				owner = Entity.objects.get(business_id=ownership.owner_business_id)

			elif ownership.owner_subbusiness_id:
				owner = Entity.objects.get(subbusiness_id=ownership.owner_citizen_id)

			if ownership.asset_business_id or ownership.asset_subbusiness_id:
				new_ownership = BusinessOwnership()
				new_ownership.owner = owner

				if ownership.asset_business_id:
					new_ownership.business = Entity.objects.get(business_id=ownership.asset_business_id)

				elif ownership.asset_subbusiness_id:
					new_ownership.business = Entity.objects.get(subbusiness_id=ownership.asset_subbusiness_id)

			elif ownership.asset_property_id:
				new_ownership = PropertyOwnership()
				new_ownership.owner = owner
				new_ownership.prop_id = ownership.asset_property_id

			if new_ownership.owner_id and ( hasattr(new_ownership,'prop') or hasattr(new_ownership,'business')):
				new_ownership.date_from = ownership.date_started
				new_ownership.date_to = ownership.date_ended
				new_ownership.status = CategoryChoice.objects.get(category__code='status', code=(ownership.i_status or 'active'))
				new_ownership.stake = ownership.share

				new_ownership.legacy_pk = ownership.pk
				new_ownership.save()







