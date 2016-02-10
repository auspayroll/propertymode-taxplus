from django.conf.urls import patterns, include, url
from django.conf import settings
from django.conf.urls.static import static
from taxplus import views as taxplus_views
from django.views.generic.base import TemplateView
from django.contrib.auth.decorators import login_required


urlpatterns = patterns('',

	url(r'^il/(?P<key>\w+)/$', taxplus_views.mobile_invoice_landing, name='mobile_invoice_landing'),
	url(r'^i/(?P<key>\w+)/$', taxplus_views.mobile_invoice, name='mobile_invoice'),
	url(r'^business/(?P<pk>\d+)/$', taxplus_views.business_fees, name='business_default'),

	url(r'^property/(?P<pk>\d+)/$', taxplus_views.property_fees, name='property_default'),
	url(r'^log_details/(?P<pk>\d+)/$', taxplus_views.log_details, name='log_details'),
	url(r'^admin/tax/tax/property/(?P<pk>\d+)/$', taxplus_views.property_fees, name='redirect_from_search'),
	url(r'^admin/log/log/$', taxplus_views.request_log, name='request_log'),
	url(r'^business/(?P<business_pk>\d+)/log/$', taxplus_views.request_log, name='business_log'),
	url(r'^property/(?P<property_pk>\d+)/log/$', taxplus_views.request_log, name='property_log'),
	url(r'^log/change/$', taxplus_views.change_log, name='change_log'),

	url(r'^admin/property/', include('property.urls')),
	url(r'^admin/auth/', include('pmauth.urls')),
	url(r'^admin/log/', include('log.urls')),
	url(r'^admin/business_fees/(?P<pk>\d+)/$', taxplus_views.business_fees, name='business_fees'),
	url(r'^admin/tax/tax/business/(?P<pk>\d+)/$', taxplus_views.business_fees, name='business_fees_deprecated'),
	url(r'^admin/business/(?P<pk>\d+)/$', taxplus_views.business_update, name='business'),
	url(r'^admin/business_update/(?P<pk>\d+)/$', taxplus_views.business_update, name='business_update'),
	url(r'^admin/asset/business/change_business/(?P<pk>\d+)/$', taxplus_views.business_update, name='change_business_deprecated'),
	url(r'^admin/tax/tax/business/(?P<pk>\d+)/edit_business/$', taxplus_views.business_update, name='change_business_deprecated2'),

	url(r'^business/(?P<pk>\d+)/update_region/$', taxplus_views.business_update_region, name='business_update_region'),
	url(r'^business/(?P<pk>\d+)/payments/$', taxplus_views.business_payments, name='business_payments'),
	url(r'^admin/merge_preview/(?P<pk>\d+)/$', taxplus_views.merge_preview, name='merge_preview'),


	url(r'^citizen/(?P<pk>\d+)/$', taxplus_views.citizen_update, name='citizen'),
	url(r'^citizen/(?P<pk>\d+)/update/$', taxplus_views.citizen_update, name='citizen_update'),
	url(r'^citizen/(?P<pk>\d+)/contact/$', taxplus_views.citizen_contact, name='citizen_contact'),
	url(r'^citizen/(?P<pk>\d+)/assets/$', taxplus_views.citizen_assets, name='citizen_assets'),

	url(r'^admin/message_batches/$', taxplus_views.message_batches, name='message_batches'),
	url(r'^admin/new_business_message_batch/$', taxplus_views.new_business_message_batch, name='new_business_message_batch'),
	url(r'^admin/batch_messages/(?P<pk>\d+)/$', taxplus_views.batch_messages, name='batch_messages'),
	url(r'^admin/batch_messages_csv/(?P<pk>\d+)/$', taxplus_views.batch_messages, {'csv':True}, name='batch_messages_csv'),

	url(r'^payment/search/$', taxplus_views.payment_search, name='search_payments'),
	url(r'^admin/to_fee_from_payment_search/(?P<pk>\d+)/$', taxplus_views.to_fee_from_payment_search, name='to_fee_from_payment_search'),

	url(r'^property/(?P<pk>\d+)/$', taxplus_views.property_fees, name='property'),
	url(r'^property/(?P<pk>\d+)/fees/$', taxplus_views.property_fees, name='property_fees_link'),
	url(r'^property/(?P<pk>\d+)/map/$', taxplus_views.property_map, name='property_map'),

	url(r'^property/(?P<pk>\d+)/media/$', taxplus_views.property_media, name='property_media'),

	url(r'^payments/reverse/$', taxplus_views.reverse_payments, name='reverse_payments'),
	url(r'^payments/reverse/deprecated/$', taxplus_views.payment_reverse, name='reverse_payments_redirect_deprecated'),


	url(r'^admin/tax/', include('jtax.urls')),
	url(r'^admin/citizen/', include('citizen.urls')),
	url(r'^admin/contact/', include('contact.urls')),
	url(r'^admin/asset/', include('asset.urls')),
	url(r'^admin/media/', include('media.urls')),
	#url(r'^admin/import/', include('import.urls')),
	url(r'^admin/report/', include('report.urls')),
	url(r'^admin/forms/', include('forms.urls')),
	url(r'^admin/cleaning_audit/', taxplus_views.cleaning_audit, name='cleaning_audit'),
	url(r'^admin/cleaning_debtors/', taxplus_views.cleaning_debtors, name='cleaning_debtors'),

	url(r'^property/(?P<pk>\d+)/fees/$', taxplus_views.property_fees, name='property_fees'),
	url(r'^admin/property_payments/(?P<pk>\d+)/$', taxplus_views.property_payments, name='property_payments'),
	url(r'^admin/property_leases/(?P<pk>\d+)/$', taxplus_views.leases, name='property_leases'),
	url(r'^admin/edit_lease/(?P<pk>\d+)/$', taxplus_views.edit_lease, name='edit_lease'),
	url(r'^admin/new_lease/(?P<pk>\d+)/$', taxplus_views.new_lease, name='new_lease'),
	url(r'^admin/paylandlease/(?P<pk>\d+)/$', taxplus_views.payFee, name='paylandlease'),
	url(r'^admin/payfee/(?P<pk>\d+)/$', taxplus_views.payFee, name='payfee'),
	url(r'^admin/pay_selected_fees/$', taxplus_views.paySelectedFees, name='payselectedfees'),
	url(r'^property_invoice/(?P<pk>\d+)/$', taxplus_views.get_property_invoice, name='property_invoice'),

	url(r'^admin/duplicates/', taxplus_views.duplicates, name='duplicates'),
	url(r'^admin/bulk_messaging/', include('bulk_messaging.urls')),
	url(r'^admin/', include('admin.urls')),
	url(r'^crud/', include('crud.urls')),
	#url(r'^api/', include('api.urls')),
	url(r'^$','admin.views.login'),
	url(r'^temppassword/','admin.views.set_temp_password'),
	#url(r'^test/',include('mytest.urls')),
	# url('^test/$', login_required(TemplateView.as_view(template_name='test.html')), name='test'),
	url('^test/$', TemplateView.as_view(template_name='test.html'), name='test'),
)

urlpatterns += patterns('',
		url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {
			'document_root': settings.MEDIA_ROOT,
		}),

		url('^notices/$', login_required(TemplateView.as_view(template_name='notices.html')), name='notices'),
   )
