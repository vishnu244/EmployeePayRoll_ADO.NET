create Database PayRollservice_ADO
use PayRollservice_ADO

create table EmployeeDetails(EmployeeID int identity(1,1) Primary Key,
							 FirstName varchar(50),
							 LastName varchar(50),
							 Gender varchar(50),
							 StartDate datetime,
							 Company varchar(50),
							 Departent varchar(50),
							 Address varchar(50),
							 BasicPay int,
							 Deductions int,
							 TaxablePay int,
							 IncomeTax int,
							 NetPay int);
							 
select * from EmployeeDetails;

insert into EmployeeDetails values ('Vishnu','Vardhan','Male','2022-10-04','BridgeLabs','Production','Vijayawada',20000,1000,180,600,25000)
insert into EmployeeDetails values ('Shravanthi','Pabboji','FeMale','2022-01-04','BridgeLabs','Developer','Alwal',25000,1200,210,7500,30000)

go
create procedure [SpAddEmployeeDetails]
 (
 @EmployeeID varchar(50),
 @FirstName varchar(50),
 @LastName varchar(50),
 @Gender varchar(50),
 @StartDate datetime,
 @Company varchar(50),
 @Departent varchar(50),
 @Address varchar(50),
 @BasicPay int,
 @Deductions int,
 @TaxablePay int,
 @IncomeTax int,
 @NetPay int
 )
 as
 begin
  Insert into EmployeeDetails(EmployeeID,FirstName,LastName,Gender,StartDate,Company,Departent,Address,BasicPay,Deductions,TaxablePay,IncomeTax,NetPay) 
							  values(@EmployeeID,
									 @FirstName,
									 @LastName,
									 @Gender,
									 @StartDate ,
									 @Company,
									 @Departent,
									 @Address,
									 @BasicPay,
									 @Deductions,
									 @TaxablePay,
									 @IncomeTax,
									 @NetPay)

EXEC [dbo].[SpAddEmployeeDetails]
									 @EmployeeID = 1,
									 @FirstName = 'Vishnu',
									 @LastName = 'Vardhan',
									 @Gender= 'Male',
									 @StartDate = '11-4-2022',
									 @Company = 'BridgeLabs',
									 @Departent = 'HR',
									 @Address = 'vijayawada',
									 @BasicPay = 20000,
									 @Deductions = 1000,
									 @TaxablePay = 180,
									 @IncomeTax = 300,
									 @NetPay = 25000
		
		select * 
 End