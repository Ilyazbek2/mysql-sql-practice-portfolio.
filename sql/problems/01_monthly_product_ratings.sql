
-- Challenge 1: Monthly Product Ratings
--
-- Calculate the average rating for each product
-- in each month when reviews were submitted.
--
-- Round average ratings to two decimal places.
--
-- Output columns:
-- product_id | mth | avg_stars



-- Solution 1: Monthly Product Ratings

USE sql_practice_portfolio;

SELECT
    p.product_id,
    MONTH(r.submit_date) AS mth,
    ROUND(AVG(r.stars), 2) AS avg_stars
FROM products AS p
JOIN reviews AS r
    ON p.product_id = r.product_id
GROUP BY
    p.product_id,
    MONTH(r.submit_date)
ORDER BY
    p.product_id,
    mth;
