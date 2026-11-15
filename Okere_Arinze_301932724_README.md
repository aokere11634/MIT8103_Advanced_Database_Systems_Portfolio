# MIT 8103 Advanced Database Systems Portfolio

**Student:** Okere Arinze  
**Student ID:** 301932724  
**Miva email:** a.okere32724@miva.edu.ng  
**Course:** MIT 8103 Advanced Database Systems  
**Case study:** Apex Digital Bank (simulated)

## Case study

Apex Digital Bank is a fictional banking system used consistently across the five portfolio activities. The database stores customers, branches, accounts, transactions and JSON customer documents. It supports customer and account queries, basic transaction operations, integrity checks and demonstrations of advanced database concepts.

## Portfolio folders and evidence

1. **Okere_Arinze_301932724_portfolio_1_database_design/**  
   Relational database design, ER diagram, schema export, constraints and screenshots of example records and tests.
2. **Okere_Arinze_301932724_portfolio_2_query_optimisation/**  
   SQL queries, join and aggregation examples, indexing, execution plans and supporting screenshots.
3. **Okere_Arinze_301932724_portfolio_3_transactions_concurrency/**  
   Screenshots of COMMIT, ROLLBACK, isolation and concurrency/locking exercises.
4. **Okere_Arinze_301932724_portfolio_4_nosql/**  
   JSON document and key-value models, SQLite JSON implementation, explanation and screenshots.
5. **Okere_Arinze_301932724_portfolio_5_distributed_cloud/**  
   A manual SQLite database snapshot, stale-copy demonstration, SQL, explanation and screenshots.

The root file `Okere_Arinze_301932724_BankingDatabase.db` contains the working SQLite banking database. The replica database is in Portfolio 5. Evidence screenshots are in each portfolio's prefixed `evidence` folder.

## Scope and limitations

- Portfolio 4 uses JSON files and SQLite JSON functions to demonstrate document-like storage; it does **not** deploy a dedicated NoSQL database server.
- Portfolio 5 compares a working SQLite database with a manually copied snapshot to demonstrate consistency limitations; it does **not** implement automatic replication, cloud deployment, sharding or failover.
- Some screenshots record deliberately attempted constraint violations or errors during testing and should be interpreted as test evidence, not successful operations.
- The query dataset is small; execution plans illustrate the effects of indexing but do not establish production-scale performance gains.

## Assessment submission

The final 2–3-page portfolio summary is submitted separately using the course's designated Google Form. This public GitHub repository contains the technical work and supporting evidence for assessor review.

## AI-use note

ChatGPT was used as a learning aid to explain database concepts, guide troubleshooting, and help organise documentation. The SQL and database exercises were carried out and reviewed in DB Browser for SQLite. The final summary includes an AI-use declaration.
