-- Databricks notebook source
CREATE SCHEMA IF NOT EXISTS hive_metastore.sternp_tmp

-- COMMAND ----------

CREATE TABLE hive_metastore.sternp_tmp.airlines_pt0_csv
USING
  CSV
LOCATION
  '/databricks-datasets/airlines/part-00000'
OPTIONS
  (inferSchema = True,
  header = True)

-- COMMAND ----------

CREATE CATALOG IF NOT EXISTS sternp

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS sternp.tmp

-- COMMAND ----------

CREATE TABLE sternp.tmp.airlines AS
SELECT * FROM hive_metastore.sternp_tmp.airlines_pt0_csv

-- COMMAND ----------


