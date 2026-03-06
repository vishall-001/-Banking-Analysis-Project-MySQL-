# -Banking-Analysis-Project-MySQL-
Banking Analysis Project 
 
Built a Banking Data Analysis project using MySQL to analyze deposits, loans, customer segmentation, and financial KPIs. Designed normalized database schema and performed advanced SQL queries including joins, aggregations, and KPI calculations.

Project Objective :

Analyze banking data to:
Track total deposits & loans
Identify high-value customers
Analyze loan risk
Monitor branch performance
Calculate KPIs (Revenue, NPA %, Avg Balance, etc.)

Outcomes :

SQL Analysis Queries & Outcomes
# 1️) Total Bank Deposits
Purpose: Calculate total money deposited in the bank.
Query Logic:
            SUM(balance)

Outcome:
Shows the total balance available across all customer accounts, which represents the bank's total deposits.


# 2️) Total Loan Amount
Purpose: Calculate the total loan amount issued by the bank.
Query Logic:
            SUM(loan_amount)

Outcome:
Shows the total loan value provided by the bank to customers.

# 3️) Loan Distribution by Type
Purpose: Analyze loan types such as Home Loan, Car Loan, Personal Loan.
Outcome:
        Number of loans per type

Total amount issued per loan type
This helps understand which loan category generates more business.

# 4️) High Value Customers
Purpose: Identify customers with account balance greater than ₹1,00,000.
Outcome:
      Lists premium customers who maintain high balances and are important for banking relationships.

# 5️) Average Account Balance
Purpose: Calculate the average balance across all accounts.
Outcome:
Helps measure the typical account value maintained by customers.

# 6️) Active Loans
Purpose: Count the number of currently active loans.
Outcome:
Shows the number of loans still being repaid by customers.

# 7️) Interest Revenue Estimation
Purpose: Estimate potential interest income from active loans.
Formula Used:
loan_amount × interest_rate / 100

Outcome:
Shows the estimated revenue the bank earns from interest.

# 8) Customer with Highest Loan
Purpose: Identify the customer with the largest loan amount.
Outcome:
       Helps identify high-value borrowers.

# 9️) City-wise Customer Distribution
Purpose: Analyze customer distribution across cities.
Outcome:
Shows the number of customers per city, useful for market analysis.

# 10) Savings vs Current Account Analysis
Purpose: Compare account types.

Outcome:
Total number of Savings accounts
Total number of Current accounts
Total balance for each account type
This helps understand account usage patterns.

