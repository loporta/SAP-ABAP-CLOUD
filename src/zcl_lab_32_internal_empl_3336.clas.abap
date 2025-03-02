CLASS zcl_lab_32_internal_empl_3336 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_04_employee_3336.
    ALIASES: empl FOR zif_lab_04_employee_3336~get_employees_count.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_32_internal_empl_3336 IMPLEMENTATION.

  METHOD empl.
    lv_cant_emplo = 232.
  ENDMETHOD.

ENDCLASS.
