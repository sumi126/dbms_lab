CREATE PROCEDURE GetCategoryStats
AS
BEGIN
    -- Select statement to calculate the total number of items and average price by category
    SELECT 
        item_category AS Category,                                      -- Item category
        SUM(item_qoh) AS 'Total Number of Items',                   -- Total number of items available in the category
        AVG(item_price) AS 'Average Price'                         -- Average price of items in the category
    FROM 
        Item                                          -- The Items table
    GROUP BY 
        item_category                                       -- Group by category
    ORDER BY 
        item_category;                                      -- Optionally, order by category or any other field
END;