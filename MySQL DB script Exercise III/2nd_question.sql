CREATE DATABASE task5;
USE task5;
CREATE TABLE departments(
department_id INT NOT NULL PRIMARY KEY,
department_name VARCHAR(60) NOT NULL,
manager_id INT NOT NULL,
location_id INT NOT NULL
);
INSERT INTO departments (department_id,department_name,manager_id,location_id) values (10,'Administrations',200,1700);
INSERT INTO departments (department_id,department_name,manager_id,location_id) values (20,'Marketing',201,1800);
INSERT INTO departments (department_id,department_name,manager_id,location_id) values (30,'Purchasing',114,1700);
INSERT INTO departments (department_id,department_name,manager_id,location_id) values (40,'Human Resources',203,2400);
INSERT INTO departments (department_id,department_name,manager_id,location_id) values (50,'Shipping',121,1500);
INSERT INTO departments (department_id,department_name,manager_id,location_id) values (60,'IT',103,1400);
INSERT INTO departments (department_id,department_name,manager_id,location_id) values (70,'Public Relations',204,2700);
INSERT INTO departments (department_id,department_name,manager_id,location_id) values (80,'Sales',145,2500);
SELECT * FROM departments;
CREATE TABLE employees(
employee_id INT NOT NULL PRIMARY KEY,
first_name VARCHAR(60) NOT NULL,
last_name VARCHAR(60) NOT NULL,
email VARCHAR(80) NOT NULL,
phone_number INT NOT NULL,
hire_date DATE NOT NULL,
job_id VARCHAR(40) NOT NULL,
salary INT NOT NULL,
manager_id INT NOT NULL,
department_id INT NOT NULL,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
ALTER TABLE employees MODIFY phone_number DOUBLE;
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (100,'Steven','King','SKING',5151234567,'1987-06-17','AD_PRES',24000.00,100,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (101,'Martin','Luther','MARLU',525414547,'1957-05-10','AD_PSRES',23400.00,100,20);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (102,'Mario','Kinfe','MARFE',5101543467,'1987-06-12','ADF_PRES',25300.00,100,30);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (103,'Ben','Ten','BEN10',4555234523,'1989-06-16','AD_PRFES',26300.00,100,40);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (104,'Knight','Worrieor','KWORE',51345334568,'1967-06-17','AADD_PRES',64300.00,100,40);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (105,'Samu','Ratt','SAMT',9893004507,'1987-01-15','AFD_PRES',52300.00,100,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (106,'Mickel','Jacksen','MICSEN',5001039567,'1997-08-19','ASD_PRES',43500.00,100,20);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (107,'Panchavan','Pari','PARI',5051204846,'1980-06-07','ADD_PRES',23400.00,100,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (108,'Radha','Krishnan','RADAN',2450004945,'1988-07-10','SAD_PRES',24540.00,100,60);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (109,'Abdul','Kalam','ABJ',9517539512,'1989-02-14','AGD_PRES',24450.00,100,70);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (110,'Abduk','Kather','ABU',8952783215,'1980-09-12','ADF_PRES',24540.00,100,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (111,'Isaac','Newton','ISTON',2215891245,'1907-03-19','ADF_PRES',23400.00,100,40);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (112,'Neil','Amstrong','NESTN',0151204700,'1907-07-27','AAD_PRES',24540.00,100,30);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (113,'Jamse','Bond','JBOND',5100230477,'1980-01-18','ADE_PRES',24006.00,100,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (114,'Caption','Marvel','CPML',511964967,'1988-12-18','ADW_PRES',24060.00,100,40);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (115,'Thony','Stark','TSTARK',510190757,'1997-11-28','EAD_PRES',24500.00,100,60);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (116,'Caption','America','CPAA',5651734017,'1996-06-02','ADD_PRES',23000.00,100,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (117,'Spider','Man','SPIDY',5021060067,'1981-10-14','ARE_PRES',24020.00,100,30);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (118,'Black','Widow','NATASHA',3151094500,'1977-04-25','RD_PRES',22000.00,100,20);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (119,'Black','Panther','CHALA',955104007,'1997-01-07','AV_PRES',4000.00,100,70);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (120,'Ant','Man','MARVEL',0055844257,'1980-06-17','AA_PRES',27000.00,100,10);
UPDATE employees SET last_name='Bull' WHERE employee_id=116;
UPDATE employees SET salary=25500 WHERE employee_id=116;
SELECT * FROM employees;
SELECT first_name, last_name, department_id, department_name FROM employees JOIN departments USING (department_id);