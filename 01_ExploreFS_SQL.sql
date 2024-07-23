-- Databricks notebook source
-- MAGIC %fs ls /Volumes/sternp/tmp/volume/airlines

-- COMMAND ----------

-- MAGIC %fs head /Volumes/sternp/tmp/volume/airlines/part-00000

-- COMMAND ----------

SELECT * FROM read_files(
  '/Volumes/sternp/tmp/volume/airlines',
  format => 'csv',
  header => true
)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df = spark.read.format("csv").load("/Volumes/sternp/tmp/volume/airlines")

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df.display()

-- COMMAND ----------


