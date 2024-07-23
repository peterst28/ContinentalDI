-- Databricks notebook source
-- MAGIC %run ./Include

-- COMMAND ----------

-- MAGIC %python
-- MAGIC sql(f'use sternp.{get_user_name()}')

-- COMMAND ----------

SELECT * FROM Airlines_Bronze

-- COMMAND ----------

CREATE TABLE Airlines_Silver
AS
SELECT 
*,
ArrDelay > 0 OR DepDelay > 0 AS WasLate 
FROM 
Airlines_Bronze

-- COMMAND ----------

SELECT ArrDelay, DepDelay, WasLate FROM Airlines_Silver

-- COMMAND ----------

-- MAGIC %python
-- MAGIC spark.table('Airlines_Silver').display()

-- COMMAND ----------

-- MAGIC %python
-- MAGIC from pyspark.sql.functions import *
-- MAGIC
-- MAGIC spark.table('Airlines_Silver').withColumn('WasLate', col('ArrDelay') > 0).display()

-- COMMAND ----------


