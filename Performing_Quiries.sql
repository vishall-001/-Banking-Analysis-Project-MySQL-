
 //*Banking Analysis Queries*//
 
/*Total Bank Deposits*/
SELECT SUM(balance) AS total_deposits
FROM Accounts;

/* Total Loan Amount*/
SELECT SUM(loan_amount) AS total_loans
FROM Loans;

/*Loan Distribution by Type*/
SELECT loan_type,
       COUNT(*) AS total_loans,
       SUM(loan_amount) AS total_amount
FROM Loans
GROUP BY loan_type;

/*High Value Customers (Balance > 1 Lakh)*/
SELECT c.customer_name, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.balance > 100000;

/* Average Account Balance */
SELECT AVG(balance) AS avg_balance
FROM Accounts;

/* Active Loans */
SELECT COUNT(*) AS active_loans
FROM Loans
WHERE loan_status = 'Active';

/* Interest Revenue Estimation */
SELECT SUM(loan_amount * interest_rate / 100) AS estimated_interest
FROM Loans
WHERE loan_status = 'Active';

/* Customer with Highest Loan */
SELECT c.customer_name, l.loan_amount
FROM Customers c
JOIN Loans l ON c.customer_id = l.customer_id
ORDER BY l.loan_amount DESC
LIMIT 1;

 /* City-wise Customer Count */
SELECT city, COUNT(*) AS total_customers
FROM Customers
GROUP BY city;

/*Savings vs Current Account Distribution */
SELECT account_type,
       COUNT(*) AS total_accounts,
       SUM(balance) AS total_balance
FROM Accounts
GROUP BY account_type;

 /*Find customers having both Savings & Loan*/
SELECT DISTINCT c.customer_name
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Loans l ON c.customer_id = l.customer_id;

/*Top 3 Customers by Total Relationship Value*/
SELECT c.customer_name,
       SUM(a.balance) + IFNULL(SUM(l.loan_amount),0) AS total_value
FROM Customers c
LEFT JOIN Accounts a ON c.customer_id = a.customer_id
LEFT JOIN Loans l ON c.customer_id = l.customer_id
GROUP BY c.customer_name
ORDER BY total_value DESC
LIMIT 3;








