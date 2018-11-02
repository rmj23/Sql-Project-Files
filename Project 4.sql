-- Ruben Morales Jr
-- Project 4
-- MIS 315

USE ReferenceDB

-- 1.Show the lastname, first initial, and email of all men. Order by lastname. Use the LEFT() function for the first initial.

SELECT   lastName,
         LEFT(firstName,1) AS [first initial],
         email
FROM     Person
ORDER BY lastName

-- 2.Show the lastname, email, location of '@' in the email, number of characters in the email, and the host name of the email (part to the right of the @). Use the CHARINDEX(), LEN(), and RIGHT() functions.

SELECT   lastName,
         email,
         CHARINDEX( '@', email ),
         LEN      ( email ),
         RIGHT    ( email,( LEN( email ) - CHARINDEX( '@', email ) ) )
FROM     Person

-- 3.Show the lastname, weight, weight/7.0 in the first three columns. In the fourth column, convert weight to an int. Use the CONVERT() function. In the final column show weightAsInt/7. This last column will be integer division, and should have no decimal points.

SELECT   lastName,
         weight,
         weight / 7.0,
         CONVERT( int, weight ),
        (CONVERT( int,weight ) / 7 ) AS [Int/7]
FROM     Person

-- 4.Show the lastname, firstname, and year of birth for everyone. Use DATEPART().

SELECT   lastName,
         firstName,
         DATEPART(yy,dateOfBirth)
FROM     Person

-- 5.Show the lastname, firstname, dateOfBirth, today's date, and the estimated age in years of everyone using DATEDIFF().

SELECT   lastName,
         firstName,
         dateOfBirth,
         GETDATE(),
         DATEDIFF(YEAR, dateOfBirth, GETDATE())
FROM     Person

-- 6.Show the lastname, firstname, of everyone, and  the number of months since the lastupdate of the record, using DATEDIFF().

SELECT   lastName,
         firstName,
         DATEDIFF(MONTH, lastUpdateDate, GETDATE())
FROM     Person

-- 7.Show the lastname and firstname of everyone, then their dateOf Birth, the day of the week of their dateofbirth, their birthday this year, and the day of the week for their birthday this year. This will use DATEFROMPARTS(), and DATEPART(). 

SELECT   lastname,
         firstname,
         dateOfBirth,
	     DATEPART(weekday,dateOfBirth)    AS [day of week of birth],
	     YEAR(getdate()),
	     MONTH(dateOfBirth),
	     DAY(dateOfBirth),
	     DATEFROMPARTS(YEAR(getdate()),
	                   MONTH(dateOfBirth),
	                   DAY(dateOfBirth))  AS [birthday this year]
FROM     Person
WHERE    DAY(dateOfBirth)   <> 29
 AND     MONTH(dateOfBirth) <> 2

-- 8.Show the lastname and firstname of people who were entered more than 2 years ago.

SELECT   lastName,
         firstName
FROM     Person
WHERE    DATEDIFF(YEAR, entryDate, GETDATE()) > 2

-- 9.Show all DISTINCT salutories.

SELECT   salutory
FROM     Person 
GROUP BY salutory

-- 10.Show the lastname, firstname, and email of all people whose email is NULL. Also show in the same table people whose salutory is blank, i.e., an empty string.

SELECT   lastName,
         firstName,
         email
FROM     Person
WHERE    email = ' '

-- 11.(Bonus!) Show the lastname and firstname of everyone, the lastUpdateDate, the current date, then one year ago from the current date. Then limit the people to only those who have not been updated within a year of today's date. This will use DATEADD(), then a comparison (greater than / less than).

SELECT   lastName,
         firstName,
         lastUpdateDate,
         GETDATE()                    AS [Todays Date],
         DATEADD(YEAR, -1, GETDATE()) AS [Last Years Date]
FROM     Person
WHERE    lastUpdateDate > DATEADD(YEAR, -1, GETDATE())