SELECT * FROM Bank_loan_data


SELECT COUNT(id)  AS Total_Loan_Applications FROM Bank_loan_data

SELECT COUNT(id)  AS MTD_Total_Loan_Applications FROM Bank_loan_data
WHERE MONTH(issue_date)  = 12 AND YEAR(issue_date) = 2021

SELECT COUNT(id)  AS PMTD_Total_Loan_Applications FROM Bank_loan_data
WHERE MONTH(issue_date)  = 11 AND YEAR(issue_date) = 2021

SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM Bank_loan_data
WHERE MONTH(issue_date)  = 12 AND YEAR(issue_date) = 2021

SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM Bank_loan_data
WHERE MONTH(issue_date)  = 11 AND YEAR(issue_date) = 2021

SELECT SUM(total_payment) AS Total_Amount_Received FROM  Bank_loan_data

SELECT SUM(total_payment) AS MTD_Total_Amount_Received FROM  Bank_loan_data
WHERE MONTH(issue_date)  = 12 AND YEAR(issue_date) = 2021

SELECT ROUND(AVG(int_rate), 4) * 100 AS Avg_Interest_Rate FROM  Bank_loan_data

SELECT ROUND(AVG(int_rate), 4) * 100 AS MTD_Avg_Interest_Rate FROM  Bank_loan_data
WHERE MONTH(issue_date)  = 12 AND YEAR(issue_date) = 2021

SELECT ROUND(AVG(int_rate), 4) * 100 AS PMTD_Avg_Interest_Rate FROM  Bank_loan_data
WHERE MONTH(issue_date)  = 11 AND YEAR(issue_date) = 2021


SELECT ROUND(AVG(dti),4) * 100 AS MTD_Avg_DTI FROM  Bank_loan_data
WHERE MONTH(issue_date)  = 12 AND YEAR(issue_date) = 2021

SELECT ROUND(AVG(dti),4) * 100 AS PMTD_Avg_DTI FROM  Bank_loan_data
WHERE MONTH(issue_date)  = 11 AND YEAR(issue_date) = 2021

SELECT loan_status FROM Bank_loan_data

SELECT
  (COUNT(CASE WHEN loan_status = 'Fully Paid' or loan_status = 'Current' THEN id END) * 100)
  /
  COUNT(id) AS Good_loan_percentage
  FROM Bank_loan_data

  SELECT COUNT(id) AS Good_Loan_Applications FROM Bank_loan_data
WHERE loan_status = 'Fully Paid' or loan_status = 'Current' 


 SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM Bank_loan_data
WHERE loan_status = 'Fully Paid' or loan_status = 'Current'

SELECT
  (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0)
  /
  COUNT(id) AS Bad_loan_percentage
  FROM Bank_loan_data

  SELECT COUNT(id) AS Bad_Loan_Applications FROM Bank_loan_data WHERE loan_status = 'Charged Off'