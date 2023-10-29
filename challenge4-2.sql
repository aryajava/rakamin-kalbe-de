-- Challenge 4-2

-- Show Item_name that has the highest number in Item_total.
SELECT Item_name FROM inventory
WHERE Item_total = (SELECT MAX(Item_total) FROM inventory);

-- Update the Item_price of the output of question bullet
UPDATE inventory SET Item_price=88000
WHERE Item_total = (SELECT MAX(Item_total) FROM inventory);

-- What will happen if we insert another Item_name with Item_code of 2343 into the table?
-- Will show error: Duplicate entry '2343' for key 'inventory.PRIMARY'
-- INSERT INTO inventory (Item_code, Item_name, Item_price, Item_total) VALUES(2343, 'Test', 12000, 20);

-- Delete the Item_name that has the lowest number of Item_total.
DELETE i1 FROM inventory i1 JOIN (
  SELECT MIN(Item_total) AS min_total
  FROM inventory
) i2
WHERE i1.Item_total = i2.min_total;
