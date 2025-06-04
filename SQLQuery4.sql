--Query to clean whitespace issues in the ReviewText column

SELECT 
    ReviewID, 
    CustomerID, 
    ProductID, 
    ReviewDate,  
    Rating, 
    REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM 
    dbo.customer_reviews;