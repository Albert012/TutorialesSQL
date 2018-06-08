--1)


--2)



--3)


--4)


--5)


--6)
if OBJECT_ID('Agenda') is not null
	drop table Agenda;

	create table Agenda(
	Nombre varchar(20),
	Apellido varchar(25),
	Direccion varchar(50),
	Telefono varchar(15)
	);

	sp_columns Agenda;

	insert into Agenda(Nombre, Apellido, Direccion, Telefono) values
	('Albert','Mendoza','Cenovi','(829)-327-2595');

	insert into Agenda(Nombre, Apellido, Direccion, Telefono) values
	('Maria','Almanzar','Los Indios','(829)-474-6928');

	insert into Agenda(Nombre, Apellido, Direccion, Telefono) values
	('Maria','Valerio','Santa Ana','(809)-345-5265');

	insert into Agenda(Nombre, Apellido, Direccion, Telefono) values
	('Ana Luisa','Rosario','Los Indios','(829)-765-2345');

	insert into Agenda(Nombre, Apellido, Direccion, Telefono) values
	('Leonela','Rosario','Los Indios','(809)-297-5597');


	select * from Agenda;

	select * from Agenda
	where Nombre = 'Albert';

	select Nombre, Direccion from Agenda
	where Apellido = 'Rosario';

	select Nombre, Telefono from Agenda
	where Telefono like '(829)%';


--7)
if OBJECT_ID('Articulos') is not null
	drop table Articulos;

	create table Articulos(
	Codigo int,
	Nombre varchar(20),
	Descripcion varchar(40),
	Precio float,
	Cantidad int
	);

	sp_columns Articulos;

	insert into Articulos(Codigo, Nombre, Descripcion, Precio, Cantidad) values
	(1,'Hp','Hp 2000 Notebook',5995.95,3);

	insert into Articulos(Codigo, Nombre, Descripcion, Precio, Cantidad) values
	(2,'Mouse','Mouse Logitech Usb', 500,10);

	insert into Articulos(Codigo, Nombre, Descripcion, Precio, Cantidad) values
	(3,'Tv','SmartTV SAMSUNG 32PG',18000.00,5);

	insert into Articulos(Codigo, Nombre, Descripcion, Precio, Cantidad) values
	(4,'Tv','SmartTV TECHNOMASTER 50PG',40000.00,2);

	insert into Articulos(Codigo, Nombre, Descripcion, Precio, Cantidad) values
	(5,'iPhone','iPhone 6',8000.00,5);

	select * from Articulos
	where Nombre = 'Tv';

	select * from Articulos
	where Precio >= 8000;

	select Codigo, Nombre from Articulos
	where Cantidad < 4;

	select Nombre, Descripcion from Articulos
	where Precio <> 500;


--8)





--9)


--10)



--11)


--12)


--13)


--14)


--15)


--16)


--17)

