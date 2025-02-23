INTERFACE zif_lab_03_airports_3336
  PUBLIC .
  METHODS: get_airports IMPORTING iv_airport_id    TYPE string
                        RETURNING VALUE(lw_aiport) TYPE /dmo/airport.
ENDINTERFACE.
