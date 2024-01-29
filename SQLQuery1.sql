CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    name NVARCHAR(50),
    salary MONEY
);

CREATE TABLE Managers (
    ManagerID INT PRIMARY KEY,
    bonus MONEY,
    EmpID INT FOREIGN KEY REFERENCES Employees(EmpID)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    name NVARCHAR(200)
);

CREATE TABLE Works (
    EmpID INT FOREIGN KEY REFERENCES Employees(EmpID),
    ProjectID INT FOREIGN KEY REFERENCES Projects(ProjectID),
    hours INT,
    
PRIMARY KEY (EmpID, ProjectID)
);

CREATE TABLE Manages (
   ManagerID INT FOREIGN KEY REFERENCES Managers(ManagerID),
   ProjectID INT FOREIGN KEY REFERENCES Projects(ProjectId),

PRIMARY KEY (ManagerId, ProjectId)
);
