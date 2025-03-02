*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section
TYPES: BEGIN OF ty_work_zone,
         launchpad TYPE string,
         dashboard TYPE string,
         spaces    TYPE string,
       END OF ty_work_zone.

CLASS lcl_helper DEFINITION.
  PUBLIC SECTION.
    DATA: ms_work_zone TYPE ty_work_zone.
    METHODS: get_work_zon RETURNING VALUE(rv_MS_WORK_ZONE) TYPE ty_work_zone.
ENDCLASS.
