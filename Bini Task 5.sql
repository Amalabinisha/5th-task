
use task_5;
create table Patient(
Patient_ID int primary key,
Patient_Name varchar(300),
Age int,
City varchar(500)
);

create table Appointment(
Appointment_ID int,
Patient_ID int primary key,
Doctor_Name varchar(500),
Date date,
foreign key (Patient_ID) references Patient(Patient_ID)
);

insert into Patient values(101,'Banu priya',34,'Karur');
insert into Patient values(102,'Saravanan',54,'Theni');
insert into Patient values(103,'Komathi',19,'Madurai');
insert into Patient values(104,'Priya',23,'Karur');
insert into Patient values(105,'Malar',45,'Trichy');


insert into Appointment values(1021,101,'Dr.Siva','2025-01-15');
insert into Appointment values(1024,104,'Dr.Ram','2025-02-19');
insert into Appointment values(1023,103,'Dr.Muthu','2025-04-23');
insert into Appointment values(1022,102,'Dr.Sankar','2025-05-26');

select * from Patient;
select* from Appointment;

select * from Patient inner join Appointment on Patient.Patient_ID=Appointment.Patient_ID;

select * from Patient left join Appointment on Patient.Patient_ID=Appointment.Patient_ID;

select * from Patient right join Appointment on Patient.Patient_ID=Appointment.Patient_ID;

-- Method 1: Using FULL JOIN
select * from Patient full join Appointment on Patient.Patient_ID = Appointment.Patient_ID;

-- Method 2: Using LEFT JOIN and RIGHT JOIN with UNION
select * from Patient left join Appointment on Patient.Patient_ID = Appointment.Patient_ID
union
select * from Patient right join Appointment on Patient.Patient_ID = Appointment.Patient_ID;
