CREATE TABLE category(  
    cat_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cat_name VARCHAR(255),
    cat_brand VARCHAR(255),
    cat_type VARCHAR(255),
    cat_discription VARCHAR(255)
);

CREATE TABLE Product(  
    product_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255),
    product_price DOUBLE,
    product_stock INT,
    product_category INT, 
    FOREIGN KEY (product_category) REFERENCES category(cat_id)
);

CREATE TABLE customer(  
    customer_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(255),
    customer_email VARCHAR(300),
    customer_phoneNumber BIGINT,
    customer_address VARCHAR (300)
);

CREATE TABLE sales(  
    sale_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    sale_product_id INT, 
    FOREIGN KEY (sale_product_id) REFERENCES product (product_id),
    sale_price DOUBLE,
    sale_date DATETIME,
    sale_custID INT, 
    FOREIGN KEY (sale_custID) REFERENCES customer(customer_id)
);

COMMIT


INSERT INTO category VALUES(1,'Fashion','Puma','Shoe','Mens Shoe');
INSERT INTO category VALUES(2,'Beauty','MAC','Lipstick','Matt finish');
INSERT INTO category VALUES(3,'Home','Ace','Bed','Double Bed');
INSERT INTO category VALUES(4,'Electronic','Apple','Mobile','iPhone16Max');
INSERT INTO category VALUES(5,'Accessories','Guess','Bag','Ladies Handbag');



INSERT INTO product VALUES(1, 'Iphone16','999.0','10','4');
INSERT INTO product VALUES(2, 'Iphone13Max','866.0','15','4' );
INSERT INTO product VALUES(3, 'Nike','130.0','20','1' );
INSERT INTO product VALUES(4, 'NikeWomen','150.0','30','1' );
INSERT INTO product VALUES(5, 'Adidas','99.0','15','1' );
INSERT INTO product VALUES(6, 'StudyTable','200.0','30','3' );
INSERT INTO product VALUES(7, 'Sofa','1999.0','5','3' );
INSERT INTO product VALUES(8, 'SingleBed','888.0','10','3' );
INSERT INTO product VALUES(9, 'Bag','299.0','10','5' );
INSERT INTO product VALUES(10, 'RedLipstick','55.0','20','2' );
INSERT INTO product VALUES(11, 'Electric Mug','10.0','2','4' );

INSERT INTO customer VALUES(1, 'Amril Mak','mariy@gmail.com','7065785543','cr36yh' );
INSERT INTO customer VALUES(2, 'Josh Jones','Josh.jones@hotmail.com','7045673390','yf56fg' );
INSERT INTO customer VALUES(3, 'Pooja Kumar','Pooja121@gmail.com','7067485546','rd64uy' );
INSERT INTO customer VALUES(4, 'Nick Hudson','Nickhud23@gmail.com','7567895543','cv67hn' );
INSERT INTO customer VALUES(5, 'Sumit Kano','sam23@gmail.com','7065785543','cr35yt' );

INSERT INTO sales VALUES(1, '9','299.0','2025-02-28 15:30:45','3' );
INSERT INTO sales VALUES(2, '6','200.0','2024-12-01 11:30:47','4' );
INSERT INTO sales VALUES(3, '2','866.0','2024-03-19 10:30:35','5' );
INSERT INTO sales VALUES(4, '5','99.0','2024-04-15 12:30:25','4' );
INSERT INTO sales VALUES(5, '3','130.0','2024-08-28 15:30:45','3' );
INSERT INTO sales VALUES(6, '8','888.0','2025-01-20 10:30:30','1' );
INSERT INTO sales VALUES(7, '10','55.0','2025-01-21 15:30:45','3' );
INSERT INTO sales VALUES(8, '2','866.0','2025-02-22 12:30:48','5' );
INSERT INTO sales VALUES(9, '2','866.0','2025-02-22 15:30:45','1' );
INSERT INTO sales VALUES(10, '9','299.0','2025-02-28 15:30:32','3' );
INSERT INTO sales VALUES(11, '6','200.0','2025-02-28 11:30:25','2' );
INSERT INTO sales VALUES(12, '10','55.0','2025-01-21 14:30:34','1' );
INSERT INTO sales VALUES(13, '7','1999.0','2025-02-12 13:30:43','4' );

COMMIT

SELECT product.product_name,product.product_price,product.product_stock FROM product

SELECT product.product_name FROM product WHERE product_stock<5

SELECT category.cat_brand FROM category

SELECT SUM(sales.sale_price) from sales

SELECT * from sales WHERE `sale_custID`='5'
    

COMMIT



