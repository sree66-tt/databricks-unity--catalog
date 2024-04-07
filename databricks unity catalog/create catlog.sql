-- Databricks notebook source
create catalog if not exists formula1_dev

-- COMMAND ----------

use catalog formula1_dev;

-- COMMAND ----------

create schema if not exists bronze
managed location "abfss://bronze@databrickscoursedlsree.dfs.core.windows.net/"


-- COMMAND ----------

create schema if not exists silver
managed location "abfss://bronze@databrickscoursedlsree.dfs.core.windows.net/"


-- COMMAND ----------

create schema if not exists gold
managed location "abfss://bronze@databrickscoursedlsree.dfs.core.windows.net/"


-- COMMAND ----------

show schemas
