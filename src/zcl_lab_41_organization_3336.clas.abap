CLASS zcl_lab_41_organization_3336 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_headquarters IMPORTING iv_HEADQUARTERS TYPE string.
    METHODS: get_headquarters RETURNING VALUE(rv_HEADQUARTERS) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: headquarters TYPE string.
ENDCLASS.



CLASS zcl_lab_41_organization_3336 IMPLEMENTATION.

  METHOD set_headquarters.
    me->headquarters = iv_headquarters.
  ENDMETHOD.

  METHOD get_headquarters.
    rv_HEADQUARTERS = me->headquarters.
  ENDMETHOD.


ENDCLASS.
