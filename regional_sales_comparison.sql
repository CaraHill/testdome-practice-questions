-- An insurance company maintains records of sales made by its employees. Each employee is assigned to a state. States are grouped under regions. The following tables contain the data:

-- TABLE regions
--   id INTEGER PRIMARY KEY
--   name VARCHAR(50) NOT NULL

-- TABLE states
--   id INTEGER PRIMARY KEY
--   name VARCHAR(50) NOT NULL
--   regionId INTEGER NOT NULL REFERENCES regions(id)

-- TABLE employees
--   id INTEGER PRIMARY KEY
--   name VARCHAR(50) NOT NULL
--   stateId INTEGER NOT NULL REFERENCES states(id)

-- TABLE sales
--   id INTEGER PRIMARY KEY
--   amount INTEGER NOT NULL
--   employeeId INTEGER NOT NULL REFERENCES employees(id)

-- Management requires a comparative region sales analysis report.

-- Write a query that returns:

-- The region name.
-- Average sales per employee for the region (Average sales = Total sales made for the region / Number of employees in the region).
-- The difference between the average sales of the region with the highest average sales, and the average sales per employee for the region (average sales to be calculated as explained above).
-- A region with no sales should be also returned. Use 0 for average sales per employee for such a region when calculating the 2nd and the 3rd column.

-- SELECT regions.name, avgEmpSales = (SELECT SUM(sales.amount) / COUNT(employeeId) FROM sales GROUP BY employeeId HAVING stateId ),
-- FROM regions
-- JOIN states ON states.regionId = regions.id
-- JOIN employees ON employess.stateId = states.id
-- JOIN sales ON sales.employeeID = employees.id

select regions.name as name,
  ifnull(sum(sales.amount), 0) / count(*) as average,
  (
    select ifnull(sum(sales.amount), 0) / count(sales.id) as regional_average
    from regions
    left join states on regions.id = states.regionId
    left join employees on states.id = employees.stateId
    left join sales on employees.id = sales.employeeId
    group by regions.name
    order by regional_average desc
    limit 1
  ) - (ifnull(sum(sales.amount), 0) / count(*)) as difference
from regions
  left join states on regions.id = states.regionId
  left join employees on states.id = employees.stateId
  left join sales on employees.id = sales.employeeId
group by regions.name
