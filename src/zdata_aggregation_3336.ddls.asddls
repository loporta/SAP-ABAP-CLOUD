@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'LAB_CDS_EJ05'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDATA_AGGREGATION_3336
  as select from /dmo/booking
{
  customer_id         as CustomerId,
  currency_code       as CurrencyCode,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  sum( flight_price ) as FlightPrice

}
group by
  customer_id,
  currency_code
