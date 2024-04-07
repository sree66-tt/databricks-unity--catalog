-- Databricks notebook source
drop table if exists formula1_dev.gold.drivers_wins;
create table if not exists formula1_dev.gold.drivers_wins
as
select d.name, count(1) number_of_wins
  from  formula1_dev.silver.drivers d
  join  formula1_dev.silver.results r
    on (d.driver_id = r.driver_id)
 where r.position = 1
group by d.name;

-- COMMAND ----------

select *from  formula1_dev.gold.drivers_wins
order by number_of_wins desc
