# E-Commerce-Database
# SQL Database Schema and Sample Data

This repository contains SQL scripts for creating a database schema and populating it with sample data. The database design includes tables for customers, products, categories, orders, order details, and product reviews.

## Table of Contents

- [Database Schema](#database-schema)
- [Sample Data](#sample-data)
- [Queries](#queries)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## Database Schema

The SQL script creates the following tables:

- Customers: Stores customer information, including name, email, password hash, shipping address, and payment information.
- Categories: Holds product categories.
- Products: Contains product details, including name, description, price, stock quantity, and category association.
- Orders: Records order information with a date, customer reference, and order status.
- OrderDetails: Stores order-specific product details, including quantity and total price.
- Reviews: Manages product reviews, including customer ratings and comments.

## Sample Data

The SQL script includes INSERT statements to populate the tables with sample data. This data provides a basic starting point for testing and exploring the database.

## Queries

The script includes example SQL queries that demonstrate various operations, including:

- Selecting unique customer emails.
- Filtering product reviews by rating.
- Sorting products by price.
- Using the WHERE clause to filter and find specific records.
- Using the LIMIT clause to restrict query results.
- Describing table structure with the DESC statement.

## Getting Started

To use this SQL script and set up the database, follow these steps:

1. Create a new database in your SQL server.

2. Run the SQL script provided in your database management tool to create the tables and insert sample data.

3. Explore and modify the SQL queries as needed for your specific use case.

## Contributing

If you would like to contribute to this project, please open an issue or submit a pull request. Your contributions and feedback are welcome.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
