CLASS zcl_lab_51_wz_friend DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_helper.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_51_wz_friend IMPLEMENTATION.
  METHOD get_helper.
    DATA(lo_data) = NEW zcl_lab_50_work_zone_3336(  ).
    DATA(lo_hekp) = lo_data->lcl_helper->get_work_zon(  ).
  ENDMETHOD.

ENDCLASS.
