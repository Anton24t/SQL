create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into employees(employee_name) 
values ('Anton'),
	   ('Artem'),
	   ('Anna'),
	   ('Alla'),
	   ('Ahmed'),
	   ('Alena'),
	   ('Arkadiy'),
	   ('Afanasiy'),
	   ('Alexandr'),
	   ('Alexey'),
	   ('Angelina'),
	   ('Alina'),
	   ('Agata'),
	   ('Artur'),
	   ('Ashot'),
	   ('Artur'),
	   ('Alan'),
	   ('Alisher'),
	   ('Boris'),
	   ('Bulat'),
	   ('Bogdan'),
	   ('Valentina'),
	   ('Viktor'),
	   ('Vyacheslav'),
	   ('Veniamin'),
	   ('Viktoria'),
	   ('Vasiliy'),
	   ('Vasilisa'),
	   ('Vadim'),
	   ('Valdemar'),
	   ('Vladimir'),
	   ('Vitaliy'),
	   ('Varvara'),
	   ('Vera'),
	   ('Veronika'),
	   ('Valeria'),
	   ('Violetta'),
	   ('Vladislav'),
	   ('Vsevolod'),
	   ('Georgiy'),
	   ('Grigoriy'),
	   ('Gennadiy'),
	   ('Gerald'),
	   ('German'),
	   ('Gleb'),
	   ('Galina'),
	   ('Glaphira'),
	   ('Dana'),
	   ('Darya'),
	   ('Diana'),
	   ('Denis'),
	   ('Dmitriy'),
	   ('David'),
	   ('Demid'),
	   ('Donald'),
	   ('Egor'),
	   ('Efim'),
	   ('Evgeniy'),
	   ('Evgeniya'),
	   ('Eva'),
	   ('Elizaveta'),
	   ('Ekaterina'),
	   ('Elena'),
	   ('Zahar'),
	   ('Zlatan'),
	   ('Zurab'),
	   ('Zelda'),
	   ('Zoya'),
	   ('Zulfiya'),
	   ('Irina');

insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400);

create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
values (5, 2),
	   (12, 3),
	   (23, 8),
	   (62, 11),
	   (55, 12),
	   (43, 4),
	   (27, 9),
	   (76, 1),
	   (17, 2),
	   (3, 13),
	   (77, 10),
	   (111, 7),
	   (4, 5),
	   (36, 2),
	   (41, 8),
	   (52, 12),
	   (22, 9),
	   (19, 4),
	   (67, 5),
	   (100, 2),
	   (84, 14),
	   (8, 15),
	   (11, 11),
	   (114, 6),
	   (90, 8),
	   (20, 10),
	   (33, 13),
	   (85, 4),
	   (1, 9),
	   (39, 7),
	   (47, 10),
	   (69, 11),
	   (94, 1),
	   (14, 8),
	   (56, 3),
	   (49, 5),
	   (30, 12),
	   (7, 14),
	   (83, 7),
	   (21, 15);
	  

create table roles(
	id serial primary key,
	role_name int unique not null
);

alter table roles alter column role_name type varchar(30);

insert into roles (role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');


create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

insert into roles_employee (employee_id, role_id)
values (5, 2),
	   (12, 3),
	   (23, 18),
	   (62, 11),
	   (55, 12),
	   (43, 4),
	   (27, 9),
	   (24, 1),
	   (17, 2),
	   (3, 13),
	   (6, 19),
	   (44, 7),
	   (4, 5),
	   (36, 17),
	   (41, 8),
	   (52, 16),
	   (22, 19),
	   (19, 4),
	   (67, 5),
	   (68, 20),
	   (50, 14),
	   (8, 15),
	   (11, 11),
	   (25, 6),
	   (57, 18),
	   (20, 19),
	   (33, 13),
	   (9, 4),
	   (1, 17),
	   (39, 7),
	   (47, 10),
	   (69, 16),
	   (38, 1),
	   (14, 18),
	   (56, 20),
	   (49, 5),
	   (30, 12),
	   (7, 14),
	   (60, 7),
	   (21, 15);

select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee


