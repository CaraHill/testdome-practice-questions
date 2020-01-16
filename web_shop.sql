-- Each item in a web shop belongs to a seller. To ensure service quality, each seller has a rating.

-- The data are kept in the following two tables:

-- TABLE sellers
--   id INTEGER PRIMARY KEY,
--   name VARCHAR(30) NOT NULL,
--   rating INTEGER NOT NULL

-- TABLE items
--   id INTEGER PRIMARY KEY,
--   name VARCHAR(30) NOT NULL,
--   sellerId INTEGER REFERENCES sellers(id)
-- Write a query that selects the item name and the name of its seller for each item that belongs to a seller with a rating greater than 4. The query should return the name of the item as the first column and name of the seller as the second column.

SELECT items.name, sellers.name FROM items INNER JOIN sellers on items.sellerId=sellers.id WHERE sellers.rating > 4;
