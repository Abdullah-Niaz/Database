use sql_invoicing;
SELECT 
	SUM(invoice_total) as Invoice_Total
from invoices;

-- we have
	-- sum() 
	-- max()
	-- min()
	-- avg()
	-- sum()
	-- count() 
    
    
SELECT 
	MAX(invoice_total) AS Highest,
    MIN(invoice_total) as Lowest,
    AVG(invoice_total) as Average,
	SUM(invoice_total) as Sum,
    COUNT(invoice_total) as Count
from invoices;

SELECT 
	MAX(invoice_total) AS Highest,
    MIN(invoice_total) as Lowest,
    AVG(invoice_total) as Average,
	SUM(invoice_total) as Sum,
    COUNT(invoice_total) as Count
from 
	invoices
where
	invoice_date  > '2019-07-01';
    
    
SELECT 
	'First Half of 2019' AS Date_Range,
    SUM(invoice_total) As Total_Sales,
    SUM(payment_total) AS Total_Payment,
    SUM(invoice_total  - payment_total) as 'What we Expect'
FROM
	invoices
WHERE
	invoice_date  
		BETWEEN '2019-01-01' AND '2019-07-30'
        
UNION

SELECT 
	'Second Half of 2019' AS Date_Range,
    SUM(invoice_total) As Total_Sales,
    SUM(payment_total) AS Total_Payment,
    SUM(invoice_total  - payment_total) as 'What we Expect'
FROM
	invoices
WHERE
	invoice_date  
		BETWEEN '2019-07-01' AND '2019-12-31'

UNION

SELECT 
	'Second Half of 2019' AS Date_Range,
    SUM(invoice_total) As Total_Sales,
    SUM(payment_total) AS Total_Payment,
    SUM(invoice_total  - payment_total) as 'What we Expect'
FROM
	invoices
WHERE
	invoice_date  
		BETWEEN '2019-01-01' AND '2019-12-31';