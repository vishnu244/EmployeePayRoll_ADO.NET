using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeePayRoll_ADO.Net
{
    public class OperationWIthThreads
    {

        public List<Employee_details2> EmployeeDetails = new List<Employee_details2>();
        public void addEmployeeToPayRoll(List<Employee_details2> employeeDetails)
        {
            employeeDetails.ForEach(employeeData =>
            {
                Console.WriteLine("Employee being added:" + employeeData.FirstName);
                this.addEmployeePayRoll(employeeData);
                Console.WriteLine("Employee Added :" + employeeData.FirstName);
            });
        }


        public void addEmployeePayRoll(Employee_details2 emp)
        {
            EmployeeDetails.Add(emp);
        }

        public void addEmployeeToPayRollWithThread(List<Employee_details2> employeeDetails)
        {
            employeeDetails.ForEach((employeeData) =>
            {
                Task thread = new Task(() =>
                {
                    DateTime StartdateTime = DateTime.Now;

                    Console.WriteLine("Employee being added:" + employeeData.FirstName);
                    this.addEmployeePayRoll(employeeData);
                    Console.WriteLine("Employee Added :" + employeeData.FirstName);

                    DateTime StopDataTime = DateTime.Now;
                    Console.WriteLine("Duration with Thread: " + (StopDataTime - StartdateTime));

                });
            });
        }       

    }
}
