CLASS zcl_lab_27_factory_3336 DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: merchandise_output RETURNING VALUE(rv_merchendise) TYPE string.
    METHODS: production_line ABSTRACT RETURNING VALUE(rv_production)  TYPE string ,
             input_products  ABSTRACT RETURNING VALUE(rv_input)       TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_27_factory_3336 IMPLEMENTATION.
  METHOD merchandise_output.
    rv_merchendise = 'zcl_lab_27_factory_3336'.
  ENDMETHOD.
ENDCLASS.
