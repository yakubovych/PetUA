# PetUA

Web application for helping animals find their families.

## Used frameworks and technologies:
- ASP.NET WEP Api;
- ASP.NET Identity;
- Entity Framework Core;
- Resharper;
- Swagger;
- NUnit testing;
- Serilog;
- Angular 9;

## How it works
Users role in the system: SuperAdmin, SchoolAdmin, Teacher, Student <br />
SuperAdmin creates and edit Schools and Classrooms. Also he can register new SuperAdmin, SchoolAdmin, Teacher, Student. <br />
SchoolAdmin creates and edit Classrooms. Also he can register new SchoolAdmin, Teacher, Student. <br />
Teacher starts new lesson for Students in selected Classroom and select Tasks for each Student. <br />
Student receives Tasks from Teacher and performs it.

## How start

1. Clone this repository
`git clone https://github.com/yakubovych/PetUA.git`
2. Restore packages in NuGet 
3. Build project
4. Update-Database
5. Run project
