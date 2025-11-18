create table patient(patient_id int  auto_increment primary key, first_name varchar(25), last_name varchar(25), age int, gender varchar(25), city varchar(25));

insert into patient(first_name, last_name, age, gender, city)values('Aarav', 'Sharma', 30, 'Male', 'Delhi'); 
insert into patient(first_name, last_name, age, gender, city)values('Diya', 'Singh', 25, 'Female', 'Mumbai'); 
insert into patient(first_name, last_name, age, gender, city)values('Rahul', 'Verma', 40, 'Male', 'Chennai'); 
insert into patient(first_name, last_name, age, gender, city)values('Sneha', 'Nair', 32, 'Female', 'Kochi'); 
insert into patient(first_name, last_name, age, gender, city)values('Mukesh', 'Gupta', 55, 'Male', 'Kolkata'); 

create table doctor(doctor_id int  auto_increment primary key, name varchar(25), specialization varchar(25), phone varchar(25));

insert into doctor(name, specialization, phone)values('Dr. Anil Kumar', 'Cardiologist', '9876543210');
insert into doctor(name, specialization, phone)values('Dr. Priya Rao', 'Neurologist', '9988776655');
insert into doctor(name, specialization, phone)values('Dr. John Mathew ', 'Orthopedic', '9876001234');
insert into doctor(name, specialization, phone)values('Dr.  Neha Sharma', 'Pediatrician', '9123456780');
insert into doctor(name, specialization, phone)values('Dr. Manoj Varma', 'Surgeon', '9090909090');

create table department(department_id int  auto_increment primary key, department_name varchar(25));

insert into department(department_name)values('Cardiology');
insert into department(department_name)values('Neurology ');
insert into department(department_name)values('Orthopedics ');
insert into department(department_name)values('Pediatrics ');
insert into department(department_name)values('General Surgery ');

create table appointment(appointment_id int  auto_increment primary key, 
patient_id int,foreign key(patient_id) references patient(patient_id) ,
doctor_id int,foreign key(doctor_id) references doctor(doctor_id) ,
appointment_date date, status varchar(25));

insert into appointment(patient_id, doctor_id, appointment_date, status)values(1, 1, '2025-10-20', 'Completed');
insert into appointment(patient_id, doctor_id, appointment_date, status)values(2, 2, '2025-10-21', 'Scheduled');
insert into appointment(patient_id, doctor_id, appointment_date, status)values(3, 3, '2025-10-22', 'Completed');
insert into appointment(patient_id, doctor_id, appointment_date, status)values(4, 4, '2025-10-25', 'Scheduled');
insert into appointment(patient_id, doctor_id, appointment_date, status)values(5, 5, '2025-10-18', 'Cancelled');

create table room(room_id int primary key auto_increment, room_type varchar(25), price_per_day int);

insert into room(room_type, price_per_day)values('General Ward',1500);
insert into room(room_type, price_per_day)values('Private Room',3000);
insert into room(room_type, price_per_day)values('ICU',7500);
insert into room(room_type, price_per_day)values('General Ward',1500);
insert into room(room_type, price_per_day)values('ICU',7500);
