using System.Text.Json.Serialization;
namespace EmployeeApi.Models
{
    public class Department
    {
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty;
        [JsonIgnore]
        public ICollection<Employee>? Employees { get; set; }
    }
}