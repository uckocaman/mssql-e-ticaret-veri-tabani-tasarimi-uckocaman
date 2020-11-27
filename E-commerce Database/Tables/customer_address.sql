CREATE TABLE customer_address(
	address_id INT IDENTITY(1,1) PRIMARY KEY,
	customer_id INT NOT NULL,
	city_id INT NOT NULL,
	district_id INT NOT NULL,
	address NVARCHAR(100) NOT NULL,
	postal_code INT NOT NULL,
	CONSTRAINT address_check CHECK (len(address)>10),
	CONSTRAINT postal_code_check CHECK (len(postal_code)=5)
)
