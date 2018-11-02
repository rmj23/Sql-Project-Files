--Ruben Morales Jr
--Project 17
--MIS 315

USE FMIS315rm6839DB

--1. Insert a new person whose name is Margaret Smith. Here nickname is Maggie. Leave all the other fields empty. 
--Use the safe form of the INSERT statement, where you specify every field that you will provide a value for. 

INSERT
INTO   tblPerson
       (tblPerson.FirstName,
	    tblPerson.LastName,
	    tblPerson.Nickname)
VALUES ('Margaret',
        'Smith',
	    'Maggie')
--PersonID = 10000 For Margaret Smith
select*
from tblPerson

--2. Update Maggie's cell phone number to 123-456-1234. Don't change any other field. 
--Make sure you only change Maggie's cell phone by having the right PersonID=? in the WHERE clause. 

UPDATE tblPerson
SET    PhoneCell = '123-456-1234'
WHERE  PersonID  = 10000


--3. Insert a new person whose name is Daniel Jones. His nickname is Dan. Leave all the other fields empty.
--Use the safe form of the INSERT statement, where you specify every field that you will provide a value for. 

INSERT
INTO   tblPerson
       (FirstName,
	    LastName,
	    Nickname)
VALUES ('Daniel',
        'Jones',
		'Dan')
--PersonID = 10001 For Daniel Jones
select*
from tblPerson

--4. Update Dan's nickname to Danny. Don't change any other field. 
--Make sure you only change Dan's nickname by having the right PersonID=? in the WHERE clause. 

UPDATE tblPerson
SET    Nickname = 'Danny'
WHERE  PersonID = 10001

--5. Give Maggie the Student/Alumni role. You do this by inserting a record into the tblPersonRoles table. 
--Use Maggie's perID. Use roleID of 1 (refer to validPersonRoles to see that this the Student/Alumni role.) 

INSERT
INTO   tblPersonRoles
       (perID,
	    roleID)
VALUES ('10000',
        '1')

select*
from tblPersonRoles

--6. Give Maggie the Grad Asst role (yes, Maggie can have two roles). Look up the right roleID for Grad Asst in the validPersonRoles table. 

select*
from validPersonRoles

INSERT
INTO   tblPersonRoles
       (perID,
	    roleID)
VALUES ('10000',
        '89')

select*
from tblPersonRoles

--7. Delete Dan from the database. Make sure you only delete Dan's record by having the right PersonID=? in the WHERE clause. 

DELETE
FROM   tblPerson
WHERE  PersonID = '10001'

--8. We need to put Maggie's mother into the system. This will take two separate operations: and insert into tblPerson, 
--and an insert into tblPersonRoles. Write both statements. Maggie's mom's name is Karen Smith and her nickname is Kay.

INSERT
INTO   tblPerson
       (FirstName,
	    LastName,
		Nickname)
VALUES ('Karen',
        'Smith',
		 'Kay')
--PersonID = 10002 For Karen Smith
select*
from tblPerson

select*
from validPersonRoles

INSERT
INTO   tblPersonRoles
       (perID,
	    roleID)
VALUES ('10002',
        '21')

select*
from tblPersonRoles

--9. Enter a new person named David Johnson with the nickname of Dave and phone number 765-867-5309 who is a CEN mentor and
--a Business Week presenter. Make sure to give the proper roles to David.

INSERT
INTO   tblPerson
       (FirstName,
	   LastName,
	   Nickname,
	   PhoneCell)
VALUES ('David',
        'Johnson',
		'Dave',
		'765-867-5309')
--PersonID = 10003 For David Johnson
select*
from tblPerson

select*
from validPersonRoles

INSERT
INTO   tblPersonRoles
       (perID,
	    roleID)
VALUES ('10003',
        '31')

INSERT
INTO   tblPersonRoles
       (perID,
	    roleID)
VALUES ('10003',
        '46')

select*
from tblPersonRoles

--10. Enter a new person named Diane Kincaid with the nickname DeeDee. She is an ISOM advisory board member, a CEN mentor, 
--a Business Week presenter, and a Guest Lecturer.

INSERT
INTO   tblPerson
       (FirstName,
	   LastName,
	   Nickname)
VALUES ('Diane',
        'Kincaid',
		'DeeDee')
--PersonID = 10004 For Diane Kincaid
select*
from tblPerson

select*
from validPersonRoles

INSERT
INTO   tblPersonRoles
       (perID,
	    roleID)
VALUES ('10004',
        '26')

INSERT
INTO   tblPersonRoles
       (perID,
	    roleID)
VALUES ('10004',
        '31')

INSERT
INTO   tblPersonRoles
       (perID,
	    roleID)
VALUES ('10004',
        '46')

INSERT
INTO   tblPersonRoles
       (perID,
	    roleID)
VALUES ('10004',
        '37')

select*
from tblPersonRoles