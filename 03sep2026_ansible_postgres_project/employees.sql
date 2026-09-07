-- 1. Create the schema if it doesn't already exist
CREATE SCHEMA IF NOT EXISTS pune_user;

-- 2. Create the employees table
CREATE TABLE pune_user.employees (
    employee_id   SERIAL PRIMARY KEY,
    first_name    VARCHAR(50) NOT NULL,
    last_name     VARCHAR(50) NOT NULL,
    email         VARCHAR(100) UNIQUE NOT NULL,
    department    VARCHAR(50) NOT NULL,
    designation   VARCHAR(50) NOT NULL,
    salary        NUMERIC(10, 2) CHECK (salary > 0),
    joining_date  DATE DEFAULT CURRENT_DATE,
    is_active     BOOLEAN DEFAULT TRUE
);

-- 3. Insert realistic sample data
INSERT INTO pune_user.employees 
    (first_name, last_name, email, department, designation, salary, joining_date)
VALUES
    ('Aarav', 'Sharma', 'aarav.sharma@company.com', 'IT', 'Senior Engineer', 95000.00, '2023-01-15'),
    ('Ananya', 'Joshi', 'ananya.joshi@company.com', 'IT', 'Tech Lead', 140000.00, '2021-06-01'),
    ('Rohan', 'Patil', 'rohan.patil@company.com', 'IT', 'Junior Developer', 55000.00, '2024-03-10'),
    ('Priya', 'Kulkarni', 'priya.kulkarni@company.com', 'HR', 'HR Manager', 85000.00, '2022-08-20'),
    ('Amit', 'Deshmukh', 'amit.deshmukh@company.com', 'HR', 'Recruiter', 48000.00, '2024-01-05'),
    ('Sneha', 'Nair', 'sneha.nair@company.com', 'Finance', 'Financial Analyst', 72000.00, '2023-11-12'),
    ('Vikram', 'Singh', 'vikram.singh@company.com', 'Finance', 'Finance Director', 165000.00, '2020-02-18');
