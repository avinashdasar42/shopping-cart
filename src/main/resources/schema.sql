DROP TABLE IF EXISTS USERS;

CREATE TABLE USERS (  
	id INT AUTO_INCREMENT  PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL
);  

DROP TABLE IF EXISTS CATEGORY;
CREATE TABLE CATEGORY (  
	id INT AUTO_INCREMENT  PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	description VARCHAR(2000) NOT NULL,
	created_date TIMESTAMP,
	updated_date TIMESTAMP,
	UNIQUE ( name )
);

DROP TABLE IF EXISTS PRODUCT;
CREATE TABLE PRODUCT (  
	id INT AUTO_INCREMENT  PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	description VARCHAR(2000) NOT NULL,
	price INT,
	product_image_path VARCHAR(255),
	category_Id INT,
	discount INT,
	created_date TIMESTAMP,
	updated_date TIMESTAMP,
	UNIQUE ( name )
);

DROP TABLE IF EXISTS ORDER_HISTORY;
CREATE TABLE ORDER_HISTORY (  
	id INT AUTO_INCREMENT  PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	total_value INT,
	ordered_date TIMESTAMP
);

DROP TABLE IF EXISTS ORDER_DETAILS;
CREATE TABLE ORDER_DETAILS (  
	id INT AUTO_INCREMENT  PRIMARY KEY,
	order_id INT,
	product_id INT,
	quantity INT,
	unit_price INT,
	discount INT,
	extended_price INT
);
