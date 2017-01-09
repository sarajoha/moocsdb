--Child TABLE

CREATE TABLE mooc 
(moocid integer not null, 
 PlatfId integer not null,
 Name varchar(250) not null,
 Weeks integer,
 Certificate char(2),
 Selfpaced char(2) not null,
 Category varchar (100),
 Status varchar (100),
 Modules integer,
 
 CONSTRAINT moocPK PRIMARY KEY (moocid),
 CONSTRAINT PlatfFK FOREIGN KEY (platfId) REFERENCES Platform (PlatfId),
 CONSTRAINT CHECK (selfpaced IN('si', 'no')),
 CONSTRAINT uniqName UNIQUE (Name))
);