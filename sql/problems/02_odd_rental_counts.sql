
-- Challenge 2: Rooms Rented an Odd Number of Times
--
-- Find rooms that were rented an odd number of times.
-- Use COUNT(*) AS count for the rental count.
--
-- Output columns:
-- room_id | count


-- Solution 2: Rooms Rented an Odd Number of Times

USE sql_practice_portfolio;

SELECT
    room_id,
    COUNT(*) AS count
FROM room_rentals
GROUP BY room_id
HAVING COUNT(*) % 2 = 1
ORDER BY room_id;
