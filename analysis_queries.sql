-- 1. Total listings by city
SELECT city, COUNT(*) AS total_listings
FROM airbnb_data
GROUP BY city
ORDER BY total_listings DESC;

-- 2. averaging by city
SELECT city, ROUND(AVG(price), 2) AS avg_price
FROM airbnb_data
GROUP BY city
ORDER BY avg_price DESC;

-- 3. Room type 
SELECT room_type, COUNT(*) AS listings
FROM airbnb_data
GROUP BY room_type
ORDER BY listings DESC;

-- 4. Top 10 hosts by total listings
SELECT host_name, host_total_listings_count, COUNT(*) AS listings_uploaded
FROM airbnb_data
GROUP BY host_name, host_total_listings_count
ORDER BY host_total_listings_count DESC
LIMIT 10;

-- 5. Avg price vs reviews city wise 
SELECT city,
       ROUND(AVG(price),2) AS avg_price,
       ROUND(AVG(total_reviewers_number),2) AS avg_reviews
FROM airbnb_data
GROUP BY city
ORDER BY avg_price DESC;

-- 6. revenue formula
SELECT city,
       ROUND(SUM(price * accommodates), 2) AS est_revenue
FROM airbnb_data
GROUP BY city
ORDER BY est_revenue DESC;

-- 7. Avg price by host certification
SELECT host_certification,
       COUNT(*) AS hosts,
       ROUND(AVG(price),2) AS avg_price
FROM airbnb_data
GROUP BY host_certification
ORDER BY avg_price DESC;

-- 8. Host response rate vs price
SELECT ROUND(AVG(host_response_rate),2) AS avg_response,
       ROUND(AVG(price),2) AS avg_price
FROM airbnb_data;
