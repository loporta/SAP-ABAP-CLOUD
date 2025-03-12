@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'LAB_CDS_EJ01'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDATA_MODELING_3336
  as select from /dmo/customer
{
  key customer_id                                as CustomerId,
      first_name                                 as FirstName,
      last_name                                  as LastName,
      $session.system_date                       as Dates,
      $session.user                              as UserSession,
      cast( customer_id as abap.int8 )           as CustomerCast,
      case country_code when 'US'then 'United States'
                        when 'DE'then 'Germany'
                        else 'Other Country' end as Country
}
