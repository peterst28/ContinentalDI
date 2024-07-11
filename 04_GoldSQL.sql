-- Databricks notebook source
-- MAGIC %run ./Include

-- COMMAND ----------

-- MAGIC %python
-- MAGIC sql(f'use sternp.{get_user_name()}')

-- COMMAND ----------

SELECT * from Airlines_Silver

-- COMMAND ----------

CREATE TABLE Airlines_Gold AS
SELECT UniqueCarrier, round(count_if(WasLate) / count(*) * 100) as LatePercentage from Airlines_Silver Group By UniqueCarrier

-- COMMAND ----------

SELECT * FROM Airlines_Gold

-- COMMAND ----------


