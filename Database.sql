CREATE TABLE INVENTORY_ITEMS (
  ITEM_ID INTEGER NOT NULL,
  ITEM_NAME VARCHAR(50),
  ITEM_DESCRIPTION VARCHAR(500));
ALTER TABLE INVENTORY_ITEMS ADD PRIMARY KEY (ITEM_ID);

CREATE TABLE STATIONARY_STOCKS (
  STOCK_ID INTEGER NOT NULL,
  AVAILABLE_ITEM_COUNT INTEGER NOT NULL,
  LAST_UPDATED_DATE DATE,
  STOCK_COMMENTS VARCHAR(500),
  ITEM_ID INTEGER NOT NULL,
  UNIT_PRICE NUMERIC(7, 2));
ALTER TABLE STATIONARY_STOCKS ADD PRIMARY KEY (STOCK_ID);

CREATE TABLE PRICING_AUDIT (
  PRICING_AUDIT_ID INTEGER NOT NULL,
  STOCK_ID INTEGER NOT NULL,
  ITEM_ID INTEGER NOT NULL,
  MODIFIED_DATETIME DATE,
  UNIT_PRICE NUMERIC(7, 2));

ALTER TABLE PRICING_AUDIT ADD PRIMARY KEY (PRICING_AUDIT_ID);

CREATE GENERATOR GEN_ITEM_ID;
SET GENERATOR GEN_ITEM_ID TO 0;

CREATE GENERATOR GEN_PRICING_AUDIT_ID;
SET GENERATOR GEN_PRICING_AUDIT_ID TO 0;

CREATE GENERATOR GEN_STOCK_ID;
SET GENERATOR GEN_STOCK_ID TO 0;