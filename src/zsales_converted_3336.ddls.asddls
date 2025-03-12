@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'LAB_CDS_EJ06'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSALES_CONVERTED_3336
  as select from /dmo/booking
{
  key travel_id                                               as TravelId,
  key booking_id                                              as BookingId,
      customer_id                                             as CustomerId,
      currency_code                                           as CurrencyCode,
      @Semantics.amount.currencyCode: 'Currency_Price'
      currency_conversion( amount => flight_price,
                           source_currency => currency_code,
                           target_currency => abap.cuky'USD',
                           exchange_rate_date => $session.system_date,
                            error_handling => 'SET_TO_NULL' ) as FlightPrice,

      cast( 'USD' as abap.cuky )                              as Currency_Price
}
