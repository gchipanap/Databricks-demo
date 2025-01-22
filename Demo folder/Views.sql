-- Databricks notebook source
DELETE FROM smarthphones

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS smarthphones
(id INT, name STRING, brand STRING, year INT);



-- COMMAND ----------

INSERT INTO smarthphones VALUES 
(1, 'Iphone 14', 'Apple', 2022),
(2, 'Iphone 13', 'Apple', 2021),
(3, 'Iphone 6', 'Apple', 2014),
(4, 'Ipad air', 'Apple', 2013),
(5, 'Galaxy s22', 'Samsung', 2022),
(6, 'Galaxy z fold', 'Samsung', 2022),
(7, 'Galaxy S9', 'Samsung', 2016),
(8, '12 pro', 'Xiaomi', 2022),
(9, 'Redmi 11T Pro', 'Xiaomi', 2022),
(10, 'Redmi Note 11', 'Xiaomi', 2021)

-- COMMAND ----------

show tables

-- COMMAND ----------

drop view view_apple_phones

-- COMMAND ----------

--SELECT * FROM smarthphones where brand = 'Apple';
SELECT COUNT (*) FROM smarthphones;

-- COMMAND ----------

create view view_apple_phones 
as select * from smarthphones where brand = 'Apple';

-- COMMAND ----------

select * from view_apple_phones;

-- COMMAND ----------

select count (*) from view_apple_phones

-- COMMAND ----------

show tables

-- COMMAND ----------

create temporary view temp_view_phones_brands
as select distinct brand from smarthphones;

select * from temp_view_phones_brands;

-- COMMAND ----------

show tables

-- COMMAND ----------



-- COMMAND ----------

create global temporary view global_latest_phones
as select * from smarthphones where year > 2022 order by year desc;

-- COMMAND ----------

select * from global_temp.global_latest_phones;

-- COMMAND ----------

show tables

-- COMMAND ----------

show tables in global_temp

-- COMMAND ----------


