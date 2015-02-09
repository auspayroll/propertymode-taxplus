from django.conf.urls import patterns, include, url
from django.conf import settings
from django.conf.urls.static import static
from taxplus import views as taxplus_views
from django.views.generic.base import TemplateView
from django.contrib.auth.decorators import login_required


urlpatterns = patterns('',

	url(r'^il/(?P<key>\w+)/$', taxplus_views.mobile_invoice_landing, name='mobile_invoice_landing'),
	url(r'^i/(?P<key>\w+)/$', taxplus_views.mobile_invoice, name='mobile_invoice'),
	url(r'^admin/tax/tax/business/(?P<pk>\d+)/$', taxplus_views.business_fees, name='business_default'),
	url(r'^admin/tax/tax/property/(?P<pk>\d+)/$', taxplus_views.property_fees, name='property_default'),

	url(r'^admin/property/', include('property.urls')),
	url(r'^admin/auth/', include('pmauth.urls')),
	url(r'^admin/log/', include('log.urls')),
	url(r'^admin/business_fees/(?P<pk>\d+)/$', taxplus_views.business_fees, name='business_fees'),
	url(r'^admin/business_update/(?P<pk>\d+)/$', taxplus_views.business_update, name='business_update'),
	url(r'^admin/asset/business/change_business/(?P<pk>\d+)/$', taxplus_views.business_update, name='change_business_deprecated'),
	url(r'^admin/business_update_region/(?P<pk>\d+)/$', taxplus_views.business_update_region, name='business_update_region'),
	url(r'^admin/business_payments/(?P<pk>\d+)/$', taxplus_views.business_payments, name='business_payments'),
	url(r'^admin/merge_preview/(?P<pk>\d+)/$', taxplus_views.merge_preview, name='merge_preview'),

	url(r'^admin/message_batches/$', taxplus_views.message_batches, name='message_batches'),
	url(r'^admin/new_business_message_batch/$', taxplus_views.new_business_message_batch, name='new_business_message_batch'),
	url(r'^admin/batch_messages/(?P<pk>\d+)/$', taxplus_views.batch_messages, name='batch_messages'),
	url(r'^admin/batch_messages_csv/(?P<pk>\d+)/$', taxplus_views.batch_messages, {'csv':True}, name='batch_messages_csv'),


	url(r'^admin/property_fees/(?P<pk>\d+)/fees/$', taxplus_views.property_fees, name='property_fees_link'),

	url(r'^admin/property/media/(?P<pk>\d+)/$', taxplus_views.property_media, name='property_media'),

	url(r'^admin/reverse_payments/$', taxplus_views.reverse_payments, name='reverse_payments'),

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

	url(r'^admin/property_fees/(?P<pk>\d+)/$', taxplus_views.property_fees, name='property_fees'),
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
	#url(r'^api/', include('api.urls')),
	url(r'^$','admin.views.login'),
	url(r'^temppassword/','admin.views.set_temp_password'),
	#url(r'^test/',include('mytest.urls')),
)

urlpatterns += patterns('',
		url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {
			'document_root': settings.MEDIA_ROOT,
		}),

		url('^notices/$', login_required(TemplateView.as_view(template_name='notices.html')), name='notices'),
   )
