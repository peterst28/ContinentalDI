# Databricks notebook source
def get_user_name():
    user_name = dbutils.notebook.entry_point.getDbutils().notebook().getContext().userName().get().split('@')[0]
    # remove reserved chars
    return user_name.translate(str.maketrans('', '', '.'))

# COMMAND ----------


