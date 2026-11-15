
-- Query 1: Accounts with high balances
SELECT account_id, customer_id, account_type, balance
FROM accounts
WHERE balance > 100000
ORDER BY balance DESC;

-- Query 2: Customer account details
SELECT
    c.full_name,
    a.account_id,
    a.account_type,
    a.balance
FROM customers AS c
JOIN accounts AS a
    ON c.customer_id = a.customer_id
ORDER BY a.balance DESC;

-- Query 3: Transaction summary
SELECT
    transaction_type,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY transaction_type;

-- Execution plan before indexing
-- Run this before creating the index
EXPLAIN QUERY PLAN
SELECT account_id, customer_id, account_type, balance
FROM accounts
WHERE balance > 100000
ORDER BY balance DESC;

-- Create an index
CREATE INDEX IF NOT EXISTS idx_accounts_balance
ON accounts(balance);

-- Execution plan after indexing
-- Run this after creating the index
EXPLAIN QUERY PLAN
SELECT account_id, customer_id, account_type, balance
FROM accounts
WHERE balance > 100000
ORDER BY balance DESC;
