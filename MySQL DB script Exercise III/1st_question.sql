CREATE DATABASE task4;
USE task4;
CREATE TABLE countries(
country_id VARCHAR(60) NOT NULL PRIMARY KEY,
country_name VARCHAR(60) NOT NULL,
region_id INT NOT NULL
);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('AR','Argentina',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('AU','Australia',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('BE','Belgium',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('BR','Brazil',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CA','Canada',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CH','Switzerland',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('CN','China',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES ('DE','Germany',1);
SELECT * FROM countries;
CREATE TABLE locations(
location_id INT NOT NULL PRIMARY KEY,
street_address VARCHAR(100) NOT NULL,
postal_code VARCHAR(60) NOT NULL,
city VARCHAR(60) NOT NULL,
state_province VARCHAR(60) NOT NULL,
country_id VARCHAR(60) NOT NULL,
foreign key (country_id) references countries(country_id)
);
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1000,'1297 Via Cola di Rie',989,'Roma',' ','DE');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1100,'93091 Cakke della Te',10934,'Roma',' ','AR');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1200,'2017 Shinjuku-ku',1689,'Roma',' ','AU');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1300,'9450 Kamiya-cho',6823,'Roma',' ','BE');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1400,'2014 Jabberwocky Rd',26192,'Roma',' ','BR');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1500,'2011 Interiors Blvd',99236,'Roma',' ','CA');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1600,'2007 Zagora St',50090,'Roma',' ','CH');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1700,'2004 Charade Rd',98199,'Roma',' ','CN');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1800,'147 Spadina Ave','MSV 2L7','Roma',' ','DE');
UPDATE locations SET state_province='Tokyo Prefectu' WHERE location_id=1200;
UPDATE locations SET state_province='Texas' WHERE location_id=1400;
UPDATE locations SET state_province='California' WHERE location_id=1500;
UPDATE locations SET state_province='New Jersey' WHERE location_id=1600;
UPDATE locations SET state_province='Washington' WHERE location_id=1700;
UPDATE locations SET state_province='Ontario' WHERE location_id=1800;
UPDATE locations SET city='london' WHERE location_id=1800;
UPDATE locations SET city='london' WHERE location_id=1200;
UPDATE locations SET city='london' WHERE location_id=1500;
SELECT * FROM locations;
SELECT location_id,street_address,city,state_province,country_name FROM locations NATURAL JOIN countries;