-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/hbAsBI
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Departments (
    dept_no INT   NOT NULL,
    dept_name VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

SELECT * FROM Departments

CREATE TABLE Dept_Managers (
    dept_no INT   NOT NULL,
    emp_no INT   NOT NULL,
    CONSTRAINT pk_Dept_Managers PRIMARY KEY (
        emp_no
     )
);

SELECT * FROM Dept_Managers

CREATE TABLE Dept_Employees (
    emp_no INT   NOT NULL,
    dept_no INT   NOT NULL,
    CONSTRAINT pk_Dept_Employees PRIMARY KEY (
        emp_no
     )
);

SELECT * FROM Dept_managers

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title VARCHAR(50)   NOT NULL,
    birth_date datetime   NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_name VARCHAR(50)   NOT NULL,
    sex VARCHAR(50)   NOT NULL,
    hire_date datetime   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

SELECT * FROM Employees

CREATE TABLE Salaries (
    emp_no INT   NOT NULL,
    salary MONEY   NOT NULL
);

SELECT * FROM Salaries

CREATE TABLE Titles (
    title_id INT   NOT NULL,
    title" VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

SELECT * FROM Titles

ALTER TABLE "Dept_Managers" ADD CONSTRAINT "fk_Dept_Managers_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Managers" ADD CONSTRAINT "fk_Dept_Managers_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salaries" ("emp_no");

ALTER TABLE "Dept_Employees" ADD CONSTRAINT "fk_Dept_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_Employees" ADD CONSTRAINT "fk_Dept_Employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_title" FOREIGN KEY("title")
REFERENCES "Employees" ("emp_title");

