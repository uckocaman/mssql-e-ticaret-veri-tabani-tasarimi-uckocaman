CREATE TABLE orders(
	order_id INT IDENTITY(1,1) PRIMARY KEY,
	customer_id INT NOT NULL,
	order_detail_id INT NOT NULL,
	order_status_id INT NOT NULL,
	order_date DATE NOT NULL DEFAULT GETDATE(),
	total_price FLOAT NOT NULL,
	payment_type_id INT NOT NULL,
	CONSTRAINT total_price_check CHECK (total_price>=0)
)