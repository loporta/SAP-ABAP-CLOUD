CLASS zcl_lab_31_org_france_3336 DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_29_organization_3336
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS  get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_31_org_france_3336 IMPLEMENTATION.
  METHOD get_location.
    rv_localizacion  = 'France'.
  ENDMETHOD.

ENDCLASS.
