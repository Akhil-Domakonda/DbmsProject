 create database FALLSEM2PROJECT;
use FALLSEM2PROJECT;

create table airlines (
airline_id varchar(10) primary key not null,
ailine_name varchar(30),
fleet_size int
);

create table airplane (
flight_code varchar(10) primary key not null,
flight_model varchar(20),
owned_by varchar(10),
foreign key(owned_by) references airlines(airline_id),
size int,
fuel_tank int,
max_weight int
);

create table passenger_details (
passport_id varchar(20) primary key not null,
full_name varchar(20),
dob date,
weight_of_luggage float,
part_of_family boolean,
gender varchar(4)
);

create table department (
department_id varchar(20) primary key,
department_name varchar(20),
department_type varchar(20)
);

create table staff_info (
sid varchar(20) primary key,
full_name varchar(20),
salary int,
reporting_time time,
date_of_birth date,
joining_date date,
gender varchar(20),
department_id varchar(20),
foreign key(department_id) references department(department_id)
);

create table flight (
flight_number varchar(20) primary key,
foreign key(flight_number) references airplane(flight_code),
flight_type varchar(20),
captain_id varchar(20),
copilot_id varchar(20),
head_flight_attendant_id varchar(20)
);

create table passenger_flight (
passport_id varchar(20) primary key,
foreign key(passport_id) references passenger_details(passport_id),
flight_number varchar(20),
foreign key(flight_number) references flight(flight_number)
);

create table departures (
flight_id varchar(20) primary key,
foreign key(flight_id) references flight(flight_number),
departing_to varchar(20)
);

create table arrivals (
flight_id varchar(20) primary key,
foreign key(flight_id) references flight(flight_number),
arriving_from varchar(20)
);



-- inserting data into airlines --

insert into airlines(airline_id, ailine_name, fleet_size) values ('IGO11', 'Indigo', 5);
insert into airlines(airline_id, ailine_name, fleet_size) values ('AIA12', 'Air India', 5);
insert into airlines(airline_id, ailine_name, fleet_size) values ('ERS13', 'Emirates', 5);
insert into airlines(airline_id, ailine_name, fleet_size) values ('EHD14', 'Etihad', 5);
insert into airlines(airline_id, ailine_name, fleet_size) values ('QAN15', 'Qantas', 5);

-- inserting data into airplanes --

-- for Indigo --
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('6E111', 'Boeing', 'IGO11', 1000, 1500, 1000);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('6E112', 'Airbus', 'IGO11', 1500, 1700, 1400);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('6E113', 'Boeing', 'IGO11', 1060, 1500, 1300);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('6E114', 'Airbus', 'IGO11', 1000, 1500, 1200);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('6E115', 'Airbus', 'IGO11', 1030, 1200, 1900);

-- for Air India --
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('5A111', 'Boeing', 'AIA12', 1000, 1500, 1000);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('5A112', 'Airbus', 'AIA12', 1500, 1700, 1400);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('5A113', 'Boeing', 'AIA12', 1060, 1500, 1300);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('5A114', 'Airbus', 'AIA12', 1000, 1500, 1200);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('5A115', 'Airbus', 'AIA12', 1030, 1200, 1900);

-- for EMIRATES --
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('7E111', 'Boeing', 'ERS13', 1000, 1500, 1000);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('7E112', 'Airbus', 'ERS13', 1500, 1700, 1400);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('7E113', 'Boeing', 'ERS13', 1060, 1500, 1300);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('7E114', 'Airbus', 'ERS13', 1000, 1500, 1200);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('7E115', 'Airbus', 'ERS13', 1030, 1200, 1900);

-- for ETIHAD --
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('4D111', 'Boeing', 'EHD14', 1000, 1500, 1000);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('4D112', 'Airbus', 'EHD14', 1500, 1700, 1400);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('4D113', 'Boeing', 'EHD14', 1060, 1500, 1300);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('4D114', 'Airbus', 'EHD14', 1000, 1500, 1200);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('4D115', 'Airbus', 'EHD14', 1030, 1200, 1900);

-- for QANTAS --
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('9Q111', 'Boeing', 'QAN15', 1000, 1500, 1000);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('9Q112', 'Airbus', 'QAN15', 1500, 1700, 1400);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('9Q113', 'Boeing', 'QAN15', 1060, 1500, 1300);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('9Q114', 'Airbus', 'QAN15', 1000, 1500, 1200);
insert into airplane(flight_code, flight_model, owned_by, size, fuel_tank, max_weight) values ('9Q115', 'Airbus', 'QAN15', 1030, 1200, 1900);

-- inserting into passenger_details --
-- country codes for passport numbers:
-- India: IN
-- Afghanistan: AF
-- Egypt: EG
-- Bangladesh: BA

insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('IN111', 'Sanna Goddard', '1980-01-01', 15, 1, 'F');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('AF121', 'Esa Finnegan', '1983-11-21', 10, 1, 'F');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('BA131', 'Nellie Rios', '1990-08-07', 5, 1, 'M');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('EG141', 'Susanna Watt', '1990-12-01', 13, 0, 'F');  

insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('IN112', 'Azra Robson', '1999-11-23', 12, 1, 'F');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('AF122', 'Maizie Simmons', '1985-04-21', 6, 1, 'F');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('BA132', 'Blair Bowden', '1990-08-07', 7, 0, 'M');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('EG142', 'Ethan Jacobs', '1990-12-01', 13, 0, 'M');  

insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('IN113', 'Riaz O Ryan', '1999-11-23', 15, 1, 'T');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('AF123', 'Tanya Pemberton', '1986-06-29', 2, 1, 'F');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('BA133', 'Hester Prentice', '1997-03-17', 10, 0, 'M');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('EG143', 'Tilly Hicks', '2007-08-14', 3, 0, 'F');  

insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('IN114', 'Terrell Redman', '2000-01-13', 15, 1, 'M');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('AF124', 'Sorcha Horne', '1986-06-24', 2, 1, 'F');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('BA134', 'Robbie Talley', '1990-03-17', 10, 1, 'M');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('EG144', 'Kathy Talley', '2017-08-14', 3, 1, 'F'); 

insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('IN115', 'Carla Austin', '2001-01-13', 15, 1, 'F');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('AF125', 'Anwar Kirkpatrick', '1985-08-14', 2, 0, 'M');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('BA135', 'Wade Edge', '1986-04-19', 10, 0, 'M');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('EG145', 'Lily-May Santos', '2000-03-14', 3, 0, 'F'); 

insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('IN116', 'Harry Wolf', '1990-01-17', 12, 0, 'M');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('AF126', 'Ayush Ramos', '1985-06-24', 10, 0, 'M');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('BA136', 'Brodie Wharton', '1986-05-20', 11, 0, 'M');  
insert into passenger_details(passport_id, full_name, dob, weight_of_luggage, part_of_family, gender) values ('EG146', 'Ihsan Searle', '2001-01-09', 15, 0, 'F'); 

-- inserting into department --

insert into department(department_id, department_name, department_type) values ('DP01', 'Captain', 'Air');
insert into department(department_id, department_name, department_type) values ('DP02', 'Co Pilot', 'Air');
insert into department(department_id, department_name, department_type) values ('DP03', 'Flight Attnedant', 'Air');
insert into department(department_id, department_name, department_type) values ('DP04', 'Security', 'Ground');

insert into department(department_id, department_name, department_type) values ('DP05', 'Management', 'Ground');
insert into department(department_id, department_name, department_type) values ('DP06', 'On Tarmac', 'Ground');
insert into department(department_id, department_name, department_type) values ('DP07', 'Air Traffic Control', 'Ground');
insert into department(department_id, department_name, department_type) values ('DP08', 'Ticket Counter', 'Ground');

-- inserting into staff info --

-- pilots --
-- INDIGO captains --
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('3SPTIGO001', 'Ophelia Finney', 1000000, '08:30:00', '1980-02-22', '2005-01-01', 'F', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTIGO002', 'Qasim Banks', 1500000, '09:30:00', '1970-12-02', '2005-01-01', 'M', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTIGO003', 'Dario Nicholson', 2000000, '20:30:00', '1973-04-14', '2005-01-01', 'F', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTIGO004', 'Inaya Newton', 1700000, '12:30:00', '1981-10-20', '2005-01-01', 'M', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('3SPTIGO005', 'Murphy Munoz', 500000, '09:00:00', '1990-10-17', '2005-01-01', 'M', 'DP01');

-- INDIGO copilots --
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SPTIGO001', 'Aida Mohamed', 100000, '08:30:00', '1990-02-22', '2005-01-01', 'F', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTIGO002', 'Matthias Lowery', 150000, '09:30:00', '1980-12-02', '2005-01-01', 'M', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTIGO003', 'Tobey Fleming', 200000, '20:30:00', '1983-04-14', '2005-01-01', 'M', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTIGO004', 'Haris Sadler', 170000, '12:30:00', '1991-10-20', '2005-01-01', 'M', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SPTIGO005', 'Tea Acosta', 50000, '09:00:00', '1990-01-15', '2005-01-01', 'F', 'DP02');

-- AIR INDIA captains --
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('3SPTAIA001', 'Vivek Dominguez', 1000000, '08:30:00', '1980-01-22', '2004-01-01', 'M', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTAIA002', 'Maximilian Campos', 1500000, '09:30:00', '1970-11-02', '2004-01-01', 'M', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTAIA003', 'Chenai Shea', 2000000, '20:30:00', '1973-03-14', '2004-01-01', 'F', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTAIA004', 'Kylan Walmsley', 1700000, '12:30:00', '1981-09-20', '2004-01-01', 'M', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('3SPTAIA005', 'Korben Goodwin', 500000, '09:00:00', '1990-09-17', '2004-01-01', 'F', 'DP01');

-- AIR INDIA copilots --
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SPTAIA001', 'Uzair Mcguire', 100000, '08:30:00', '1990-01-22', '2004-01-01', 'M', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTAIA002', 'Sandra Palacios', 150000, '09:30:00', '1980-11-02', '2004-01-01', 'F', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTAIA003', 'Randy Taylor', 200000, '20:30:00', '1983-02-14', '2004-01-01', 'M', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTAIA004', 'Ceara Rich', 170000, '12:30:00', '1991-09-20', '2004-01-01', 'T', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SPTAIA005', 'Rees Hubbard', 50000, '09:00:00', '1989-12-15', '2004-01-01', 'F', 'DP02');

-- EMIRATES captains --
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('3SPTERS001', 'Gregor Anderson', 1000000, '08:30:00', '1980-01-25', '2004-01-01', 'M', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTERS002', 'Indigo Blackwell', 1500000, '09:30:00', '1970-11-05', '2004-01-01', 'F', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTERS003', 'Hugo Derrick', 2000000, '20:30:00', '1973-03-19', '2004-01-01', 'T', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTERS004', 'Kristen Person', 1700000, '12:30:00', '1981-09-25', '2004-01-01', 'F', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('3SPTERS005', 'Tierney Tait', 500000, '09:00:00', '1990-09-19', '2004-01-01', 'F', 'DP01');

-- EMIRATES copilots --
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SPTERS001', 'Elle Raymond', 100000, '08:30:00', '1990-01-29', '2004-01-01', 'F', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTERS002', 'Danial Finch', 150000, '09:30:00', '1980-11-01', '2004-01-01', 'M', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTERS003', 'Whitney Christensen', 200000, '20:30:00', '1993-02-14', '2004-01-01', 'F', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTERS004', 'Fabien Miller', 170000, '12:30:00', '1991-09-10', '2004-01-01', 'M', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SPTERS005', 'Elly Whiteley', 50000, '09:00:00', '1989-12-14', '2004-01-01', 'F', 'DP02');

-- ETIHAD captains --
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('3SPTEHD001', 'Meadow Gutierrez', 1000000, '08:30:00', '1980-05-25', '2004-01-01', 'F', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTEHD002', 'Nawal Beck', 1500000, '09:30:00', '1970-12-05', '2004-01-01', 'M', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTEHD003', 'Eleanor Matthams', 2000000, '20:30:00', '1973-06-19', '2004-01-01', 'T', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('4SPTEHD004', 'Gene Gardiner', 1700000, '12:30:00', '1981-07-25', '2004-01-01', 'F', 'DP01');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('3SPTEHD005', 'Ianis Rivas', 500000, '09:00:00', '1990-02-19', '2004-01-01', 'M', 'DP01');

-- ETIHAD copilots --
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SPTEHD001', 'William North', 100000, '08:30:00', '1990-11-29', '2004-01-01', 'M', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTEHD002', 'Elle-May Healy', 150000, '09:30:00', '1980-03-01', '2004-01-01', 'F', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTEHD003', 'Ruari Wu', 200000, '20:30:00', '1993-07-14', '2004-01-01', 'F', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SPTEHD004', 'Kelise Fulton', 170000, '12:30:00', '1991-03-10', '2004-01-01', 'F', 'DP02');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SPTEHD005', 'Angharad Atkinson', 50000, '09:00:00', '1989-02-14', '2004-01-01', 'M', 'DP02');

-- common flight attendants --

insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SFACOM001', 'Taran Barker', 100000, '08:30:00', '1990-11-29', '2004-01-01', 'M', 'DP03');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SFACOM002', 'Alejandro Pratt', 150000, '09:30:00', '1990-03-01', '2004-01-01', 'F', 'DP03');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SFACOM003', 'Shelbie Clarke', 200000, '20:30:00', '1993-07-14', '2004-01-01', 'F', 'DP03');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SFACOM004', 'Wendy Atkinson', 170000, '12:30:00', '1991-03-10', '2004-01-01', 'F', 'DP03');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SFACOM005', 'Steffan Shepard', 50000, '09:00:00', '1994-02-14', '2004-01-01', 'M', 'DP03');

insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SFACOM006', 'Leyton Owen', 100000, '08:30:00', '1990-06-19', '2004-01-01', 'M', 'DP03');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SFACOM007', 'Carlie Mcloughlin', 150000, '09:30:00', '1990-07-21', '2004-01-01', 'F', 'DP03');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SFACOM008', 'Mahima Delgado', 200000, '20:30:00', '1993-09-18', '2004-01-01', 'F', 'DP03');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('2SFACOM009', 'Ellesha Gross', 170000, '12:30:00', '1991-02-16', '2004-01-01', 'F', 'DP03');
insert into staff_info(sid, full_name, salary, reporting_time, date_of_birth, joining_date, gender, department_id) values ('1SFACOM010', 'Atlas Goulding', 50000, '09:00:00', '1994-12-04', '2004-01-01', 'F', 'DP03');

-- flights --

insert into flight(flight_number, flight_type, captain_id, copilot_id, head_flight_attendant_id) values ('6E111', 'Connecting','3SPTIGO001', '1SPTIGO001', '2SFACOM003');
insert into flight(flight_number, flight_type, captain_id, copilot_id, head_flight_attendant_id) values ('6E112', 'Non Stop','4SPTIGO002', '2SPTIGO002', '1SFACOM002');
insert into flight(flight_number, flight_type, captain_id, copilot_id, head_flight_attendant_id) values ('6E113', 'Connecting','4SPTIGO003', '2SPTIGO003', '2SFACOM004');
insert into flight(flight_number, flight_type, captain_id, copilot_id, head_flight_attendant_id) values ('6E114', 'Non Stop','4SPTIGO004', '2SPTIGO004', '1SFACOM010');
insert into flight(flight_number, flight_type, captain_id, copilot_id, head_flight_attendant_id) values ('6E115', 'Connecting','3SPTIGO005', '1SPTIGO005', '2SFACOM009');








