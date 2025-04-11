SELECT 
    COUNT(*) AS Total_Records, 
    AVG(Profit) AS Avg_Profit, 
    SUM(Profit) AS Total_Profit,
    MAX(Profit) AS Max_Profit,
    MIN(Profit) AS Min_Profit
FROM financial_data;

SELECT * FROM financial_data LIMIT 10;

SELECT * FROM financial_data LIMIT 10;

SELECT 
    COUNT(*) AS Total_Records, 
    AVG(Profit) AS Avg_Profit, 
    SUM(Profit) AS Total_Profit,
    MAX(Profit) AS Max_Profit,
    MIN(Profit) AS Min_Profit
FROM financial_data;

SELECT State, SUM(Profit) AS Total_Profit
FROM financial_data
GROUP BY State
ORDER BY Total_Profit DESC;

SELECT State, 
       SUM(Profit) / NULLIF(SUM(RnD_Spend + Administration + Marketing_Spend), 0) AS ROI
FROM financial_data
GROUP BY State
ORDER BY ROI DESC;

SELECT * FROM financial_data;

SELECT ID, COUNT(*) 
FROM financial_data 
GROUP BY ID 
HAVING COUNT(*) > 1;
SELECT * FROM financial_data WHERE ID IS NULL;
DELETE FROM financial_data 
WHERE ID NOT IN (
    SELECT ID FROM (SELECT ID FROM financial_data ORDER BY ID LIMIT 50) AS temp
);


DELETE FROM financial_data 
WHERE ID NOT IN (
    SELECT ID FROM (SELECT ID FROM financial_data ORDER BY ID LIMIT 50) AS temp


DELETE FROM financial_data 
WHERE ID NOT IN (
    SELECT ID FROM (SELECT ID FROM financial_data ORDER BY ID LIMIT 50) AS temp
);



 FROM financial_data 
WHERE ID NOT IN (
    SELECT ID FROM (SELECT ID FROM financial_data ORDER BY ID LIMIT 50) AS temp
);DELETE

SET SQL_SAFE_UPDATES = 0;

DELETE FROM financial_data 
WHERE ID NOT IN (
    SELECT ID FROM (SELECT ID FROM financial_data ORDER BY ID LIMIT 50) AS temp
);

SELECT COUNT(*) FROM financial_data;

SELECT * FROM financial_data;






