--Child table

CREATE TABLE Session (
SessionId int not null,
MoocId int not null,
EndDate date,
StartDate date,

CONSTRAINT SessionPK PRIMARY KEY (SessionId),
CONSTRAINT MoocFK FOREIGN KEY (MoocId) REFERENCES Mooc (MoocId),
CONSTRAINT CHECK(EndDate > StartDate)
);