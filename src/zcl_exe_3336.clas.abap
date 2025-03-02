CLASS zcl_exe_3336 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_exe_3336 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    DATA(lo_data) = NEW zcl_lab_26_flights_3336(  ).
*
*    DATA: lw_customer TYPE zif_lab_02_customer_3336=>ty_cust_address,
*          lv_fligth   TYPE string.
*
*    lo_data->fligtht_set( '123' ).
*    lo_data->fligtht_get( IMPORTING  ev_conn_id = lv_fligth ).
*
*    out->write( lv_fligth ).
*
*    lo_data->customer_get(
*      EXPORTING
*        iv_customer_id = '000001'
*      RECEIVING
*        rv_custmer     = lw_customer ).
*
*    out->write( lw_customer ).
*
*
*    lo_data->zif_lab_03_airports_3336~get_airports(
*      EXPORTING
*        iv_airport_id = 'FRA'
*      RECEIVING
*        lw_aiport    = DATA(lw_airpot)
*    ).
*
*    out->write( lw_airpot ).
*
*    DATA(lo_data3) = NEW zcl_lab_28_logistics_3336(  ).
*
*    out->write( lo_data3->input_products( ) ).
*    out->write( lo_data3->merchandise_output( ) ).
*    out->write( lo_data3->production_line( ) ).
**************** Polimorfismo
*

*    DATA: lcl_data       TYPE REF TO zcl_lab_42_screen_3336,
*          lcl_data_event TYPE REF TO zcl_lab_43_navigation_3336.
*
*    CREATE OBJECT lcl_data.
*    CREATE OBJECT lcl_data_event.
*
*    SET HANDLER lcl_data_event->on_touch_screen FOR lcl_data.
*
*    lcl_data->element_selected(
*      ev_horizontal = 33
*      ev_vertical   = 42
*    ).
*
*    out->write( lcl_data_event->get_data(  ) ).

* Asociacion
*
*    DATA(lo_collage) = NEW zcl_lab_35_college_3336(  ).
*    DATA(lo_student) = NEW zcl_lab_34_student_3336(  ).
*
*    lo_student->set_name( 'Lorena' ).
*    lo_collage->enroll_student( IMPORTING io_nombre = lo_student ).

* Composicion
*
*    DATA(lo_screen) = NEW zcl_lab_37_screen_3336(  ).
*
*    DATA(lo_phone) = NEW zcl_lab_36_phone_3336( io_screen = lo_screen ).
*
*    lo_screen->screen_type = 'LOLO'.
*    out->write( lo_phone->screen->screen_type ).

* Multiples referencias.
*
*    DATA(lo_ref1) = NEW zcl_lab_38_prod_price_3336(  ).
*    DATA(lo_ref2) = NEW zcl_lab_38_prod_price_3336(  ).
*
*    lo_ref1->price = 44.
*    out->write( lo_ref1->price ).
*
*    lo_ref2->price = 55.
*    out->write( lo_ref2->price ).
*
*    lo_ref1 = lo_ref2.
*    out->write( lo_ref1->price ).

** instancias de tipos distintos.
*
*    DATA:lo_budget TYPE REF TO  zcl_lab_39_budget_3336.
*
*    DATA(lo_actual) = NEW zcl_lab_40_actual_budget_3336(  ).
*
*    out->write( lo_actual->get_budget(  ) ).

* METODOS DINAMICOS.
    DATA lo_object TYPE REF TO object.

    lo_object = NEW zcl_lab_41_organization_3336(  ).

    DATA(lv_metodo_set)  = 'SET_HEADQUARTERS'.
    DATA lv_lolo TYPE string VALUE 'LOLO'.

    DATA(lv_metodo_get)  = 'GET_HEADQUARTERS'.
    DATA lv_resultado TYPE string.

    CALL METHOD lo_object->(lv_metodo_set) EXPORTING iv_HEADQUARTERS = lv_lolo.

    CALL METHOD lo_object->(lv_metodo_get) RECEIVING rv_HEADQUARTERS = lv_resultado.

    out->write( lv_resultado ).

  ENDMETHOD.
ENDCLASS.
