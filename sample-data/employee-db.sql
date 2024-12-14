-- Create the employee table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    salary NUMERIC(8, 2) NOT NULL,
    manager_id INTEGER,
    department_id INTEGER
);

-- Insert sample data into the employee table
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', '2020-01-15', 'IT_PROG', 60000, NULL, 10),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2019-03-22', 'HR_REP', 55000, 1, 20),
('Michael', 'Johnson', 'michael.johnson@example.com', '555-8765', '2018-07-11', 'FIN_ANALYST', 70000, 2, 30),
('Emily', 'Davis', 'emily.davis@example.com', '555-4321', '2021-05-19', 'SALES_REP', 50000, 3, 40),
('David', 'Wilson', 'david.wilson@example.com', '555-6789', '2017-09-30', 'IT_PROG', 65000, 1, 10);

-- Create the departments table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    manager_id INTEGER
);

-- Insert sample data into the departments table
INSERT INTO departments (department_name, manager_id) VALUES
('IT', 1),
('HR', 2),
('Finance', 3),
('Sales', 4);

-- Create the jobs table
CREATE TABLE jobs (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(50) NOT NULL,
    min_salary NUMERIC(8, 2),
    max_salary NUMERIC(8, 2)
);

-- Insert sample data into the jobs table
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
('IT_PROG', 'Programmer', 40000, 80000),
('HR_REP', 'HR Representative', 35000, 70000),
('FIN_ANALYST', 'Financial Analyst', 50000, 90000),
('SALES_REP', 'Sales Representative', 30000, 60000);

-- Create the managers table
CREATE TABLE managers (
    manager_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20)
);

-- Insert sample data into the managers table
INSERT INTO managers (first_name, last_name, email, phone_number) VALUES
('Alice', 'Brown', 'alice.brown@example.com', '555-1111'),
('Bob', 'Taylor', 'bob.taylor@example.com', '555-2222'),
('Charlie', 'Anderson', 'charlie.anderson@example.com', '555-3333'),
('Diana', 'Moore', 'diana.moore@example.com', '555-4444');
