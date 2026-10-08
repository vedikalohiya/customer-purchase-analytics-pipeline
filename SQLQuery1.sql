SELECT
    @@SERVERNAME AS ServerName,
    DB_NAME() AS DatabaseName,
    OBJECT_ID('dbo.Products') AS ObjectID;