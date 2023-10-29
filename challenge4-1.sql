-- Challenge 4-1

create database KALBE;

use KALBE;

create table Inventory (
Item_code INT primary key,
Item_name VARCHAR(100),
Item_price DECIMAL(10,2),
Item_total INT
);

INSERT INTO Inventory (Item_code,Item_name,Item_price,Item_total)VALUES
	 (2341,'Promag Tablet',3000,100),
	 (2342,'Hydro Coco 250ML',7000,20),
	 (2343,'Nutrive Benecol 100ML',20000,30),
	 (2344,'Blackmores Vit C 500Mg',95000,45),
	 (2345,'Entrasol Gold 370G',90000,120);
	

	
	