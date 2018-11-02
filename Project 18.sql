--Ruben Morales Jr
--Project 18
--MIS 315

USE MIS315ClassSectionsExample

--1.Insert yourself into the Person table. Use your firstName, lastName, and your UNCW userName.
--Leave the ID blank - it will be filled in with a unique number by the database.

INSERT
INTO   Person
       (firstName,
	   lastName,
	   userName)
VALUES ('Ruben',
       'Morales Jr',
	   'rm6839')

select*
from Person

--PersonID = 1929 For Ruben Morales Jr

--2.Insert yourself into the Student table. Find your Person.ID (using a SELECT statement?). 
--Insert your personID and the year you entered UNCW.

INSERT
INTO   Student
       (ID,
       yearOfUniversityEntry)
VALUES ('1929',
       '2016')
       
select*
from Student

--3.Insert yourself into the ClassMember table as a member of the Spring 2017 MIS315 class.
--Use your Student.personID, and figure out the correct ClassSection by running this query:

INSERT
INTO   ClassMember
       (studentID,
       classSectionID)
VALUES ('1929',
       '1743')
       
select*
from ClassMember

--4.Choose another class that you are enrolled in this semester. Make sure this class does not yet exist in the ClassSection table. 
--Insert a record for that class (with the appropriate instructor), and insert yourself into the ClassMember table as a member of the class.
--Make sure that all necessary records are in the necessary tables. This is likely to require multiple statements. 
--For example, suppose you are enrolled in ACG203.002 right now. You may have to INSERT a record in Department for the Accounting and 
--Business Law department, then a record in Subject for ACG, then a record in Course for ACG203, 
--then a record in Person and Instructor for the instructor, then a record into ClassSection for ACG203.002, then insert yourself. 
--At a minimum, you should have an INSERT into the ClassSection table, and an INSERT into the ClassMember table.


--add professor on instructor table
INSERT 
INTO   Instructor
       (ID,
       departmentID)
VALUES ('73',
       '79')
--professor id is 73

select*
from Instructor
where ID = '73'

--add class information to class section
INSERT
INTO ClassSection
     (courseID,
     termID,
     sectionNumber,
     instructorID)
VALUES ('102',
       '86',
       '004',
       '73')
       
select*
from ClassSection
where instructorID = '73'

--adding myself into the class
INSERT
INTO   ClassMember
       (studentID,
       classSectionID)
VALUES ('1929',
       '1761')
       
select*
from ClassMember
where studentID = '1929'

