-- Databricks notebook source
CREATE CATALOG IF NOT EXISTS sternp

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS sternp.tmp

-- COMMAND ----------

CREATE VOLUME IF NOT EXISTS sternp.tmp.volume

-- COMMAND ----------

-- MAGIC %fs cp /databricks-datasets/airlines/part-00000 /Volumes/sternp/tmp/volume/airlines/part-00000

-- COMMAND ----------

CREATE OR REPLACE TABLE sternp.tmp.airlines AS
SELECT * FROM csv.`/Volumes/sternp/tmp/volume/airlines`

-- COMMAND ----------

-- MAGIC %python
-- MAGIC spark.table('sternp.tmp.airlines').write.mode('overwrite').save('/tmp/peter.stern@databricks.com/airlines')

-- COMMAND ----------


