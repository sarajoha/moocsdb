--Child table

CREATE TABLE Enrollment (
UserId int,
MoocId int,

CONSTRAINT EnrollmentPK PRIMARY KEY (UserId, MoocId),
CONSTRAINT UserFK1 FOREIGN KEY (UserId) References Users (UserId),
CONSTRAINT MoocFK1 FOREIGN KEY (MoocId) References Mooc (MoocId)
);