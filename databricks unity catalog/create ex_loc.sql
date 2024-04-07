-- Databricks notebook source
create external location if not exists databrickscoursedlsree_bronze
url "abfss://bronze@databrickscoursedlsree.dfs.core.windows.net/"
with (storage  credential `databrickscourse-storage-credential`);

-- COMMAND ----------

create external location if not exists databrickscoursedlsree_silver
url "abfss://silver@databrickscoursedlsree.dfs.core.windows.net/"
with (storage  credential `databrickscourse-storage-credential`);

-- COMMAND ----------

create external location if not exists databrickscoursedlsree_gold
url "abfss://gold@databrickscoursedlsree.dfs.core.windows.net/"
with (storage  credential `databrickscourse-storage-credential`);
