CLASS zcl_lab_26_flights_3336 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_lab_01_flight_3336,
      zif_lab_02_customer_3336.

    ALIASES: fligtht_get  FOR zif_lab_01_flight_3336~get_conn_id,
             fligtht_set  FOR zif_lab_01_flight_3336~set_conn_id,
             customer_get FOR zif_lab_02_customer_3336~get_customer.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: conn_id TYPE string.

ENDCLASS.



CLASS zcl_lab_26_flights_3336 IMPLEMENTATION.
  METHOD fligtht_get.
    ev_CONN_ID = me->conn_id.
  ENDMETHOD.

  METHOD fligtht_set.
    me->conn_id = iv_CONN_ID.
  ENDMETHOD.

  METHOD customer_get.

    SELECT SINGLE first_name, last_name
       FROM /dmo/customer
       WHERE customer_id = @iv_customer_id
       INTO @rv_custmer.
    IF sy-subrc <> 0.
      CLEAR: rv_custmer.
    ENDIF.

  ENDMETHOD.



  METHOD zif_lab_03_airports_3336~get_airports.

    SELECT SINGLE  client, airport_id, name, city, country
      FROM /dmo/airport
      WHERE airport_id = @iv_airport_id
      INTO @lw_aiport.
    IF sy-subrc <> 0.
      CLEAR: lw_aiport.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
