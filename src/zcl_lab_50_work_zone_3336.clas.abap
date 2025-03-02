CLASS zcl_lab_50_work_zone_3336 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_51_wz_friend.

  PUBLIC SECTION.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: lw_zone    TYPE  ty_work_zone.
    DATA: lcl_helper TYPE REF TO  lcl_helper.

    METHODS: set_work_zone IMPORTING iw_zone TYPE ty_work_zone.

ENDCLASS.



CLASS zcl_lab_50_work_zone_3336 IMPLEMENTATION.
  METHOD set_work_zone.
    me->lw_zone = iw_zone.
  ENDMETHOD.

ENDCLASS.
