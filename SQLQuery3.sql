-- SQL statement to join dim_customers with dim_geography to enrich customer data with geographic information

SELECT 
    cu.CustomerID,  
    cu.CustomerName, 
    cu.Email,  
    cu.Gender, 
    cu.Age,  
    ge.Country, 
    ge.City  
FROM 
    dbo.customers as cu  
LEFT JOIN
    dbo.geography ge  
ON 
    cu.GeographyID = ge.GeographyID;  