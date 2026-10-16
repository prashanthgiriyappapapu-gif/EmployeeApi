using System.ComponentModel.DataAnnotations;
namespace EmployeeApi.Models
{
    public class Employee
    {
        public int Id { get; set; }
        [Required]
        public string Name { get; set; } = string.Empty;
        [Required, EmailAddress]
        public string Email { get; set; } = string.Empty;
        [Required, Range(0.01, double.MaxValue)]
        public decimal Salary { get; set; }
        [Required]
        public int DepartmentId { get; set; }
        public Department? Department { get; set; }
    }
}
