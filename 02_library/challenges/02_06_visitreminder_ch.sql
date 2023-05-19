-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT COUNT(Loans.ReturnedDate), Patrons.FirstName, Patrons.LastName, Patrons.Email
FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
GROUP BY Loans.PatronID
ORDER BY COUNT(Loans.ReturnedDate);