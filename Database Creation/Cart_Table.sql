CREATE TABLE cart (
  cart_id NUMBER PRIMARY KEY,
  grandtotal NUMBER(10,2),
  itemtotal NUMBER,
  customer_id NUMBER,
  product_id NUMBER,
  FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id)
    ON DELETE SET NULL,
  FOREIGN KEY (product_id)
    REFERENCES product(product_id)
    ON DELETE SET NULL
);
