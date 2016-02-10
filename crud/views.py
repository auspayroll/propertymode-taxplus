from collect.forms import EpayForm, CollectionGroupForm, RegistrationForm, CollectorForm, BusinessForm
from collect.models import Epay, CollectionGroup, Collector, Epay, EpayBatch
from crud.forms import CitizenForm, BusinessForm, NewFeeForm, NewPaymentForm, ContactForm, PaymentForm, form_for_model, MediaForm, NewFeeCollectionForm, AccountNoteForm
from crud.models import Account, Contact, AccountPayment, Media, AccountHolder, AccountFee, AccountNote
from datetime import date
from dateutil.relativedelta import relativedelta
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.models import User
from django.contrib.contenttypes.models import ContentType
from django.contrib.gis.geos import Point
from django.core.mail import send_mail
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.core.urlresolvers import reverse
from django.db.models import Q, Sum
from django.forms.models import modelformset_factory
from django.http import HttpResponse, Http404
from django.shortcuts import HttpResponseRedirect, render_to_response, get_object_or_404, redirect
from django.template.response import TemplateResponse
from djqscsv import render_to_csv_response
from random import randint
from taxplus.models import Sector, Business, Citizen
import csv
import json



@login_required
def index(request):
	return TemplateResponse(request, 'crud/readme.html', )


@login_required
def select_fees(request):
	return TemplateResponse(request, 'crud/select_fees.html')



@login_required
def select_account_holder(request, pk):
	fee_type = get_object_or_404(ContentType, pk=pk)
	request.session['fee_type'] = {'id':id, 'name':fee_type.name}
	return TemplateResponse(request, 'crud/select_fees.html')



@login_required
def new_citizen_account(request):
	if request.method == 'POST':
		form= CitizenForm(request.POST)
		if form.is_valid():
			duplicate = form.cleaned_data.get('duplicate')
			if duplicate:
				form = CitizenForm(request.POST, instance=duplicate)
				if form.is_valid():
					citizen = form.save()
				else:
					return TemplateResponse(request, 'crud/base_form.html', {'form':form, 'heading':'New Citizen Account'})
			else:
				citizen = form.save()

			#create an account
			account = Account.objects.create(start_date=form.cleaned_data.get('start_date'), name=citizen.name)
			AccountHolder.objects.create(account=account, holder=citizen)
			messages.success(request, 'New Citizen Account created')
			return HttpResponseRedirect(reverse('account', args=[account.pk]))
	else:
		form = CitizenForm()

	return TemplateResponse(request, 'crud/base_form.html', {'form':form, 'heading':'New Citizen Account'})


@login_required
def new_business_account(request):
	if request.method == 'POST':
		form= BusinessForm(request.POST)
		if form.is_valid():
			duplicate = form.cleaned_data.get('duplicate')
			if duplicate:
				form = BusinessForm(request.POST, instance=duplicate)
				if form.is_valid():
					business = form.save(commit=False)
				else:
					return TemplateResponse(request, 'crud/base_form.html', {'form':form, 'heading':'New Business Account'})
			else:
				business = form.save(commit=False)
				business.vat_register = False
				business.market_fee_applicable = False
			lat = form.cleaned_data.get('lat')
			lon = form.cleaned_data.get('lon')
			if lat and lon:
				business.location = Point(lat, lon)
			business.save()
			#create an account
			account = Account.objects.create(start_date=form.cleaned_data.get('date_started'), name=business.name)
			AccountHolder.objects.create(account=account, holder=business)
			messages.success(request, 'New Business Account created')
			return HttpResponseRedirect(reverse('account', args=[account.pk]))
	else:
		form = BusinessForm()

	return TemplateResponse(request, 'crud/base_form.html', {'form':form, 'heading':'New Business Account'})


@login_required
def account(request, pk):
	acc = get_object_or_404(Account, pk=pk)
	fee_form = NewFeeForm()
	return TemplateResponse(request, 'crud/account.html', {'account':acc, 'fee_form':fee_form})

@login_required
def new_account_fee(request, pk):
	account = get_object_or_404(Account, pk=pk)
	if request.method == 'POST':
		form= NewFeeForm(request.POST)
		if form.is_valid():
			initial = form.cleaned_data
			initial['from_date'] = account.start_date
			utility_form_class = form_for_model(form.cleaned_data.get('fee_type').code)
			utility_form = utility_form_class(initial=initial, auto=form.cleaned_data.get('auto'),district=form.cleaned_data.get('district'))
			return TemplateResponse(request, 'crud/new_account_utility.html', {'account':account, 'form':utility_form})
	else:
		form = NewFeeForm()

	return TemplateResponse(request, 'crud/new_fee_account.html', {'account':account, 'form':form})


@login_required
def new_account_utility(request, pk):
	account = get_object_or_404(Account, pk=pk)
	if request.method == "POST":
		form= NewFeeForm(request.POST)
		if form.is_valid():
			utility_form_class = form_for_model(form.cleaned_data.get('fee_type').code)
			form = utility_form_class(request.POST, auto=form.cleaned_data.get('auto'),
					district=form.cleaned_data.get('district'))
			if form.is_valid():
				fee = form.save(commit=False, user=request.user, account=account)
				fee.account = account
				fee.user = request.user
				fee.save()
				messages.success(request, 'New Fee Created')
				return HttpResponseRedirect(reverse('account_fees', args=[pk]))
	else:
		form = NewFeeForm()
		return TemplateResponse(request, 'crud/new_fee_account.html', {'account':account, 'form':form})

	return TemplateResponse(request, 'crud/new_account_utility.html', {'account':account, 'form':form})


@login_required
def new_account_payment(request, pk):
	account = get_object_or_404(Account, pk=pk)
	if request.method == 'POST':
		form= NewPaymentForm(request.POST)
		if form.is_valid():
			messages.success(request, 'New Payment Created')
			return HttpResponseRedirect(reverse('account', args=[pk]))
	else:
		form = NewPaymentForm()

	return TemplateResponse(request, 'crud/new_fee_account.html', {'account':account, 'form':form})

@login_required
def recent_accounts(request):
	accounts = Account.objects.all().order_by('-pk')
	return TemplateResponse(request, 'crud/accounts.html', {'accounts':accounts})


@login_required
def account_fees(request,pk):
	account = get_object_or_404(Account, pk=pk)
	fees = AccountFee.objects.filter(account=account).order_by('-pk')
	return TemplateResponse(request, 'crud/fees.html', {'account':account, 'fees':fees})


@login_required
def update_account(request, pk):
	if request.method == 'POST':
		form= BusinessForm(request.POST)
		if form.is_valid():
			business = form.save(commit=False)
			account = Account.objects.create(holder=business, name=business.name)
			messages.success(request, 'New Business Account created')
	else:
		form = BusinessForm()

	return TemplateResponse(request, 'crud/new_account.html', {'form':form})


@login_required
def account_contacts(request,pk):
	account = get_object_or_404(Account, pk=pk)
	contacts = Contact.objects.filter(account=account).order_by('-pk')

	return TemplateResponse(request, 'crud/contacts.html', {'account':account, 'contacts':contacts})


@login_required
def new_contact(request, pk):
	account = get_object_or_404(Account, pk=pk)
	if request.method == 'POST':
		form= ContactForm(request.POST)
		if form.is_valid():
			contact = form.save(commit=False)
			contact.account = account
			contact.save()
			return HttpResponseRedirect(reverse('account_contacts', args=[account.pk]))
	else:
		form = ContactForm()

	return TemplateResponse(request, 'crud/form.html', {'account':account, 'form':form, 'heading':'New Contact'})


@login_required
def account_payments(request,pk):
	account = get_object_or_404(Account, pk=pk)
	payments = AccountPayment.objects.filter(account=account).order_by('-pk')

	return TemplateResponse(request, 'crud/payments.html', {'account':account, 'payments':payments})


@login_required
def new_payment(request, pk):
	account = get_object_or_404(Account, pk=pk)
	if request.method == 'POST':
		form= PaymentForm(request.POST)
		if form.is_valid():
			payment = form.save(commit=False)
			payment.account = account
			payment.user = request.user
			payment.save()
			messages.success(request, 'New Payment created')
			return HttpResponseRedirect(reverse('account_payments', args=[account.pk]))
	else:
		form = PaymentForm()

	return TemplateResponse(request, 'crud/form.html', {'account':account, 'form':form, 'heading':'New Account Payment'})


@login_required
def account_media(request,pk):
	account = get_object_or_404(Account, pk=pk)
	media = Media.objects.filter(account=account).order_by('-pk')
	return TemplateResponse(request, 'crud/media.html', {'account':account, 'media':media})


@login_required
def new_media(request, pk):
	account = get_object_or_404(Account, pk=pk)
	if request.method == 'POST':
		form= MediaForm(request.POST, request.FILES)
		if form.is_valid():
			media = form.save(commit=False)
			media.account = account
			media.user = request.user
			media.save()
			messages.success(request, 'New Media created')
			return HttpResponseRedirect(reverse('account_media', args=[account.pk]))
	else:
		form = MediaForm()

	return TemplateResponse(request, 'crud/mediaform.html', {'account':account, 'form':form, 'heading':'New Media'})


@login_required
def new_fee_collection(request, pk):
	account = get_object_or_404(Account, pk=pk)
	if request.method == 'POST':
		form= NewFeeCollectionForm(request.POST)
		if form.is_valid():
			form.save(account=account, user=request.user)
			messages.success(request, 'New Fee Collection created')
			return HttpResponseRedirect(reverse('fee_collections', args=[account.pk]))
	else:
		form = NewFeeCollectionForm()

	return TemplateResponse(request, 'crud/form.html', {'account':account, 'form':form, 'heading':'New Fee Collection'})


@login_required
def fee_collections(request,pk):
	account = get_object_or_404(Account, pk=pk)
	collections = AccountPayment.objects.filter(fee__account=account).order_by('-pk')
	return TemplateResponse(request, 'crud/collections.html', {'account':account, 'collections':collections})


@login_required
def account_holders(request,pk):
	account = get_object_or_404(Account, pk=pk)
	holders = AccountHolder.objects.filter(account=account).order_by('-pk')
	return TemplateResponse(request, 'crud/holders.html', {'account':account, 'holders':holders})



@login_required
def new_account_note(request, pk):
	account = get_object_or_404(Account, pk=pk)
	if request.method == 'POST':
		form= AccountNoteForm(request.POST)
		if form.is_valid():
			note = form.save(commit=False)
			note.account=account
			note.user=request.user
			note.save()
			messages.success(request, 'New Account note created')
			return HttpResponseRedirect(reverse('account_notes', args=[account.pk]))
	else:
		form = AccountNoteForm()

	return TemplateResponse(request, 'crud/form.html', {'account':account, 'form':form, 'heading':'New Account Note'})


@login_required
def account_notes(request,pk):
	account = get_object_or_404(Account, pk=pk)
	notes = AccountNote.objects.filter(account=account).order_by('-pk')
	return TemplateResponse(request, 'crud/notes.html', {'account':account, 'notes':notes})





