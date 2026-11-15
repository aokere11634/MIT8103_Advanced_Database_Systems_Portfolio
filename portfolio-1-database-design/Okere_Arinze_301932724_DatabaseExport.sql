BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "accounts" (
	"account_id"	INTEGER,
	"customer_id"	INTEGER NOT NULL,
	"branch_id"	INTEGER NOT NULL,
	"account_type"	TEXT NOT NULL CHECK("account_type" IN ('Savings', 'Current')),
	"balance"	NUMERIC NOT NULL DEFAULT 0 CHECK("balance" >= 0),
	PRIMARY KEY("account_id"),
	FOREIGN KEY("branch_id") REFERENCES "branches"("branch_id"),
	FOREIGN KEY("customer_id") REFERENCES "customers"("customer_id")
);
CREATE TABLE IF NOT EXISTS "branches" (
	"branch_id"	INTEGER,
	"branch_name"	TEXT NOT NULL,
	"location"	TEXT NOT NULL,
	PRIMARY KEY("branch_id")
);
CREATE TABLE IF NOT EXISTS "customers" (
	"customer_id"	INTEGER,
	"full_name"	TEXT NOT NULL,
	"email"	TEXT NOT NULL UNIQUE,
	"phone_number"	TEXT,
	PRIMARY KEY("customer_id")
);
CREATE TABLE IF NOT EXISTS "transactions" (
	"transaction_id"	INTEGER,
	"account_id"	INTEGER NOT NULL,
	"transaction_type"	TEXT NOT NULL CHECK("transaction_type" IN ('Deposit', 'Withdrawal')),
	"amount"	NUMERIC NOT NULL CHECK("amount" > 0),
	"transaction_date"	TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("transaction_id"),
	FOREIGN KEY("account_id") REFERENCES "accounts"("account_id")
);
INSERT INTO "accounts" VALUES (1001,1,1,'Savings',150000);
INSERT INTO "accounts" VALUES (1002,2,1,'Current',250000);
INSERT INTO "accounts" VALUES (1003,3,2,'Savings',90000);
INSERT INTO "accounts" VALUES (1004,4,3,'Current',320000);
INSERT INTO "accounts" VALUES (1005,5,2,'Savings',175000);
INSERT INTO "branches" VALUES (1,'Apex Lagos Branch','Lagos');
INSERT INTO "branches" VALUES (2,'Apex Abuja Branch','Abuja');
INSERT INTO "branches" VALUES (3,'Apex Port Harcourt Branch','Port Harcourt');
INSERT INTO "customers" VALUES (1,'Daniel Adeyemi','daniel@example.com','08000000001');
INSERT INTO "customers" VALUES (2,'Chioma Okafor','chioma@example.com','08000000002');
INSERT INTO "customers" VALUES (3,'Ibrahim Musa','ibrahim@example.com','08000000003');
INSERT INTO "customers" VALUES (4,'Grace Johnson','grace@example.com','08000000004');
INSERT INTO "customers" VALUES (5,'Tunde Balogun','tunde@example.com','08000000005');
INSERT INTO "transactions" VALUES (1,1001,'Deposit',50000,'2026-11-12 11:41:04');
INSERT INTO "transactions" VALUES (2,1002,'Withdrawal',20000,'2026-11-12 11:41:04');
INSERT INTO "transactions" VALUES (3,1003,'Deposit',30000,'2026-11-12 11:41:04');
INSERT INTO "transactions" VALUES (4,1004,'Withdrawal',40000,'2026-11-12 11:41:04');
INSERT INTO "transactions" VALUES (5,1005,'Deposit',25000,'2026-11-12 11:41:04');
COMMIT;
