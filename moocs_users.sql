--moocsDB
--Parent table

CREATE TABLE User (
UserId integer not null,
FirstName varchar (100) not null,
LastName varchar (100) not null,

CONSTRAINT UserPK PRIMARY KEY (UserId));