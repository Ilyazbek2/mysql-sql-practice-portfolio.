
-- Challenge 5: Time Spent at School
--
-- Calculate the time from the start of lesson 2
-- until the end of lesson 4.
--
-- Use the Timepair table.
-- Return the result as a column named time.
--
-- Output column:
-- time

USE sql_practice_portfolio;

-- Write your solution here.



-- Solution 5: Time Spent at School

USE sql_practice_portfolio;

SELECT TIMEDIFF(
    (SELECT end_pair
     FROM Timepair
     WHERE id = 4),
    (SELECT start_pair
     FROM Timepair
     WHERE id = 2)
) AS time;
