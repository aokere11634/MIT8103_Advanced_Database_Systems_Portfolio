
-- MIT 8103: Portfolio 5
-- Apex Digital Bank
-- Manual Replication and Consistency Demonstration

-- 1. Verify the database records
SELECT 'customers' AS table_name, COUNT(*) AS record_count
FROM customers
UNION ALL
SELECT 'branches', COUNT(*) FROM branches
UNION ALL
SELECT 'accounts', COUNT(*) FROM accounts
UNION ALL
SELECT 'transactions', COUNT(*) FROM transactions
UNION ALL
SELECT 'customer_documents', COUNT(*) FROM customer_documents;

-- 2. Run on the ORIGINAL database only
-- Demonstrates a change after the replica was created
UPDATE accounts
SET balance = 60000
WHERE account_id = 2001;

-- 3. Verify the original database balance
SELECT account_id, balance
FROM accounts
WHERE account_id = 2001;

-- 4. Run this SELECT separately on the REPLICA
-- to demonstrate that it retains the older balance
SELECT account_id, balance
FROM accounts
WHERE account_id = 2001;
