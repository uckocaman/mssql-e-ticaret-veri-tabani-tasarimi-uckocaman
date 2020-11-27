-- ALTERS
ALTER TABLE customers
ADD CONSTRAINT job_fk FOREIGN KEY(job_id) REFERENCES jobs(job_id);

ALTER TABLE customer_address
ADD CONSTRAINT customer_fk FOREIGN KEY(customer_id) REFERENCES customers(id),
	CONSTRAINT city_fk FOREIGN KEY(city_id) REFERENCES cities(city_id),
	CONSTRAINT district_fk FOREIGN KEY(district_id) REFERENCES districts(district_id);

ALTER TABLE products
ADD CONSTRAINT color_fk FOREIGN KEY(color_id) REFERENCES colors(color_id),
	CONSTRAINT brand_fk FOREIGN KEY(brand_id) REFERENCES brands(brand_id);
	--,CONSTRAINT def_desc DEFAULT product.product_name FOR description; -- DENEME / ÇALIÞMADI ARAÞTIRIYORUM :)

ALTER TABLE products_categories
ADD CONSTRAINT product_fk FOREIGN KEY(product_id) REFERENCES products(product_id),
	CONSTRAINT category_fk FOREIGN KEY(category_id) REFERENCES categories(category_id);

ALTER TABLE orders
ADD	CONSTRAINT orders_customer_fk FOREIGN KEY(customer_id) REFERENCES customers(id),
	CONSTRAINT order_status_fk FOREIGN KEY(order_status_id) REFERENCES order_status(status_id),
	CONSTRAINT payment_type_fk FOREIGN KEY(payment_type_id) REFERENCES payment_types(payment_type_id);
