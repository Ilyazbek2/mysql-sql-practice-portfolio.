
-- Challenge 4: Passengers with the Longest Full Name
--
-- Return passengers with the longest name.
-- Spaces, hyphens, and periods count as characters.
-- Return all passengers tied for the maximum length.
--
-- Output column:
-- namt


-- Solution 4: Passengers with the Longest Full Name

USE sql_practice_portfolio;

SELECT name
FROM passengers
WHERE CHAR_LENGTH(name) = (
    SELECT MAX(CHAR_LENGTH(name))
    FROM passengers
);
