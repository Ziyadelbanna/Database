Create Schema phonebook;
Use phonebook;
Create Table Person (
Id varchar(5) Primary Key Not null,
Pname varchar(40),
DOB Date,
Paddress varchar(100)
);
Create Table Tel(
Pid varchar(5),
Tserial varchar(3),
Telno Varchar(15),
Constraint pk primary key(Pid,Tserial),
Constraint fk foreign key (Pid) references Person (Id)) ;
Insert into Person values (1,'john','1970-01-03','5 shore st.' ); 
Insert into Tel values (1,1,'03-2245655' ); 
Insert into Tel values (1,2,'012-6453242' ); 
Insert into Person values (2,'mark','1967-07-08','5 shore st.' ); 
Insert into Tel values (2,1,'03-8644353' ); 
Select Id, Pname, DOB, paddress, Tserial, Telno from Tel , Person where Pid = Id; 
