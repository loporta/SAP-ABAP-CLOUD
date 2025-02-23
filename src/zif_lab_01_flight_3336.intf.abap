INTERFACE zif_lab_01_flight_3336
  PUBLIC .
  CLASS-DATA: comp_id TYPE string.

  DATA: conn_id   TYPE string.

  INTERFACES zif_lab_03_airports_3336.

  METHODS: set_CONN_ID IMPORTING iv_CONN_ID TYPE string,
           get_CONN_ID EXPORTING ev_CONN_ID TYPE string.

ENDINTERFACE.
