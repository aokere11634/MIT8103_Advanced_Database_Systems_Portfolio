
-- Portfolio 4: JSON Document Implementation
-- Case Study: Apex Digital Bank

-- Create table for JSON documents
CREATE TABLE IF NOT EXISTS customer_documents (
    document_id INTEGER PRIMARY KEY,
    document_data TEXT NOT NULL
        CHECK (json_valid(document_data))
);

-- Insert customer document
INSERT OR REPLACE INTO customer_documents
(document_id, document_data)
VALUES (
    1,
    '{
        "customer_id": 1,
        "full_name": "Daniel Adeyemi",
        "email": "daniel@example.com",
        "accounts": [
            {
                "account_id": 1001,
                "account_type": "Savings",
                "balance": 150000
            }
        ]
    }'
);

-- Retrieve customer information
SELECT
    json_extract(document_data, '$.full_name')
        AS customer_name,
    json_extract(document_data, '$.email')
        AS email,
    json_extract(document_data, '$.accounts[0].balance')
        AS account_balance
FROM customer_documents
WHERE document_id = 1;
