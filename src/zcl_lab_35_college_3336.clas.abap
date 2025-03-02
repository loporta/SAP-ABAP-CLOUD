CLASS zcl_lab_35_college_3336 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: im_nombre TYPE REF TO zcl_lab_34_student_3336.
    METHODS: enroll_student EXPORTING io_nombre  TYPE REF TO zcl_lab_34_student_3336.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_35_college_3336 IMPLEMENTATION.


  METHOD enroll_student.
    me->im_nombre = io_nombre.
  ENDMETHOD.

ENDCLASS.
