CLASS zcl_lab_36_phone_3336 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: screen TYPE REF TO zcl_lab_37_screen_3336.
    METHODS constructor IMPORTING io_screen TYPE REF TO zcl_lab_37_screen_3336.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_36_phone_3336 IMPLEMENTATION.
  METHOD constructor.
    me->screen = io_screen.
  ENDMETHOD.

ENDCLASS.
