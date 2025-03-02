CLASS zcl_lab_33_expatriate_empl3336 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_04_employee_3336.
    ALIASES: EXempl FOR zif_lab_04_employee_3336~get_employees_count.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_33_expatriate_empl3336 IMPLEMENTATION.
  METHOD EXempl.
    lv_cant_emplo = 36.
  ENDMETHOD.

ENDCLASS.
