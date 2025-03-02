CLASS zcl_lab_42_screen_3336 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.

    DATA: horizontal  TYPE i,
          vertical    TYPE i.

    EVENTS: touch_screen EXPORTING VALUE(ev_horizontal) TYPE i
                                   VALUE(ev_vertical)   TYPE i.

    METHODS: element_selected IMPORTING ev_horizontal  TYPE i
                                        ev_vertical    TYPE i
                                        ev_screen_type TYPE string.
    METHODS constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_42_screen_3336 IMPLEMENTATION.
  METHOD element_selected.

    RAISE EVENT touch_screen
      EXPORTING
        ev_horizontal = ev_horizontal
        ev_vertical   = ev_vertical.
  ENDMETHOD.

  METHOD constructor.
  ENDMETHOD.

ENDCLASS.
