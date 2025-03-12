@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: ' Lab01_CDS_EJ07'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZUNIT_CONVERSION_3336
  as select from /dmo/fsa_root_a
{
  key id                                                  as Id,
      string_property                                     as StringProperty,
      uom                                                 as Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      unit_conversion( quantity => field_with_quantity,
                       source_unit => uom,
                       target_unit => abap.unit'W',
                       client => $session.client,
                        error_handling => 'SET_TO_NULL' ) as FieldWithQuantity

}
