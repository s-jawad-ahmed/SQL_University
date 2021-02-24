Create Table Faculties(
f_name char(50),
office_number char(10),
phone_number char(10),
email char(20),
title char(10),
time_for_joining_uncc date,
Primary key (f_name)
);

Create Table Courses(
c_name char(50),
class_time date,
classroom char(4),
professors_name char(50),
course_id char(11),
Primary key (c_name)
);

Create Table Departments(
d_name char(50),
main_office integer,
number_of_faculties char (100),
Primary key (d_name)
);

Create Table Students(
s_name char(50),
ID integer,
age integer,
phone char(10),
address char(200),
Primary key (s_name)
);

Create Table Work_in(
f_name char(50), not null,
d_name char(50), not null,
since date,
Foreign Key (f_name) References Faculties on delete cascade,
Foreign Key (d_name) References Departments on delete no action
);

Create Table Enroll(
c_name char(50), s_name char(50),
Primary key (c_name, s_name),
Foreign (c_name) References Student,
Foreign (s_name) References Student,
);

Create Table Teach(
f_name char(50),
c_name char(50),
time date,
Primary key (f_name, c_name),
Foreign key (f_name) References on delete no action,
Foreign key (c_name) References Faculty
);


