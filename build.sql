create or replace table actions as from 'data/actions.csv.gz';

create or replace table divisions as from 'data/divisions.csv';

create or replace table employees as from 'data/employees.csv';

create or replace table managers as from read_csv_auto('data/managers.csv', header=1);

create or replace table safehouses as from 'data/safehouses.csv';