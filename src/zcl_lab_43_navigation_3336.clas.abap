CLASS zcl_lab_43_navigation_3336 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: log    TYPE string,
          screen TYPE string.

    METHODS: on_touch_screen FOR EVENT touch_screen OF zcl_lab_42_screen_3336 IMPORTING ev_horizontal ev_vertical sender,
      get_data RETURNING VALUE(rv_log) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_43_navigation_3336 IMPLEMENTATION.


  METHOD on_touch_screen.
    me->log = |{ ev_horizontal } '--' { ev_vertical } |.
    me->screen = sender->screen_type.
  ENDMETHOD.

  METHOD get_data.
    rv_log = me->screen.
  ENDMETHOD.

ENDCLASS.
