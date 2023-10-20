create table if not exists Depatment(
	id serial primary key,
	Name VARCHAR(50) not null		
);

create table if not exists Employees(
	id serial primary key,
	Name VARCHAR(100) not null,
	id_department INTEGER references Depatment(id),
	Boss INTEGER references Employees(id)
);
	