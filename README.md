# Pre-Requisites
- C#
- SQL
- Bootstrap
- Microsoft Azure

# Environment Setup 
To install dependencies, download the folder zip and then open Microsoft Visual Studio 2022. 

# Databse Configure 
There are different two environments to run the web applications with data server. 

1) ASP.NET Core Web Application With SQL Server Database Connection and CRUD Operations
   - Use Microsoft SQL Server Management Studio to run build the database
   - Use Microsoft Visual Studio 2022
   - Find the Web.config script, find the line and check the codes same structure:
   > `<add name="P2ConnectionString" connectionString="Data Source=(localdb)\MSSQLLocalDB; Initial Catalog = PurpleProject_Portfolio; Integrated Security = SSPI;" providerName="System.Data.SqlClient"/>`

2) To deploy Azure Web Server and Azure Database
   - Encourage to go Azure Database Server in site where they give you the codes.
   - Replace into
   > `<add name="..." connectionString="Data Source=(localdb)\...;" providerName="..."/>`
   - And if you want to Publish, you can deploy this web application to Azure with Azure SQL Database.

# About 
Purple Project: Food Elderly Services is a web-based application developed as part of my polytechnic module, Portfolio 2. The project aimed to address critical issues faced by the elderly in Singapore regarding proper nutrition and timely food delivery. The initiative was part of a graded assessment, including a three-day hackathon, where our team tackled the challenge of improving the efficiency and effectiveness of food delivery services for elderly individuals.

Our primary goal was to create a system that ensures elderly citizens receive the right meals at the right time while improving the coordination and management of volunteer activities. The application targets four main user groups: Coordinators, Volunteers, Vendors, and Elderly Recipients. It offers features such as meal management, volunteer scheduling, feedback reporting, and more.
