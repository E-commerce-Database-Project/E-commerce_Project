CREATE TABLE payment (
  paymentMode VARCHAR2(20)
    CHECK (paymentMode IN ('online','offline')),
  dateofpayment TIMESTAMP,
  order_id NUMBER,
  customer_id NUMBER,
  FOREIGN KEY (order_id)
    REFERENCES order_table(order_id)
    ON DELETE SET NULL,
  FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id)
    ON DELETE SET NULL
);
