CREATE DATABASE EmployeeManagementDb;
GO

USE EmployeeManagementDb;
GO

CREATE TABLE Departments (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(150) NOT NULL,
    Salary DECIMAL(18,2) NOT NULL,
    DepartmentId INT NOT NULL,
    CONSTRAINT FK_Employees_Departments FOREIGN KEY (DepartmentId) 
        REFERENCES Departments(Id) ON DELETE CASCADE
);

-- Insert sample departments
INSERT INTO Departments (Name) VALUES ('Human Resources'), ('Engineering'), ('Marketing'), ('Finance');