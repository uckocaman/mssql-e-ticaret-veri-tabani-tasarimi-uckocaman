CREATE TABLE products_categories(
	product_category_id INT IDENTITY(1,1) PRIMARY KEY,
	product_id INT NOT NULL,
	category_id INT NOT NULL
)