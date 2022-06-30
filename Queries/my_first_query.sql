select *
from EMPLOYEES;

select *
from REGIONS;

select REGION_ID, count(REGION_ID)
from COUNTRIES
group by REGION_ID;


