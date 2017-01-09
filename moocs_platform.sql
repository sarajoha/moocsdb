--moocsDB
--Parent Table


CREATE TABLE Platform (
PlatfId int not null,
Name varchar (225) not null,
MobileApp char(2),

CONSTRAINT CHECK (MobileApp IN('si', 'no')),
CONSTRAINT PlatfPK PRIMARY KEY (PlatfId));