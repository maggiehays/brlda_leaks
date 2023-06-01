-- run the following in a psql session

create schema if not exists brlda_leaks;

-- SAFEHOUSES

drop table if exists brlda_leaks.safehouses cascade;

create table brlda_leaks.safehouses (
"ID" bigint
,"City" varchar
,"Address" varchar
,"Latitude" varchar
, "Longitude" varchar
)
;

\copy brlda_leaks.safehouses from 'data/safehouses.csv' delimiter ',' csv header;

-- MANAGERS

drop table if exists brlda_leaks.managers cascade;

create table brlda_leaks.managers (
"ManagerName" varchar
,"Employee_1" varchar
,"Employee_2" varchar
,"Employee_3" varchar
,"Employee_4" varchar
,"Employee_5" varchar
,"Employee_6" varchar
,"Employee_7" varchar
,"Employee_8" varchar
,"Employee_9" varchar
,"Employee_10" varchar
,"Employee_11" varchar
,"Employee_12" varchar
,"Employee_13" varchar
,"Employee_14" varchar
,"Employee_15" varchar
,"Employee_16" varchar
,"Employee_17" varchar
,"Employee_18" varchar
,"Employee_19" varchar
,"Employee_20" varchar
,"Employee_21" varchar
,"Employee_22" varchar
,"Employee_23" varchar
,"Employee_24" varchar
,"Employee_25" varchar
,"Employee_26" varchar
,"Employee_27" varchar
,"Employee_28" varchar
,"Employee_29" varchar
)
;

\copy brlda_leaks.managers from 'data/managers.csv' delimiter ',' csv header;

-- EMPLOYEES

drop table if exists brlda_leaks.employees cascade;

create table brlda_leaks.employees (
"EmployeeID" varchar
,"EmployeeName" varchar
,"JobTitle" varchar
,"Email" varchar
,"Phone" varchar
,"Manager" varchar
)
;

\copy brlda_leaks.employees from 'data/employees.csv' delimiter ',' csv header;

-- DIVISIONS

drop table if exists brlda_leaks.divisions cascade;

create table brlda_leaks.divisions (
"EmployeeID" varchar
,"EmployeeName" varchar
,"Division" varchar
,"Project" varchar
,"known_safehouses" varchar
)
;

\copy brlda_leaks.divisions from 'data/divisions.csv' delimiter ',' csv header;

-- ACTIONS

drop table if exists brlda_leaks.actions cascade;

create table brlda_leaks.actions (
"EmployeeID" varchar
,"ActionType" varchar
,"ActionDate" timestamp
,"ActionDescription" varchar
,"ActionLocation" varchar
,"ActionStatus" varchar
,"ActionSeverity" varchar
,"AssociatedProject" varchar
,"AssociatedDivision" varchar
)
;

\copy brlda_leaks.actions from 'data/actions.csv' delimiter ',' csv header;