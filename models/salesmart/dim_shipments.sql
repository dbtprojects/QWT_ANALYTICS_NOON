{{config(materialized = 'view', schema = 'salesmart_dev')}}

select 

orderid,
lineno,
companyname,
shipmentdate,
currentstatus

from
{{ref('trf_shipments')}}