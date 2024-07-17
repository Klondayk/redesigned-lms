Library Management System - Java Spring Boot Application
This project is a Java Spring Boot application for managing a library system, with data stored in a MySQL database. It provides functionalities such as adding, removing, and updating books, managing users, and handling book borrowing and returns.

Prerequisites
Before running the application, ensure you have the following installed:

Java 11 or higher
Maven
MySQL
Getting Started
To get a local copy up and running, follow these steps:

Clone the repository:

bash
Копировать код
git clone https://github.com/your_username/library-management-system.git
cd library-management-system
Set up MySQL Database:

Create a MySQL database and configure the connection settings in src/main/resources/application.properties.
properties
Копировать код
spring.datasource.url=jdbc:mysql://localhost:3306/librarydb
spring.datasource.username=root
spring.datasource.password=password
Build and Run the Application:

Use Maven to build and run the Spring Boot application.

bash
Копировать код
mvn spring-boot:run
Access the Application:

Once the application is running, you can access it at http://localhost:8080.

Functionality
Book Management:

Add a new book with details such as title, author, ISBN, and quantity.
Update book information.
Remove books from the library.
User Management:

Add new users (members/staff).
Update user details.
Remove users from the system.
Borrowing and Returning Books:

Borrow books by users.
Return books and update their availability.
API Documentation
The application exposes REST APIs for interacting with the library system. After starting the application, you can view the API documentation and test the endpoints using Swagger UI.

Swagger UI: http://localhost:8080/swagger-ui.html
Contributing
Contributions are welcome! Please fork the repository and create a pull request with your improvements.

License
This project is licensed under the MIT License.
