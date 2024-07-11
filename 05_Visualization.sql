-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Lateness findings
-- MAGIC
-- MAGIC This is our finding on how airlines fair regarding lateness

-- COMMAND ----------

-- MAGIC %run ./Include

-- COMMAND ----------

-- MAGIC %python
-- MAGIC sql(f'use sternp.{get_user_name()}')

-- COMMAND ----------

SELECT * FROM Airlines_gold

-- COMMAND ----------


