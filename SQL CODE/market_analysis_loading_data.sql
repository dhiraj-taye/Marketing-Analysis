USE market_analysis;

-- CREATING A TABLE

CREATE TABLE marketing_temp (
campaign_id TEXT,
channel TEXT,
impressions TEXT,
clicks TEXT,
conversions TEXT,
revenue TEXT,
cost TEXT,
date TEXT,
CTR TEXT,
conversion_rate TEXT,
CPC TEXT,
ROI TEXT
);

-- Loading Data to the table 

LOAD DATA INFILE 
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_marketing_campaign_data.csv'
INTO TABLE marketing_temp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Disable safety mode
SET sql_mode='';

-- Changing the data tpyes

ALTER TABLE marketing_campaigns
MODIFY impressions INT,
MODIFY clicks INT,
MODIFY conversions INT,
MODIFY revenue DECIMAL(10,2),
MODIFY cost DECIMAL(10,2),
MODIFY date DATE,
MODIFY CTR DECIMAL(10,5),
MODIFY conversion_rate DECIMAL(10,5),
MODIFY CPC DECIMAL(10,5),
MODIFY ROI DECIMAL(10,5);;