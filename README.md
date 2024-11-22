# FoodBox: Online Food Ordering Web Application

## Project Description
**FoodBox** is an online food ordering application designed to facilitate seamless interactions between customers and administrators. The application allows customers to browse items, add them to a cart, place orders, and provide feedback. Meanwhile, the admin has robust management capabilities for items, hotels, customers, transactions, orders, places, categories, and feedback. The app implements **role-based login** for secure access and follows the **MVC design pattern**.

---
## Table of Contents
- [FoodBox: Online Food Ordering Web Application](#foodbox-online-food-ordering-web-application)
  - [Project Description](#project-description)
    - [Technologies Used](#technologies-used)
  - [Key Features](#key-features)
    - [Admin Features](#admin-features)
    - [Customer Features](#customer-features)
  - [Installation Guide](#installation-guide)
    - [Prerequisites](#prerequisites)
    - [Steps to Set Up the Project](#steps-to-set-up-the-project)
  - [Screenshots](#screenshots)
  - [Project Structure](#project-structure)
  - [Contact](#contact)

---
### Technologies Used
- **Backend:** JDBC, Servlets, JSP
- **Frontend:** HTML, CSS, JavaScript, AJAX, jQuery, Bootstrap 5
- **Build Tool:** Maven
- **Database:** MySQL
- **Architecture:** MVC Design Pattern

---



## Key Features

### Admin Features:
- **Item Management:** Add, view, update, and delete food items.
- **Hotel Management:** Add, view, update, and delete hotels.
- **Customer Management:** Manage customer details (CRUD).
- **Transaction Management:** View and manage all transactions.
- **Order Management:** View and manage customer orders.
- **Place Management:** Manage locations (CRUD).
- **Category Management:** Add, view, update, and delete food categories.
- **Admin Management:** Add, view, update, and delete admin accounts.
- **Role-Based Authentication:** Secure login and logout system for admins.
- **Feedback Management:** View and manage customer feedback.

### Customer Features:
- **Browse Items:** View all available items and filter by hotels or category.

- **Cart Management:** Add items to the cart and remove items as needed.
- **Profile Management:** View and update personal details.
- **Order History:** View past orders.
- **Secure Authentication:** Role-based login and logout system for customers.
- **Place Orders:** Place food orders seamlessly.
- **Password Management:** Update password securely.
- **Feedback System:** Provide feedback on orders and services.

---

## Installation Guide

### Prerequisites
1. **Java Development Kit (JDK)**: Version 8 or later
2. **Apache Tomcat**: Version 9.5
3. **MySQL**: Version 8.0 or later
4. **Eclipse IDE**: Latest version with Maven support
5. **Maven**: Integrated into Eclipse or standalone
---
### Screenshots
![img-1](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/1.PNG)
![img-2](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/2.PNG)
![img-3](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/3.PNG)
![img-4](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/4.PNG)
![img-5](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/5.PNG)
![img-6](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/6.PNG)
![img-7](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/7.PNG)
![img-8](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/8.PNG)
![img-9](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/9.PNG)
![img-10](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/10.PNG)
![img-11](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/11.PNG)
![img-12](https://github.com/ParthasarathiSwain/FoodBox/blob/main/src/main/webapp/screenshots/12.PNG)
---
### Project Structure
```base
FoodBox/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com.otz/    # Java packages for the project
│   │   │       ├── controller/    # Servlets for handling requests
│   │   │       ├── dao/            # Data Access Object (Database operations)
│   │   │       ├── bean/         # POJOs representing data entities
│   │   │       └── util/          # Helper classes (e.g., DB connection, validations)
│   │   ├── webapp/
│   │   │   ├── WEB-INF/
│   │   │   │   ├── admin/      # Admin-specific JSPs
│   │   │   │   ├── include/  
│   │   │   ├── assets/
│   │   │   │   ├── css/            # CSS files for styling
│   │   │   │   ├── js/             # JavaScript files for interactivity
│   │   │   │   ├── custImages/         # Images used in the application
│   │   │   │   └── bootstrap/      # Bootstrap CSS and JS files
│   │   │   ├── index.jsp           # Main landing page
│   │   │   └── login.jsp           # Login page
├── pom.xml                         # Maven configuration file
├── database.sql                    # Database schema and initial data
└── README.md                       # Project documentation
```
---
### Contact
- **Email** : rajaswain6969@gmail.com
