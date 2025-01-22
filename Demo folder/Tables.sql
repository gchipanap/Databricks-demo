-- Databricks notebook source
CREATE TABLE managed_default 
  (width INT, length INT, height INT);

INSERT INTO managed_default 
VALUES 
  (3 INT, 2 INT, 1 INT)

-- COMMAND ----------

describe extended managed_default

-- COMMAND ----------

CREATE TABLE external_default 
  (width INT, length INT, height INT)
  LOCATION 'dbfs:/mnt/demo/external_default';

INSERT INTO external_default 
VALUES 
  (3 INT, 2 INT, 1 INT)

-- COMMAND ----------

describe extended external_default

-- COMMAND ----------

drop table managed_default

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/managed_default'

-- COMMAND ----------

drop table external_default

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/mnt/demo/external_default'

-- COMMAND ----------

create schema new_default

-- COMMAND ----------

describe database extended new_default

-- COMMAND ----------

USE new_default;

CREATE TABLE external_new_default 
  (width INT, length INT, height INT)
  LOCATION 'dbfs:/mnt/demo/external_new_default';

INSERT INTO external_new_default 
VALUES 
  (3 INT, 2 INT, 1 INT);



-- COMMAND ----------

describe extended managed_new_default

-- COMMAND ----------

drop table external_new_default;
--drop table managed_new_default;

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/managed_new_default'

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/mnt/demo/external_new_default'

-- COMMAND ----------

create schema custom
location 'dbfs:/Shared/schemas/custom.db';

-- COMMAND ----------

describe database extended custom

-- COMMAND ----------

USE custom;

CREATE TABLE external_custom
  (width INT, length INT, height INT)
  LOCATION 'dbfs:/mnt/demo/external_custom';

INSERT INTO external_custom
VALUES 
  (3 INT, 2 INT, 1 INT);


CREATE TABLE managed_custom
  (width INT, length INT, height INT);

INSERT INTO managed_custom 
VALUES 
  (3 INT, 2 INT, 1 INT);

-- COMMAND ----------

describe extended managed_custom

-- COMMAND ----------

describe extended  external_custom

-- COMMAND ----------

drop table managed_custom;
drop table external_custom;

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/Shared/schemas/custom.db/managed_custom'

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/mnt/demo/external_custom'
