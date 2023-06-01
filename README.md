# [WIP] brlda_leaks

Run `brlda_leak_data_load.sql` in an interactive psql session to:

1. Create a new schema `brlda_leaks`
2. Create & insert data for the following CSVs:
 * divisions
 * employees
 * managers
 * safehouses
 * actions

## Known Caveats/Open Issues

* `actions.csv` is not currently available in this repo; download it [here](https://paste.c-net.org/AnatomyJuliet) & add it to your `data/` subdirectory before running the copy command for `brlda_leaks.actions`

* everything is inserted as a varchar (with acception of a timestamp here & there. We'll need to do some work to parse/reformat some of the columns that are storing lists, for example `divisions.division`, `divisions.project`, and `divisions.known_safehouses`: 

```
select * from brlda_leaks.divisions limit 10;

EmployeeID |   EmployeeName   |               Division                |                                                          Project                                                           |  known_safehouses   
------------+------------------+---------------------------------------+----------------------------------------------------------------------------------------------------------------------------+---------------------
 1          | Kelly Rios       | [Division 1]                          | [Project deliver_visionary_web-readiness]                                                                                  | [232, 1, 73, 217]
 2          | Madison Barr     | [Division 6, Division 3]              | [Project repurpose_collaborative_methodologies]                                                                            | [192, 26, 118, 4]
 3          | Sue Anderson     | [Division 5, Division 1, Division 10] | [Project repurpose_collaborative_methodologies]                                                                            | [19, 8, 130, 50]
 4          | Laura Carlson    | [Division 9, Division 9, Division 2]  | [Project streamline_proactive_e-markets]                                                                                   | [15, 232]
 5          | Carrie Ali       | [Division 3, Division 6]              | [Project deliver_visionary_web-readiness]                                                                                  | [158, 118]
 6          | Taylor Patterson | [Division 8, Division 4, Division 3]  | [Project extend_robust_action-items, Project e-enable_holistic_models, Project extend_robust_action-items]                 | [138, 121, 32, 212]
 7          | Jessica Brown    | [Division 2]                          | [Project embrace_magnetic_systems, Project transform_24/365_functionalities, Project mesh_cutting-edge_experiences]        | [217, 32, 8, 190]
 8          | Sergio Huffman   | [Division 9]                          | [Project scale_back-end_interfaces, Project streamline_proactive_e-markets]                                                | [2, 48]
 9          | Robert Williams  | [Division 5, Division 8]              | [Project e-enable_holistic_models]                                                                                         | [23, 230]
 10         | Susan Hanson     | [Division 4, Division 8, Division 3]  | [Project deliver_visionary_web-readiness, Project deliver_visionary_web-readiness, Project streamline_proactive_e-markets] | [22, 218, 11]
(10 rows)
```
