-- Query to clean and normalize the engagement_data table

SELECT 
    EngagementID, 
    ContentID,  
	CampaignID, 
    ProductID,
    UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,  
    LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS Views,  
    RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks, 
    Likes,  
   
    FORMAT(CONVERT(DATE, EngagementDate), 'dd.MM.yyyy') AS Engagement_Date
FROM 
    dbo.engagement_data
   
    