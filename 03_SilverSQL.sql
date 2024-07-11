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


