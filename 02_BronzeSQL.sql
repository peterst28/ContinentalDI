-- Databricks notebook source
-- MAGIC %run ./Include

-- COMMAND ----------

-- MAGIC %python
-- MAGIC schema_name = f"sternp.{get_user_name()}"
-- MAGIC print(f'Creating schema "{schema_name}"')
-- MAGIC sql(f'create schema if not exists {schema_name}')
-- MAGIC sql(f'use {schema_name}')

-- COMMAND ----------

CREATE TABLE Airlines_Bronze AS
SELECT * FROM read_files(
  '/Volumes/sternp/tmp/volume/airlines',
  format => 'csv',
  header => true
)

-- COMMAND ----------

SELECT * FROM Airlines_Bronze

-- COMMAND ----------

describe detail Airlines_Bronze

-- COMMAND ----------

-- MAGIC %fs ls /tmp/peter.stern@databricks.com/airlines

-- COMMAND ----------


