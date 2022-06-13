use Payroll_Service

create table EmployeeDetails(EmployeeID int identity(1,1) Primary Key,
							 FirstName varchar,
							 LastName varchar,
							 Gender varchar,
							 StartDate datetime,
							 Company varchar,
							 Departent varchar,
							 Address varchar,
							 BasicPay int,
							 Deductions int,
							 TaxablePay int,
							 IncomeTax int,
							 NetPay int);


alter table EmployeeDetails 
alter column FirstName varchar(50) 
alter table EmployeeDetails 
alter column LastName varchar(50)
alter table EmployeeDetails 
alter column Gender varchar(50)
alter table EmployeeDetails 
alter column Company varchar(50)
alter table EmployeeDetails 
alter column Departent varchar(50)
alter table EmployeeDetails 
alter column Address varchar(50)
							 

select * from EmployeeDetails;

insert into EmployeeDetails values ('Vardhan','Vardhan','Male',04/10/2022,'BridgeLabs','Production','Vijayawada',20000,1000,180,600,25000)
truncate table EmployeeDetails
insert into EmployeeDetails values ('Vishnu','Vardhan','Male',04/10/2022,'BridgeLabs','Production','Vijayawada',20000,1000,180,600,25000)
insert into EmployeeDetails values ('Shravanthi','Pabboji','FeMale',04/01/2022,'BridgeLabs','Developer','Alwal',25000,1200,210,7500,30000)

update EmployeeDetails set StartDate = '2022-10-04' where FirstName = 'Vishnu'
update EmployeeDetails set StartDate = '2022-01-04' where FirstName = 'Shravanthi'

