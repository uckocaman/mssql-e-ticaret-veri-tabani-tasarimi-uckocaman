CREATE TABLE colors(
	color_id INT IDENTITY(1,1) PRIMARY KEY,
	color NVARCHAR(30) NOT NULL,
	CONSTRAINT color_check CHECK (len(color)>=3)
)
