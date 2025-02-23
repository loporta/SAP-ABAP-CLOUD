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

    DATA(lo_data) = NEW zcl_lab_26_flights_3336(  ).

    DATA: lw_customer TYPE zif_lab_02_customer_3336=>ty_cust_address,
          lv_fligth   TYPE string.

    lo_data->fligtht_set( '123' ).
    lo_data->fligtht_get( IMPORTING  ev_conn_id = lv_fligth ).

    out->write( lv_fligth ).

    lo_data->customer_get(
      EXPORTING
        iv_customer_id = '000001'
      RECEIVING
        rv_custmer     = lw_customer ).

    out->write( lw_customer ).


    lo_data->zif_lab_03_airports_3336~get_airports(
      EXPORTING
        iv_airport_id = 'FRA'
      RECEIVING
        lw_aiport    = DATA(lw_airpot)
    ).

    out->write( lw_airpot ).

    DATA(lo_data3) = NEW zcl_lab_28_logistics_3336(  ).

    out->write( lo_data3->input_products( ) ).
    out->write( lo_data3->merchandise_output( ) ).
    out->write( lo_data3->production_line( ) ).

  ENDMETHOD.
ENDCLASS.
