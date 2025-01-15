
CREATE PROCEDURE Updateitem_priceAndShowItem_alt
    @item_categoryName VARCHAR(100),
    @DesiredAvgitem_price DECIMAL(18, 2)
AS
BEGIN
    -- Declare variables for current average item_price and loop counter
    DECLARE @CurrentAvgitem_price DECIMAL(18, 2);
    DECLARE @item_id INT;
    DECLARE @Itemitem_price DECIMAL(18, 2);

    -- Step 1: Calculate current average item_price for the given item_category
    SELECT @CurrentAvgitem_price = AVG(item_price)
    FROM Item
    WHERE item_category = @item_categoryName;

    -- Step 2: Loop to increase the item_price until the new average item_price crosses the desired value
    WHILE @CurrentAvgitem_price < @DesiredAvgitem_price
    BEGIN
        -- Increase the item_price of each item by 10%
        UPDATE Item
        SET item_price = item_price * 1.10
        WHERE item_category = @item_categoryName;
		-- : Show Item that are cheaper than the input item_price
		SELECT item_id, item_name, item_price
		FROM Item
		WHERE item_category = @item_categoryName;

        -- Recalculate the new average item_price
        SELECT @CurrentAvgitem_price = AVG(item_price)
        FROM Item
        WHERE item_category = @item_categoryName;
    END

    -- Step 3: Show Item that are cheaper than the input item_price
    SELECT item_id, item_name, item_price
    FROM Item
    WHERE item_category = @item_categoryName
END;

EXEC Updateitem_priceAndShowItem_alt 'Electrical' , 1000;
DROP PROC Updateitem_priceAndShowItem_alt;
