
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
