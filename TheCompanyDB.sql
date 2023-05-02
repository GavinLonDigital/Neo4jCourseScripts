use [TheCompanyDBTest]
go
drop table Employee;
go
drop table Department;
CREATE TABLE Employee (
    Id int,
    [Name] varchar(255) NOT NULL,
    Age int,
	ReportToId int null,
	DepartmentId int
);
go
CREATE TABLE Department (
    Id int,
    ShortName varchar(100) NOT NULL,
	LongName varchar(250)
);
go
INSERT INTO Employee (Id,[Name],Age,ReportToId,DepartmentId)
Values (1,'Dave Clark',60,null,3)
go
INSERT INTO Employee (Id,[Name],Age,ReportToId,DepartmentId)
Values (2,'Bob Jones',55,1,1)
go
INSERT INTO Employee (Id,[Name],Age,ReportToId,DepartmentId)
Values (3,'Josh Simmons',45,2,1)
go
INSERT INTO Employee (Id,[Name],Age,ReportToId,DepartmentId)
Values (4,'Julia Grant',40,3,1)
go
INSERT INTO Employee (Id,[Name],Age,ReportToId,DepartmentId)
Values (5,'Edward Simmons',32,3,1)
go
INSERT INTO Employee (Id,[Name],Age,ReportToId,DepartmentId)
Values (6,'Jenny Lane',40,1,2)
go
INSERT INTO Employee (Id,[Name],Age,ReportToId,DepartmentId)
Values (7,'James Lemon',39,6,2)
go
INSERT INTO Employee (Id,[Name],Age,ReportToId,DepartmentId)
Values (8,'Brad Jenkins',33,7,2)
go
INSERT INTO Employee (Id,[Name],Age,ReportToId,DepartmentId)
Values (9,'Sandra Jackson',30,7,2)
go
INSERT INTO Department (Id, ShortName, LongName)
Values (1,'HR','Human Resources')
go
INSERT INTO Department (Id, ShortName, LongName)
Values (2,'FN','Finance')
go
INSERT INTO Department (Id, ShortName, LongName)
Values (3,'EX','Executive')
