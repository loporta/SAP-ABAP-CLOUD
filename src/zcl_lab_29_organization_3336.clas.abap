CLASS zcl_lab_29_organization_3336 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_location  RETURNING VALUE(rv_localizacion) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_29_organization_3336 IMPLEMENTATION.
  METHOD get_location.

    rv_localizacion = 'Location'.

  ENDMETHOD.

ENDCLASS.
