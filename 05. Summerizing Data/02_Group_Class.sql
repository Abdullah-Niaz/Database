SELECT 
	client_id,
    sum(invoice_total) AS Total_Sales
FROM
	invoices
WHERE 
	invoices_date >= '2019-07-01'
GROUP BY 
	client_id
ORDER BY Total_Sales DESC;