USE market_analysis;


-- TOTAL MARKETING PERFORMANCE

SELECT
SUM(impressions) AS Total_Impressions,
SUM(clicks) AS Total_clicks,
SUM(conversions) AS Total_converisons,
SUM(revenue) AS Total_Revenue,
SUM(cost) AS Total_cost
FROM marketing_campaigns;

-- BEST PERFORMING MARKETING CHANNEL

SELECT
channel,
ROUND(SUM(revenue),2) AS Total_revenue,
ROUND(SUM(cost),2) AS Total_Cost,
ROUND(SUM(ROI),2) AS Total_ROI
FROM marketing_campaigns
GROUP BY channel
ORDER BY Total_revenue DESC;

-- Top 10 Campaigns by ROI

SELECT
campaign_id,
channel,
revenue,
cost,
roi
FROM marketing_campaigns
ORDER BY ROI DESC
LIMIT 10;

-- Channel Performance by Conversion Rate

SELECT 
channel,
AVG(conversion_rate) AS avg_conversion_rate
FROM marketing_campaigns
GROUP BY channel
ORDER BY avg_conversion_rate DESC;