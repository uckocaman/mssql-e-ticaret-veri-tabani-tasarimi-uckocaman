CREATE TABLE customers(
	id INT IDENTITY(1,1) PRIMARY KEY,
	name NVARCHAR(30) NOT NULL,
	surname NVARCHAR(30) NOT NULL,
	email NVARCHAR(35) NOT NULL,
	phone NVARCHAR(15) NOT NULL,
	job_id INT NOT NULL,
	CONSTRAINT email_check CHECK (email LIKE '%@%'),
	CONSTRAINT phone_check CHECK (len(phone)>=10)
)
