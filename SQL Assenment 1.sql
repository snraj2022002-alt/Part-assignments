CREATE DATABASE Employee ;
USE Employee ;

CREATE TABLE Department(
Department_id int primary key unique,
Department_name varchar(100) not null);

INSERT INTO Department (Department_id,Department_name)
VALUES
(601,"Operation"),
(602,"Househeep"),
(603,"technion"),
(604,"security"),
(605,"store"),
(606,"admin");

Select * From Department;

CREATE TABLE Location(
Location_id int primary key unique,
Location_name varchar(100) not null);

INSERT INTO Location (Location_id,Location_name)
VALUES(641001,"Town hall"),
(641002,"R.S.puram"),
(641004,"Peelamedu"),
(641006,"Ganapathy"),
(641011,"Saibaba colony"),
(641012,"Gathipuram");

Select * From Location;

CREATE TABLE Employees(
Employee_id int	primary key Auto_Increment,
Employee_name varchar(50) not null,
Gender Enum("Male","Female") not null,
Age char(2)	not null check(Age > 18),
Hire_date date not null,
Designation int not null,
Department_id int not null unique, 
Location_id int not null unique,
Salary Decimal(7,2) not null check(salary>0),
Foreign key (Department_id) References Departmant (Department_id),
Foreign key (Location_id) References Location (Location_id));

INSERT INTO Employees(Employee_name,Gender,Age,Hire_date,Designation,Department_id,Location_id,Salary)
Values
("Arun","Male",38,12-09-2007,"DM",601,641001,45300.50),
("Ketha","Female",46,30-12-2024,"Househeep",602,641002,25720.00),
("Chanthirasekar","Male",42,01-11-2006,"Technican Engineer",603,641004,48002.00),
("Santhanu","Male",35,05-05-2019,"Security",604,641006,37842.00),
("Manikandan","Male",32,12-12-2009,"store executive",605,641011,45023.00),
("Mithra","Female",48,20-02-2006,"Charman",606,641012,79489.00);

Select * From Employees;

ALTER TABLE Employees add column Email_id varchar(50) ;
ALTER TABLE Employees modify column Designation varchar(50);
ALTER TABLE Employees drop column Age;
ALTER TABLE Employees rename column Hire_date TO Date_of_joining;

RENAME TABLE Department to Department_info;
RENAME TABLE Location to Locations;

Truncate table Employees;

Drop table Employees;
