CREATE TABLE order_table (
  order_id NUMBER PRIMARY KEY,
  order_date TIMESTAMP,
  order_amount NUMBER(10,2),
  order_status VARCHAR2(20)
    CHECK (order_status IN ('delivery','not delivery')),
  shipping_date TIMESTAMP,
  customer_id NUMBER,
  cart_id NUMBER,
  FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id)
    ON DELETE SET NULL,
  FOREIGN KEY (cart_id)
    REFERENCES cart(cart_id)
    ON DELETE SET NULL
);
