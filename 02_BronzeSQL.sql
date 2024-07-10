-- Databricks notebook source
-- MAGIC %run ./Include

-- COMMAND ----------

-- MAGIC %python
-- MAGIC sql(f'use hive_metastore.{get_user_name()}')

-- COMMAND ----------

CREATE TABLE Airlines_Bronze AS
SELECT * FROM airlines_pt0_csv

-- COMMAND ----------

SELECT * FROM Airlines_Bronze

-- COMMAND ----------

describe detail airlines_pt0_csv

-- COMMAND ----------

describe detail Airlines_Bronze

-- COMMAND ----------

-- MAGIC %fs ls /user/hive/warehouse/peterstern.db/airlines_bronze

-- COMMAND ----------


