CREATE TABLE products(
	product_id INT IDENTITY(1,1) PRIMARY KEY,
	product_name NVARCHAR(100) NOT NULL,
	description NVARCHAR(200),
	quantity INT NOT NULL,
	price FLOAT NOT NULL,
	color_id INT,
	discount FLOAT,
	brand_id INT NOT NULL,
	CONSTRAINT quantity_check CHECK (quantity>0),
	CONSTRAINT price_check CHECK (price>0),
	CONSTRAINT discount_check CHECK (discount>=0)
)