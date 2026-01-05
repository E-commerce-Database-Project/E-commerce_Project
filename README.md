# E-Commerce Database Management System

A comprehensive database system designed for an e-commerce platform, built using MySQL/PLSQL. This project demonstrates advanced database concepts including complex queries, joins, subqueries, and relational design. 

## 📋 Project Overview

This project implements a complete e-commerce database system with customer management, product catalog, order processing, payment handling, and review systems. It includes 46+ SQL queries demonstrating various database operations and concepts.

**Contributors:**
- Sanskruti-333
- Nivrutti-332
- Kedar-323

## 🗂️ Repository Structure

```
E-commerce-Project/
├── Database Creation/          # Database schema and table creation scripts
├── sql_insert_values_code/     # Sample data insertion scripts
├── Queries. sql                 # 46+ SQL queries organized by type
├── The Entity Relationship (ER) Diagram.jpg
└── Relational Schema Diagram.jpg
```

## 🎯 Features

### Database Components

- **Customer Management**: Customer profiles, authentication, and personal information
- **Product Catalog**: Product details, categories, brands, stock management
- **Order Processing**: Shopping cart, order management, order status tracking
- **Payment System**: Multiple payment modes and transaction records
- **Review System**: Product ratings and customer feedback
- **Seller Management**:  Seller profiles and sales tracking
- **Address Management**: Customer shipping and billing addresses

### Query Categories (46+ Queries)

1. **Multiple Table JOIN Operations** (6 queries)
   - Customer-Order-Product relationships
   - Seller-Product-Category mappings
   - Payment and review integrations

2. **Different Operators** (7 queries)
   - Comparison operators (>, <, =, !=)
   - BETWEEN, IN, LIKE operators
   - Logical operators (AND, OR, NOT)
   - NULL checks (IS NULL, IS NOT NULL)

3. **GROUP BY and HAVING Clauses** (13 queries)
   - Aggregate functions (COUNT, SUM, AVG, MAX)
   - Category-wise analytics
   - Customer spending analysis
   - Product ratings aggregation

4. **Subqueries & Correlated Nested Queries** (20 queries)
   - Simple subqueries with IN, NOT IN
   - Correlated subqueries
   - Nested multi-level queries
   - EXISTS and NOT EXISTS operators
   - ALL operator usage

## 📊 Database Schema

The database consists of the following main tables:

- `customer` - Customer information
- `product` - Product catalog
- `category` - Product categories
- `seller` - Seller details
- `order_table` - Order records
- `cart` - Shopping cart items
- `payment` - Payment transactions
- `review` - Product reviews
- `address` - Customer addresses

For detailed schema information, refer to: 
- **ER Diagram**: `The Entity Relationship (ER) Diagram.jpg`
- **Relational Schema**:  `Relational Schema Diagram.jpg`

## 🚀 Getting Started

### Prerequisites

- MySQL Server (5.7 or higher) or compatible database system
- MySQL Workbench or any SQL client

### Installation

1. Clone the repository:
```bash
git clone https://github.com/kedarkn2605-blip/E-commerce-Project.git
cd E-commerce-Project
```

2. Create the database:
```sql
CREATE DATABASE e_commerce;
USE e_commerce;
```

3. Run the database creation scripts from the `Database Creation/` folder to create all tables.

4. Execute the insert scripts from `sql_insert_values_code/` to populate sample data.

5. Run queries from `Queries.sql` to test the database functionality.

## 💡 Usage Examples

### Find High-Value Customers
```sql
SELECT c.FirstName, c.LastName, SUM(o.order_amount) as total_spent
FROM customer c
JOIN order_table o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.FirstName, c.LastName
HAVING SUM(o.order_amount) > 10000;
```

### Get Products with High Ratings
```sql
SELECT p.product_name, AVG(CAST(r.rating AS DECIMAL(3,2))) as avg_rating
FROM product p
JOIN review r ON p.product_id = r. product_id
GROUP BY p. product_id, p.product_name
HAVING AVG(CAST(r.rating AS DECIMAL(3,2))) > 4;
```

### Find Top Selling Categories
```sql
SELECT cat.category_name, COUNT(p.product_id) as product_count
FROM category cat
JOIN product p ON cat. category_id = p.category_id
GROUP BY cat.category_name
HAVING COUNT(p.product_id) > 2;
```

## 📈 Query Breakdown

| Category | Count | Description |
|----------|-------|-------------|
| JOIN Operations | 6 | Multi-table relationship queries |
| Operators | 7 | Comparison, logical, and pattern matching |
| Aggregations | 13 | GROUP BY and HAVING clauses |
| Subqueries | 20 | Nested and correlated queries |
| **Total** | **46** | Comprehensive SQL query examples |

## 🔍 Key Concepts Demonstrated

- **Normalization**: Proper database design with minimal redundancy
- **Referential Integrity**: Foreign key relationships
- **Complex Joins**: 2-way, 3-way, and 4-way table joins
- **Advanced Filtering**:  Subqueries, correlated queries, EXISTS/NOT EXISTS
- **Analytical Queries**:  Aggregations, rankings, and statistical analysis
- **Data Manipulation**:  INSERT, UPDATE operations via scripts

## 📝 License

This project is created for educational purposes as part of a database management course. 

## 🤝 Contributing

This is an academic project.  For suggestions or improvements, please contact the contributors.

## 📧 Contact

For questions or feedback, please reach out to any of the project contributors through GitHub. 

---

**Note**: This project demonstrates database concepts and SQL query techniques. The sample data is for educational purposes only. 
