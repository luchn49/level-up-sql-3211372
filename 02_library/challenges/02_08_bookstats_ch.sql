-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT Published, COUNT(DISTINCT(Title)) AS PubCount 
FROM Books 
GROUP BY Published
ORDER BY PubCount DESC;

SELECT COUNT(Loans.LoanID), Books.Title
FROM Books
JOIN Loans ON Loans.BookID = Books.BookID
GROUP BY Books.Title
ORDER By COUNT(Loans.LoanID) DESC
LIMIT 5;