
-- Challenge 3: Completed Booking Revenue by City
--
-- Calculate the total revenue from completed bookings
-- for each city.
--
-- Include only bookings with status = 'completed'.
-- Sort total revenue in descending order.
--
-- Output columns:
-- city | total_revenue

USE sql_practice_portfolio;

-- Write your solution here.



-- Solution 3: Completed Booking Revenue by City

USE sql_practice_portfolio;

SELECT
    p.city,
    SUM(b.total_price) AS total_revenue
FROM bookings AS b
JOIN properties AS p
    ON b.property_id = p.property_id
WHERE b.status = 'completed'
GROUP BY p.city
ORDER BY total_revenue DESC;

