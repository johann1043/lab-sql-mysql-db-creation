CREATE TABLE cars (
    id INT PRIMARY KEY,
    vin VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(50)
);

CREATE TABLE customers (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(200),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode INT
);

CREATE TABLE salesperson (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100),
    store VARCHAR(50)
);

CREATE TABLE invoices (
    invoice_number INT PRIMARY KEY,
    date DATE,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES Cars(id),
    FOREIGN KEY (customer) REFERENCES Customers(cust_id),
    FOREIGN KEY (salesperson) REFERENCES Salesperson(staff_id)
);

