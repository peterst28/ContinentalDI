-- Databricks notebook source
-- MAGIC %fs ls /databricks-datasets/airlines/part-00000

-- COMMAND ----------

-- MAGIC %fs head /databricks-datasets/airlines/part-00000

-- COMMAND ----------

-- MAGIC %run ./Include

-- COMMAND ----------

-- MAGIC %python 
-- MAGIC
-- MAGIC print( get_user_name() )

-- COMMAND ----------

-- MAGIC %python
-- MAGIC spark.conf.set("myconf.username", get_user_name())

-- COMMAND ----------

-- MAGIC %python
-- MAGIC print(f'Creating schema "hive_metastore.{get_user_name()}"')

-- COMMAND ----------

create schema if not exists hive_metastore.${myconf.username}

-- COMMAND ----------

CREATE TABLE hive_metastore.${myconf.username}.airlines_pt0_csv
USING
  CSV
LOCATION
  '/databricks-datasets/airlines/part-00000'
OPTIONS
  (inferSchema = True,
  header = True)

-- COMMAND ----------

SELECT * FROM ${myconf.username}.airlines_pt0_csv

-- COMMAND ----------


