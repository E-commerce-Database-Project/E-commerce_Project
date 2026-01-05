CREATE TABLE review (
  review_id NUMBER PRIMARY KEY,
  description VARCHAR2(255),
  rating NUMBER(1) CHECK (rating BETWEEN 1 AND 5),
  customer_id NUMBER,
  product_id NUMBER,
  FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id)
    ON DELETE SET NULL,
  FOREIGN KEY (product_id)
    REFERENCES product(product_id)
    ON DELETE SET NULL
);
