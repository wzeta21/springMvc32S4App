# S4 a String Framework MVC 3.2 application
This application is based on [Spring mvc base repository](https://github.com/geowarin/spring-mvc-examples/tree/master/mvc-base) then this application is purely Spring MVC 3.2 JSP

This is my first project in Spring Framework and java language.

To excete this project type:
> mvn jetty:run

# ABOUT THIS APPLICATION

I'm going to talk how was developed this application.

## Classes and entites

There are two java classes (Student and Class), these classes represents entities involved in the application context, both of them are into com.wzeta21.mvc.base.model java package

## Mock's
There are two java files into com.wpta21.mvc.base.mock package, these files represents a way of persistence, there are some initial values to load when the application start

## Data Access Objects (DAO)
These objects interact with the mock (persistence) objects that allows encapsulate the persistence way, also there is a java interface where were defined methods to access persistence, this interface being implemented in Student DAO and Class DAO.
Package of DAO is com.wzeta21.mvc.base.dao.

## Services
These services allow interact betwen dao objectas and controllers, to avoid inheritances were defined some intefaces, this way allow segregate interfaces and when will be necesary do comositions in a specific class.
The services package is com.wzeta21.mvc.base.service.

## Controllers
There are three controllers:
StudentController is to hadle student CRUD
ClassController is to hadle subjectas CRUD
StudentsClassesController is to add/delete students from subjects, to add/delete subjects from studentes, also this controller show students' subjects and subjects' students.

## Views
There are few view files (jsp):
student.jsp file is to student CRUD.
class.jsp file is to subjects CRUD.
classStudents.jsp file is to handle a specific subject, there you could delete/add students and see all subscribed students.
studentclasses.jsp file is to handle a specific student, there you could delete/add subjects and see all subjects of student.

## Bean
Bean are defined in WebConfig.java file that is in com.wzeta21.mvc.base.config package.
Theres are two bean:
studentService: this bean initialize student service.
classService: this bean initialize subjects service.

These beans being invoked from controllers