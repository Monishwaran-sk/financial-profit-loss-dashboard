CREATE TABLE financial_data (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    RnD_Spend DECIMAL(12,2),
    Administration DECIMAL(12,2),
    Marketing_Spend DECIMAL(12,2),
    State VARCHAR(50),
    Profit DECIMAL(12,2)
);

SELECT ID, COUNT(*) 
FROM financial_data 
GROUP BY ID 
HAVING COUNT(*) > 1;

SELECT * FROM financial_data 
WHERE RnD_Spend IS NULL 
   OR Administration IS NULL 
   OR Marketing_Spend IS NULL 
   OR State IS NULL 
   OR Profit IS NULL;

UPDATE financial_data 
SET State = TRIM(UPPER(State));

SET SQL_SAFE_UPDATES = 0;

UPDATE financial_data 
SET State = TRIM(UPPER(State));

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM financial_data 
WHERE Profit > (SELECT AVG(Profit) + 3 * STDDEV(Profit) FROM financial_data);




