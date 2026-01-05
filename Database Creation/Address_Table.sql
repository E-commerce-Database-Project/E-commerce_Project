CREATE TABLE address (
  address_id NUMBER PRIMARY KEY,
  apart_no VARCHAR2(10),
  apart_name VARCHAR2(255),
  streetname VARCHAR2(255),
  state VARCHAR2(255),
  city VARCHAR2(255),
  pincode NUMBER(6),
  customer_id NUMBER,
  FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id)
    ON DELETE CASCADE
);
