-- Databricks notebook source
drop table if exists formula1_dev.bronze.drivers;

create table if not exists formula1_dev.bronze.drivers
(
driverId INT,
driverRef STRING,
number INT,
code STRING,
name STRUCT<forename: STRING, surname: STRING>,
dob DATE,
nationality STRING,
url STRING)
USING json
OPTIONS (path "abfss://bronze@databrickscoursedlsree.dfs.core.windows.net/drivers.json")


-- COMMAND ----------

drop table if exists formula1_dev.bronze.results;

create table if not exists formula1_dev.bronze.results
(
resultId INT,
raceId INT,
driverId INT,
constructorId INT,
number INT,grid INT,
position INT,
positionText STRING,
positionOrder INT,
points INT,
laps INT,
time STRING,
milliseconds INT,
fastestLap INT,
rank INT,
fastestLapTime STRING,
fastestLapSpeed FLOAT,
statusId STRING)
USING json
OPTIONS (path "abfss://bronze@databrickscoursedlsree.dfs.core.windows.net/results.json")

