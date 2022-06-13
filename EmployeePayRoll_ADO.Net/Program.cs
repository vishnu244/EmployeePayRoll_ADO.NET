// See https://aka.ms/new-console-template for more information
using EmployeePayRoll_ADO.Net;

Console.WriteLine("Welcome To Employee_Payroll ADO.NET !");

EmployeeRepo employeeRepo = new EmployeeRepo();
employeeRepo.GetEmployeedetails();
string query = @"SELECT EmployeeID,FirstName,LastName,Gender,StartDate,Company,Departent,Address,BasicPay,Deductions,TaxablePay,IncomeTax,NetPay FROM EmployeeDetails";

/*
Employee_details employeeDetails = new Employee_details();
employeeDetails.FirstName = "Radha";
employeeDetails.LastName = "Krishna";
employeeDetails.Gender = "Male";
//employeeDetails.StartDate = Convert.ToInt32(11 - 04 - 2022);

employeeDetails.StartDate = DateTime.Now;
employeeDetails.Company = "Amazon";
employeeDetails.Departent = "Marketing";
employeeDetails.Address = "Mumbai";
employeeDetails.BasicPay = 25000;
employeeDetails.Deductions = 1000;
employeeDetails.TaxablePay = 600;
employeeDetails.IncomeTax = 1200;
employeeDetails.NetPay = 35000;

employeeRepo.AddEmployee(employeeDetails);*/


int salary = employeeRepo.updateSalary();
Console.WriteLine(salary);
