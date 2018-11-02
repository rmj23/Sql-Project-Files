-- Ruben Morales Jr
-- Project 2
-- MIS 315

USE ReferenceDB

-- 1.Select the last name and firstname of all people who weigh less than 125 pounds. Order By lastname.

SELECT   lastName,
         firstName
FROM     Person
WHERE    weight<125.0
ORDER BY lastName

-- 2.Select the last and first name of all people who more than 2280 ounces (16 ounces per pound). Also show in the last column their weight in ounces. Order by weight desc. 

SELECT   lastName,
         firstName,
		 weight*16.0 AS [weight in ounces]
FROM     Person
WHERE    weight*16.0>2280.0
ORDER BY weight DESC

-- 3.Select the email address of all people with the last name of 'Smith'. Order by email address.

SELECT   email,
FROM     Person
WHERE    lastName='Smith'
ORDER BY email

-- 4.Select the first name, last name, and email address of all men with the lastName of 'Miller'. Order by last name.

SELECT   firstName,
         lastName,
	     email
FROM     Person
WHERE    gender='M'
AND      lastName='Miller'
ORDER BY lastName

-- 5.Select the ID, firstname, and lastname of all males who weigh more than 200 pounds, and all women who weigh more than 160 pounds. Order by weight ascending.

SELECT   ID,
         firstName,
	     lastName
FROM     Person
WHERE    gender='M'
AND      weight>200.0
AND      gender='F'
AND      weight>160.00
ORDER BY weight ASC

-- 6.Select the ID, firstname, and lastname of all people whose email address ends in '.com'. Use the LIKE operator. Order by ID.

-- 7.Select the ID, firstname, and lastname of all people whose lastname contains the letter k. Use the LIKE operator. Order by lastname.

-- 8.Select the ID, firstname, and lastname of all people whose salutory is one of "Mr", "Prof" or "Dr". Also include variations of the salutories that end in a period. Use the IN operator for this. Order by ID.

-- 9.Select the ID, firstname, and lastname of all people whose salutory is NOT one of "Mr", "Prof" or "Dr". Also include variations of the salutories that end in a period. Use the NOT IN operator. Order by ID.

-- 10.Select the ID, firstname, lastname, and email for all men who have a gmail address and whose lastname is one of Smith, Johnson, or Brown. Order by last updated date, ascending.

