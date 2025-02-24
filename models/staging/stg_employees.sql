{{config(materialized = 'table')}}

select 
empid,
lastname,
firstname,
title,
hiredate,
office,
IFF(extension = '-', 'NA', extension) as extension,
reportsto,
yearsalary
from
{{source("raw_qwt", 'raw_employees')}}