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