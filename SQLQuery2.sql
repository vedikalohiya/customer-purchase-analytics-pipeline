SELECT 
    (SELECT COUNT(*) FROM dbo.Customers) AS Customers,
    (SELECT COUNT(*) FROM dbo.Products) AS Products,
    (SELECT COUNT(*) FROM dbo.Orders) AS Orders,
    (SELECT COUNT(*) FROM dbo.OrderItems) AS OrderItems;