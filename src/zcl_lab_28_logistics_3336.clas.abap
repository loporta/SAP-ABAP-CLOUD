CLASS zcl_lab_28_logistics_3336 DEFINITION INHERITING FROM zcl_lab_27_factory_3336
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: production_line REDEFINITION,
      input_products REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_28_logistics_3336 IMPLEMENTATION.
  METHOD input_products.
    rv_input = 'zcl_lab_28_logistics_3336'.
  ENDMETHOD.

  METHOD production_line.
    rv_production = 'zcl_lab_28_logistics_3336'.
  ENDMETHOD.

ENDCLASS.
