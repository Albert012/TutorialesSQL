
--2) Crear Una Tabla (create table - sp_tables - sp_columns - drop table)
--1er Ej
create table Agenda(
	Nombre varchar(20),
	Apellido varchar(25),
	Direccion varchar(50),
	Telefono varchar(15)
);

sp_tables @table_owner = 'dbo';

sp_columns Agenda;

drop table Agenda;

-- 2do EJ
if OBJECT_ID('Pelicula') is not null
drop table Pelicula;

sp_tables @table_owner = 'dbo';

sp_columns Pelicula;
create table Pelicula(
Titulo varchar(20),
Director varchar(20),
Autor varchar(20)
);

drop table Pelicula;


--3) Insertar y recuperar registros de una tabla (insert into - select)
-- 1er EJ

if OBJECT_ID('Agenda') is not null
drop table Agenda;

create table Agenda(
	Nombre varchar(20),
	Apellido varchar(25),
	Direccion varchar(50),
	Telefono varchar(15)
);

sp_tables @table_owner = 'dbo';

sp_columns Agenda;

insert into Agenda(Nombre, Apellido, Direccion, Telefono) values
('Albert','De Jesus','Cenovi El Canal','(829)-208-3210');

select * from Agenda;

drop table Agenda;


-- 2do EJ
if OBJECT_ID('Libro') is not null
drop table Libro;

create table Libro(
Titulo varchar(30),
Autor varchar(40),
Editorial varchar(20)
);


sp_tables @tabel_owner = 'dbo';

sp_columns Libro;

insert into Libro(Titulo, Autor, Editorial) values
('Piensa en C','Luis Joyano','Prog Estruturada');

insert into Libro(Titulo, Autor, Editorial) values
('Estructura de Datos','Luis Joyano','POO');

insert into Libro(Titulo, Autor, Editorial) values
('Analisis y Diseno','Kendall & Kendall','Analista');

select * from Libro;


--4) Tipos De Datos Basicos
--1er EJ
if OBJECT_ID('Peliculas') is not null
drop table Peliculas;

create table Peliculas(
Titulo varchar(20),
Actor varchar(20),
Duracion int,
Cantidad int,
);

sp_columns Peliculas;

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('Fast And Furious 2','Vin Diesel',120,2);

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('El Transportador','Jason Stangan',130,4);

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('Tomb Raider','Jessica Alba',100,2);

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('Fast And Furious 8','Ludacriss',124,5);


select * from Peliculas;

--2do EJ

if OBJECT_ID('Empleados') is not null
drop table Empleados;

create table Empleados(
Nombre varchar(20),
Cedula varchar(13),
Direccion varchar(40),
Sexo char(1),
SueldoInicial float
);

sp_columns Empleados;


insert into Empleados(Nombre, Cedula, Direccion, Sexo, SueldoInicial) values
('Alber De Jesus','056-0181541-7','La bomba de cenovi, el canal','M',5000);

insert into Empleados(Nombre, Cedula, Direccion, Sexo, SueldoInicial) values
('Maria Mendoza','056-5434432-5','Sabana Rey','F',6000);

insert into Empleados(Nombre, Cedula, Direccion, Sexo, SueldoInicial) values
('Luis Jose Mendoza','056-2345123-5','Los Indios','M',2000);

insert into Empleados(Nombre, Cedula, Direccion, Sexo, SueldoInicial) values
('Hector Gabriel Rodriguez','056-3245236-6','Santiago','M',3500);

select * from Empleados;

--5) Recuperar algunos campos (select)
--1er EJ
if OBJECT_ID('Peliculas') is not null
drop table Peliculas;

create table Peliculas(
Titulo varchar(20),
Actor varchar(20),
Duracion int,
Cantidad int,
);

sp_columns Peliculas;

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('Fast And Furious 2','Vin Diesel',120,2);

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('El Transportador','Jason Stangan',130,4);

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('Tomb Raider','Jessica Alba',100,2);

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('Fast And Furious 8','Ludacriss',124,5);

select Titulo, Actor from Peliculas;

select Titulo, Duracion from Peliculas;

select Titulo, Duracion, Cantidad from Peliculas;

--2do Ej

if OBJECT_ID('Empleados') is not null
drop table Empleados;

create table Empleados(
Nombre varchar(20),
Cedula varchar(13),
Direccion varchar(40),
Sexo char(1),
SueldoInicial float
);

sp_columns Empleados;


insert into Empleados(Nombre, Cedula, Direccion, Sexo, SueldoInicial) values
('Alber De Jesus','056-0181541-7','La bomba de cenovi, el canal','M',5000);

insert into Empleados(Nombre, Cedula, Direccion, Sexo, SueldoInicial) values
('Maria Mendoza','056-5434432-5','Sabana Rey','F',6000);

insert into Empleados(Nombre, Cedula, Direccion, Sexo, SueldoInicial) values
('Luis Jose Mendoza','056-2345123-5','Los Indios','M',2000);

insert into Empleados(Nombre, Cedula, Direccion, Sexo, SueldoInicial) values
('Hector Gabriel Rodriguez','056-3245236-6','Santiago','M',3500);

select Nombre, Cedula, Direccion from Empleados;

select Cedula, Direccion, SueldoInicial from Empleados;

select Nombre, SueldoInicial from Empleados;


--6) Recuperar Algunos Registros (where)
--1er EJ
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

--2do EJ
if OBJECT_ID('Peliculas') is not null
drop table Peliculas;

create table Peliculas(
Titulo varchar(20),
Actor varchar(20),
Duracion int,
Cantidad int,
);

sp_columns Peliculas;

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('Fast And Furious','Vin Diesel',120,2);

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('El Transportador','Jason Stangan',130,4);

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('Tomb Raider','Jessica Alba',100,2);

insert into Peliculas(Titulo, Actor, Duracion, Cantidad) values
('Fast And Furious','Vin Diesel',124,5);

select * from Peliculas 
where Actor = 'Vin Diesel';

select Titulo, Duracion from Peliculas
where Titulo = 'Fast And Furious'



--7) Operadores Relacionales
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


--8) Borrar Registros (delete)
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

delete from Articulos 
where Nombre = 'Tv';

delete from Articulos
where Precio >= 18000;

	

--9) Actualizar Registros (update)
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

update Articulos set Nombre = 'TV HD' 
where Nombre = 'Tv';

update Articulos set Nombre = 'Mouse Usb'
where Nombre = 'Mouse';

--11) Valores null (is null)
if OBJECT_ID('Farmacia') is not null
drop table Farmacia;

create table Farmacia(
Codigo int not null,
Nombre varchar(20) not null,
Laboratorio varchar(25),
Precio float,
Cantidad int not null
);

sp_columns Farmacia;

insert into Farmacia(Codigo, Nombre, Laboratorio, Precio, Cantidad) values
(1,'Ketoconazol',null, null, 50);

insert into Farmacia(Codigo, Nombre, Laboratorio, Precio, Cantidad) values
(2,'Tadinisur','Lab del sur SRL',null,25);

insert into Farmacia(Codigo, Nombre, Laboratorio, Precio, Cantidad) values
(3,'Ambroxol',null,250.69,35);

insert into Farmacia(Codigo, Nombre, Laboratorio, Precio, Cantidad) values
(4,'Ferremix','PR Pharmaceuticals',600.67,75);


select * from Farmacia 
where Laboratorio is null;

select * from Farmacia
where Precio is null;

select * from Farmacia
where Precio <> 0;

select * from Farmacia
where Laboratorio is not null;

select * from Farmacia
where Precio is not null;

--12) Clave Primaria
if OBJECT_ID('Libro') is not null
drop table Libro;

create table Libro(
Codigo int,
Titulo varchar(30),
Autor varchar(40),
Editorial varchar(20)
primary key(Codigo)
);


sp_columns Libro;

insert into Libro(Codigo, Titulo, Autor, Editorial) values
(1,'Piensa en C','Luis Joyano','Prog Estruturada');

insert into Libro(Codigo, Titulo, Autor, Editorial) values
(2,'Estructura de Datos','Luis Joyano','POO');

insert into Libro(Codigo, Titulo, Autor, Editorial) values
(3,'Analisis y Diseno','Kendall & Kendall','Analista');

insert into Libro(Codigo, Titulo, Autor, Editorial) values
(4,'Analisis y Diseno','James Sen','Analista');

--13) Campo Con Atributo Identity
if OBJECT_ID('Farmacia') is not null
drop table Farmacia;

create table Farmacia(
Codigo int identity,
Nombre varchar(20) not null,
Laboratorio varchar(25),
Precio float,
Cantidad int not null
primary key(Codigo)
);

sp_columns Farmacia;

insert into Farmacia(Nombre, Laboratorio, Precio, Cantidad) values
('Ketoconazol',null, null, 50);

insert into Farmacia(Nombre, Laboratorio, Precio, Cantidad) values
('Tadinisur','Lab del sur SRL',null,25);

insert into Farmacia(Nombre, Laboratorio, Precio, Cantidad) values
('Ambroxol',null,250.69,35);

insert into Farmacia(Nombre, Laboratorio, Precio, Cantidad) values
('Ferremix','PR Pharmaceuticals',600.67,75);

select * from Farmacia;


--14) Otras Caracteristicas Del Atributo Identity
if OBJECT_ID('Libro') is not null
drop table Libro;

create table Libro(
Codigo int identity(5,1),
Titulo varchar(30)not null,
Autor varchar(40) not null,
Editorial varchar(20)
primary key(Codigo)
);


sp_columns Libro;

insert into Libro(Titulo, Autor, Editorial) values
('Piensa en C','Luis Joyano','Prog Estruturada');

insert into Libro(Titulo, Autor, Editorial) values
('Estructura de Datos','Luis Joyano','POO');

insert into Libro(Titulo, Autor, Editorial) values
('Analisis y Diseno','Kendall & Kendall','Analista');

insert into Libro(Titulo, Autor, Editorial) values
('Analisis y Diseno','James Sen','Analista');

select * from Libro;

set identity_insert Libro on;

insert into Libro(Codigo, Titulo, Autor, Editorial) values
(9,'Administracion Exitosa','Jack Gido & James Clements','Proyectos');

select IDENT_SEED('Libro');


--15) Truncate Table
if OBJECT_ID('Estudiante') is not null
drop table Estudiante;

create table Estudiante(
Matricula int identity,
Nombre varchar(30),
Direccion varchar(40),
ActaCertificacion varchar(4)
);


insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Albert De Jesus Rosario', 'La Bomba De Cenovi','2345');

insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Pedro Enmanuel', 'Villa Tapia','5465');

insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Juan Luis Marte', 'Salcedo','7645');

insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Maria Valerio', 'Villa Riva','5656');

select * from Estudiante;

delete from Estudiante;


insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Pedro Enmanuel', 'Villa Tapia','5465');

insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Maria Valerio', 'Villa Riva','5656');

insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Albert De Jesus Rosario', 'La Bomba De Cenovi','2345');

insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Juan Luis Marte', 'Salcedo','7645');

select * from Estudiante; 

truncate table Estudiante;


insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Pedro Enmanuel', 'Villa Tapia','5465');

insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Maria Valerio', 'Villa Riva','5656');

insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Albert De Jesus Rosario', 'La Bomba De Cenovi','2345');

insert into Estudiante(Nombre, Direccion, ActaCertificacion) values
('Juan Luis Marte', 'Salcedo','7645');

select * from Estudiante;



--17) Tipo de dato (texto)

if OBJECT_ID('Vehiculo') is not null 
drop table Vehiculo;

create table Vehiculo(
Patente char(6),
Marca varchar(20), 
Modelo char(4), 
Precio float, 
primary key (Patente)
 );

 sp_columns Vehiculo;

insert into Vehiculo values('ACD123','Fiat 128','1970',15000);

insert into Vehiculo values('ACG234','Renault 11','1990',40000);

insert into Vehiculo values('BCD333','Peugeot 505','1990',80000);

insert into Vehiculo values('GCD123','Renault Clio','1990',70000);

insert into Vehiculo values('BCC333','Renault Megane','1998',95000);

insert into Vehiculo values('BVF543','Fiat 128','1975',20000);

select * from Vehiculo where Modelo='1990';


--18) Tipo de Dato (numerico)

if OBJECT_ID('Cuenta') is not null 
drop table Cuenta;

create table Cuenta(
Numero int, 
Documento char(8), 
Nombre varchar(30), 
Saldo decimal(30,2), 
primary key(Numero)
);

insert into Cuenta(Numero, Documento, Nombre, Saldo) values
(5654,'0394859','Albert De Jesus',5000.60);

insert into Cuenta(Numero, Documento, Nombre, Saldo) values
(5464,'0986654','Gabriel Rodriguez',2500);

insert into Cuenta(Numero, Documento, Nombre, Saldo) values
(4567,'567656','Maria Lopez', 4000.50);

insert into Cuenta(Numero, Documento, Nombre, Saldo) values
(2312,'56857876','Juana Mena',1000);

select * from Cuenta where Saldo > 4000;

select Numero, Saldo from Cuenta where Nombre='Juana Mena';


select * from Cuenta where Numero >= 3000;


--19) Tipo De Dato (fecha y hora)
if OBJECT_ID('Estudiante') is not null
drop table Estudiante;

create table Estudiante(
Matricula int identity,
Nombre varchar(30),
Direccion varchar(40),
ActaCertificacion varchar(4),
FechaNacimiento datetime,
FechaIngreso datetime
);


insert into Estudiante(Nombre, Direccion, ActaCertificacion,FechaNacimiento, FechaIngreso) values
('Albert De Jesus Rosario', 'La Bomba De Cenovi','2345','03-12-1995','08/09/2009');

insert into Estudiante(Nombre, Direccion, ActaCertificacion,FechaNacimiento, FechaIngreso) values
('Pedro Enmanuel', 'Villa Tapia','5465','24-05-1998','25/07/2004');

insert into Estudiante(Nombre, Direccion, ActaCertificacion,FechaNacimiento, FechaIngreso) values
('Juan Luis Marte', 'Salcedo','7645','31-12-1985','12/02/2015');

insert into Estudiante(Nombre, Direccion, ActaCertificacion,FechaNacimiento, FechaIngreso) values
('Maria Valerio', 'Villa Riva','5656',null,'14/09/2000');

select * from Estudiante 
where FechaIngreso < '15/04/2014';

select * from Estudiante 
where FechaNacimiento is null

set dateformat mdy;

insert into Estudiante(Nombre, Direccion, ActaCertificacion,FechaNacimiento, FechaIngreso) values
('Juan Garcia','Bandera','1254','03-15-1990',null);

select * from Estudiante;

--20) Insertar Algunos Campos (insert into)
if OBJECT_ID('Cuenta') is not null 
drop table Cuenta;

create table Cuenta(
Numero int, 
Documento char(8), 
Nombre varchar(30), 
Saldo decimal(30,2), 
primary key(Numero)
);

insert into Cuenta values (5654,'0394859','Albert De Jesus',5000.60);

insert into Cuenta values (5464,'0986654','Gabriel Rodriguez',2500);

insert into Cuenta values (4567,'567656','Maria Lopez', 4000.50);

insert into Cuenta values (2312,'56857876','Juana Mena',1000);

select * from Cuenta;



--21) Valores por defecto (default)
if OBJECT_ID('Visitantes') is not null
drop table Visitantes;

create table Visitantes(
Nombre varchar(20),
Edad int, 
Sexo char(1) default 'F',
Direcccion varchar(30),
Ciudad varchar(30) default 'San Fco de Macoris',
Telefono varchar(12),
);

sp_columns Visitantes;

insert into Visitantes(Nombre, Edad, Direcccion, Telefono) values
('Esther Maria',18,'Caonabo','809-435-6543');

insert into Visitantes(Nombre, Edad, Ciudad, Direcccion, Telefono) values
('Maria Elizabeth',22, 'El Tejar','Santiago','829-342-7532');

insert into Visitantes(Nombre, Edad, Sexo, Direcccion, Ciudad, Telefono) values
('Maria Tejada',26,default ,'Caperuza II', default,'849-256-4323');

insert into Visitantes(Nombre, Edad, Sexo, Direcccion, Ciudad, Telefono) values
('Alberto Luis',22,'M','Cenovi', default, '829-208-3210' );

insert into Visitantes default values

select * from Visitantes;

--22) Columnas calculadas (operadores aritméticos y de concatenación)
if OBJECT_ID('Articulos') is not null
drop table Articulos;

create table Articulos(
Codigo int identity,
Nombre varchar(20),
Descripcion varchar(40),
Precio money,
Cantidad int default 0,
primary key(Codigo)
);

sp_columns Articulos;

insert into Articulos(Nombre, Descripcion, Precio, Cantidad) values
('Hp','Hp 2000 Notebook',5995.95,3);

insert into Articulos(Nombre, Descripcion, Precio, Cantidad) values
('Mouse','Mouse Logitech Usb', 500,10);

insert into Articulos(Nombre, Descripcion, Precio, Cantidad) values
('Tv','SmartTV SAMSUNG 32PG',18000.00,5);

insert into Articulos(Nombre, Descripcion, Precio, Cantidad) values
('Tv','SmartTV TECHNOMASTER 50PG',40000.00,2);

insert into Articulos(Nombre, Descripcion, Precio, Cantidad) values
('iPhone','iPhone 6',8000.00,5);

select * from Articulos;

update Articulos set Precio = Precio +  (Precio*0.18);

select Nombre + ', ' + Descripcion from Articulos;

update Articulos set Cantidad = Cantidad - 5 
where Nombre = 'iPhone';

select * from Articulos;



--23) Alias
if OBJECT_ID('Libro') is not null
drop table Libro;

create table Libro(
Codigo int identity,
Titulo varchar(30)not null,
Autor varchar(40) not null,
Editorial varchar(20) default 'Desconocido',
Precio decimal(5,2),
Cantidad int default 0,
primary key(Codigo)
);


sp_columns Libro;

insert into Libro(Titulo, Autor, Editorial, Precio, Cantidad) values
('Piensa en C','Luis Joyano',default,250.89,5);

insert into Libro(Titulo, Autor, Editorial, Precio, Cantidad) values
('Estructura de Datos','Luis Joyano', default, 400.45, 3);

insert into Libro(Titulo, Autor, Editorial, Precio, Cantidad) values
('Analisis y Diseno','Kendall & Kendall', default, 900, 2);

insert into Libro(Titulo, Autor, Editorial, Precio, Cantidad) values
('Analisis y Diseno','James Sen', default, 1200, 6);

select Codigo, Titulo, Precio, Cantidad, Precio*Cantidad as 'Monto' from Libro;

select Titulo, Autor, Precio, Precio*0.18 as Descuento, Precio-(Precio*0.18) as 'Total' from Libro
where Titulo = 'Analisis y Diseno';


--27) Funciones para el uso de fechas y horas
if OBJECT_ID('Empleados') is not null
drop table Empleados;

create table Empleados(
Codigo int identity,
Nombre varchar(20) not null,
Cedula varchar(13) not null,
FechaIngreso datetime,
Sueldo decimal(5,2),
primary key(Codigo)
);

sp_columns Empleados;

insert into Empleados(Nombre, Cedula, FechaIngreso, Sueldo) values
('Ana Luisa Rosario','056-4343256-6','02/05/2017',5000);

insert into Empleados(Nombre, Cedula, FechaIngreso, Sueldo) values
('Richard Santos','056-3654236-4','07/10/2012',8000);

insert into Empleados(Nombre, Cedula, FechaIngreso, Sueldo) values
('Luz Abreu','056-2345232-6','25/12/2000',30000);

insert into Empleados(Nombre, Cedula, FechaIngreso, Sueldo) values
('Raudy Flores','056-67872345-7','23/11/1999',55000);


select Nombre, 'Id. ' + Cedula, STUFF(Sueldo, 1, 0, '$') from Empleados;

select Cedula, CEILING(Sueldo) from Empleados;

select Nombre, Cedula from	Empleados 
where DATENAME(MONTH, FechaIngreso) = 'October';

select Nombre, Sueldo from Empleados
where DATEPART(YEAR, FechaIngreso) = 2000;


--28) Ordenar registros (order by)
if OBJECT_ID('Viaje') is not null
drop table Viaje;

create table Viaje(
Codigo int identity,
Nombre varchar(30) default 'Desconocido',
Pais varchar(20),
Fecha datetime,
primary key(Codigo)
);

sp_columns Viaje;

insert into Viaje(Nombre, Pais, Fecha) values
('Albert De Jesus','New York','25/12/2018');

insert into Viaje(Nombre, Pais, Fecha) values
('Maria Mendoza','Epezia','23/11/2014');

insert into Viaje(Nombre, Pais, Fecha) values
('Wilmary Jimenez','Dubai','03/12/2019');

insert into Viaje(Nombre, Pais, Fecha) values
('Luis Esteban','Miami','05/05/2008');

insert into Viaje(Nombre, Pais, Fecha) values
('Hector Mena','Italia','16/10/2017');

select * from Viaje order by Nombre;

select Nombre, Pais, DATENAME(MONTH, Fecha) as Mes from Viaje order by Pais, Mes desc;

select Pais,  DATENAME(MONTH, Fecha) as Mes, DATENAME(DAY, Fecha) as Dia from Viaje order by mes, dia;


--29) Operadores lógicos ( and - or - not)
if OBJECT_ID('Farmacia') is not null
drop table Farmacia;

create table Farmacia(
Codigo int identity,
Nombre varchar(20) not null,
Laboratorio varchar(25),
Precio float,
Cantidad int not null
primary key(Codigo)
);

sp_columns Farmacia;

insert into Farmacia(Nombre, Laboratorio, Precio, Cantidad) values
('Ketoconazol','PR Pharmaceuticals', null, 50);

insert into Farmacia(Nombre, Laboratorio, Precio, Cantidad) values
('Tadinisur','Lab del sur SRL',null,25);

insert into Farmacia(Nombre, Laboratorio, Precio, Cantidad) values
('Ambroxol','Lab del sur SRL',250.69,35);

insert into Farmacia(Nombre, Laboratorio, Precio, Cantidad) values
('Ferremix','PR Pharmaceuticals',600.67,75);

insert into Farmacia(Nombre, Laboratorio, Precio, Cantidad) values
('Acetaminofen','Lab del sur SRL',30.67,25);

insert into Farmacia(Nombre, Laboratorio, Precio, Cantidad) values
('Advil','Lab del sur SRL',15,35);

select Codigo, Nombre from Farmacia 
where Laboratorio = 'Lab del sur SRL' and Precio > 20;

select * from Farmacia
where Laboratorio = 'PR Pharmaceuticals' and Cantidad <= 60;

select Codigo, Nombre from Farmacia 
where Laboratorio = 'Lab del sur SRL' or Cantidad > 30;

--30) Otros operadores relacionales (is null)
if OBJECT_ID('Peliculas') is not null
drop table Peliculas;

create table Peliculas(
Codigo int identity,
Titulo varchar(20),
Actor varchar(20),
Duracion int,
primary key(Codigo)
);

sp_columns Peliculas;

insert into Peliculas values ('Fast And Furious','Vin Diesel',120,2);

insert into Peliculas values('El Transportador','Jason Stangan',130,4);

insert into Peliculas values('Tomb Raider','Jessica Alba',null,2);

insert into Peliculas values('Fast And Furious 5','Vin Diesel',124,5);

insert into Peliculas values('Fast And Furious 6 ', null, 130,8);

insert into Peliculas values('Fast And Furious 7','Ludracris',null,6);

insert into Peliculas values('Mision Imposible ','Tom Cruise',120,3);

select * from Peliculas 
where Actor is null;

update Peliculas set Duracion = 0 
where Duracion is null;

delete from Peliculas 
where Actor is null and Duracion = 0;


--31)Otros operadores relacionales (between)
if OBJECT_ID('Vehiculo') is not null 
drop table autos;

create table Vehiculo(
patente char(6),
marca varchar(20),
modelo char(4),
precio decimal(8,2),
primary key(patente)
);

sp_columns Vehiculo;

insert into Vehiculo values('ACD123','Fiat 128','1970',15000);

insert into Vehiculo values('ACG234','Renault 11','1980',40000);

insert into Vehiculo values('BCD333','Peugeot 505','1990',80000);

insert into Vehiculo values('GCD123','Renault Clio','1995',70000);

insert into Vehiculo values('BCC333','Renault Megane','1998',95000);

insert into Vehiculo values('BVF543','Fiat 128','1975',20000);

select * from Vehiculo where modelo between '1970' and '1990' order by modelo;

select * from Vehiculo where precio between 50000 and 100000;


--32) Otros operadores relacionales (in)
if OBJECT_ID('Farmacia') is not null drop table medicamentos;

create table Farmacia(
codigo int identity,
nombre varchar(20),
laboratorio varchar(20),
precio decimal(6,2),
cantidad tinyint,
fechaVencimiento datetime not null
primary key(codigo)
);

sp_columns Farmacia;

insert into Farmacia values('Sertal','Roche',5.2,1,'2005-02-01');

insert into Farmacia values('Buscapina','Roche',4.10,3,'2006-03-01');

insert into Farmacia values('Amoxidal 500','Bayer',15.60,100,'2007-05-01');

insert into Farmacia values('Paracetamol 500','Bago',1.90,20,'2008-02-01');

insert into Farmacia values('Bayaspirina','Bayer',2.10,150,'2009-12-01');

insert into Farmacia values('Amoxidal jarabe','Bayer',5.10,250,'2010-10-01');

select nombre, precio from Farmacia where laboratorio in('Bayer','Bago');

select * from Farmacia where cantidad between 1 and 5;

select * from Farmacia where cantidad in(1,5);


--33)Búsqueda de patrones (like - not like)
if OBJECT_ID('Empleados') is not null
drop table Empleados;

create table Empleados(
Codigo int identity,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Cedula varchar(13) not null,
FechaIngreso datetime,
Sueldo decimal(5,2),
primary key(Codigo)
);

sp_columns Empleados;

insert into Empleados(Nombre, Apellido, Cedula, FechaIngreso, Sueldo) values
('Ana Luisa', 'Rosario','056-4343256-6','02/05/2017',5000);

insert into Empleados(Nombre, Apellido, Cedula, FechaIngreso, Sueldo) values
('Richard','Santos','056-3654236-4','07/10/2012',8000);

insert into Empleados(Nombre, Apellido, Cedula, FechaIngreso, Sueldo) values
('Luz', 'Abreu','056-2345232-6','25/12/2000',30000);

insert into Empleados(Nombre, Apellido, Cedula, FechaIngreso, Sueldo) values
('Raudy', 'Flores','056-67872345-7','23/11/1999',55000);

insert into Empleados(Nombre, Apellido, Cedula, FechaIngreso, Sueldo) values
('Luis Alberto','Flores','056-67872345-7','23/11/1999',55000);

insert into Empleados(Nombre, Apellido, Cedula, FechaIngreso, Sueldo) values
('Albert','Rosario','056-6746345-7','23/11/1999',55000);

insert into Empleados(Nombre, Apellido, Cedula, FechaIngreso, Sueldo) values
('Jeudy','Flores','056-67676545-7','23/11/1999',55000);

select * from Empleados 
where Apellido like 'Rosario%';

select * from Empleados
where Cedula like '056%';

select * from Empleados
where nombre like '%__u';



--34) Contar registros (count)
if OBJECT_ID('Farmacia') is not null 
drop table Farmacia;

create table Farmacia(
codigo int identity,
nombre varchar(20),
laboratorio varchar(20),
precio decimal(6,2),
cantidad tinyint,
fechaVencimiento datetime not null,
numerolote int default null,
primary key(codigo)
);

insert into Farmacia values('Sertal','Roche',5.2,1,'2005-02-01',null);

insert into Farmacia values('Buscapina','Roche',4.10,3,'2006-03-01',null);

insert into Farmacia values('Amoxidal 500','Bayer',15.60,100,'2007-05-01',null);

insert into Farmacia values('Paracetamol 500','Bago',1.90,20,'2008-02-01',null);

insert into Farmacia values('Bayaspirina',null,2.10,null,'2009-12-01',null);

insert into Farmacia values('Amoxidal jarabe','Bayer',null,250,'2009-12-15',null);

select count(*) from Farmacia;

select count(laboratorio) from Farmacia;

select count(precio) as 'Conteo con Precio', count(cantidad) as 'Conteo con Cantidad' from Farmacia;

select count(precio) from Farmacia where laboratorio like 'B%';

select count(numerolote) from Farmacia;


--36) Funciones de agrupamiento (count - sum - min - max - avg)
if OBJECT_ID('Empleados') is not null
drop table Empleados;

create table Empleados(
nombre varchar(30),
documento char(8),
domicilio varchar(30),
seccion varchar(20),
sueldo decimal(6,2),
cantidadHijos tinyint,
primary key(documento) 
);

insert into Empleados values('Juan Perez','3123125','Colon 123','Gerencia',5000,2);

insert into Empleados values('Ana Acosta','3123123','Caseros 987','Secretaria',2000,0);

insert into Empleados values('Lucas Duarte','5675673','Sucre 235','Sistemas',4000,1);

insert into Empleados values('Pamela Gonzalez','575675','Sarmiento 873','Secretaria',2200,3);

insert into Empleados values('Marcos Juarez','980980','Rivadavia 801','Contaduria',3000,0);

insert into Empleados values('Yolanda Perez','9098098','Colon 180','Administracion',3200,1);

insert into Empleados values('Rodolfo Perez','89098','Coronel Olmedo 588','Sistemas',4000,3);

insert into Empleados values('Martina Rodriguez','890980','Sarmiento 1234','Administracion',3800,4);

insert into Empleados values('Andres Costa','908089',default,'Secretaria',null,null);

select count(*) from Empleados;

select count(sueldo) from Empleados 
where seccion = 'Secretaria';

select max(sueldo) as 'Sueldo Maximo', min(sueldo) as 'Sueldo Minimo' from Empleados;

select max(cantidadHijos) from Empleados 
where nombre like '%Perez%';

select avg(sueldo) from Empleados;

select avg(cantidadHijos) from Empleados 
where seccion like '%Sistemas%';


--37) Agrupar registros (group by)

if OBJECT_ID('Empleados') is not null 
drop table Empleados;

create table Empleados(
nombre varchar(30),
documento char(8),
domicilio varchar(30),
seccion varchar(20),
sueldo decimal(6,2),
cantidadHijos tinyint,
fechaIngreso datetime,
primary key(documento) 
);

insert into Empleados values('Juan Perez','3534534','Colon 123','Gerencia',5000,2,'1980-05-10');

insert into Empleados values('Ana Acosta','344355435','Caseros 987','Secretaria',2000,0,'1980-10-12');

insert into Empleados values('Lucas Duarte','534534','Sucre 235','Sistemas',4000,1,'1985-05-25');

insert into Empleados values('Pamela Gonzalez','8954512','Sarmiento 873','Secretaria',2200,3,'1990-06-25');

insert into Empleados values('Marcos Juarez','235435','Rivadavia 801','Contaduria',3000,0,'1996-05-01');

insert into Empleados values('Yolanda Perez','6546547','Colon 180','Administracion',3200,1,'1996-05-01');

insert into Empleados values('Rodolfo Perez','2352435','Coronel Olmedo 588','Sistemas',4000,3,'1996-05-01');

insert into Empleados values('Martina Rodriguez','345345','Sarmiento 1234','Administracion',3800,4,'2000-09-01');

insert into Empleados values('Andres Costa','234534',default,'Secretaria',null,null,null);

select seccion, count(*) from Empleados 
group by seccion;

select seccion, avg(cantidadHijos) as 'Promedio de Hijos' from Empleados 
group by seccion;

select datepart(year, fechaIngreso) as 'Fecha de Ingreso', count(*) from Empleados 
group by datepart(year, fechaIngreso);

select seccion, avg(sueldo) as 'Sueldo Promedio' from Empleados 
where cantidadHijos > 0 and cantidadHijos is not null 
group by seccion;

select seccion, avg(sueldo) as 'Sueldo Promedio' from Empleados 
where cantidadHijos > 0 and cantidadHijos is not null 
group by all seccion;


--38) Seleccionar grupos (having)
if object_id('Visitantes') is not null 
drop table Visitantes;

create table Visitantes(
nombre varchar(30), 
edad tinyint,
sexo char(1),
domicilio varchar(30),
ciudad varchar(20),
telefono varchar(11),
montocompra decimal(6,2) not null,
);

insert into Visitantes values ('Susana Molina',28,'f',null,'Cordoba',null,45.50); 

insert into Visitantes values ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',22.40);

insert into Visitantes values ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 

insert into Visitantes values ('Teresa Garcia',33,'f',default,'Alta Gracia','03547123456',120);

insert into Visitantes values ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);

insert into Visitantes values ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',95);

insert into Visitantes values ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia',null,53.50);

insert into Visitantes values ('Roxana Lopez',20,'f','null','Alta Gracia',null,240);

insert into Visitantes values ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);

insert into Visitantes values ('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);

select ciudad, sexo, sum(montocompra) from Visitantes 
group by ciudad, sexo 
having sum(montocompra)>50;

select ciudad, sexo, count(montocompra) from Visitantes
where montocompra > 50 and telefono is not null
group by all ciudad, sexo 
having ciudad <> 'Cordoba' 
order by ciudad;

select ciudad, max(montocompra) as maximo from visitantes 
where domicilio is not null and sexo='f'
group by all ciudad 
having max(montocompra)>50;

select ciudad, sexo, count(*) as 'Total Visitantes', sum(montocompra) as 'Monto', avg(montocompra) 'Promedio Compra' from visitantes
group by ciudad, sexo 
having  avg(montocompra)>30 
order by sum(montocompra);

--43)Registros duplicados (distinct)
if OBJECT_ID('Clientes') is not null 
drop table Clientes;

create table Clientes(
codigo int identity,
nombre varchar(30) not null,
domicilio varchar(30),
ciudad varchar(20),
provincia varchar(20),
primary key(codigo)
);

insert into Clientes values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');

insert into Clientes values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');

insert into Clientes values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');

insert into Clientes values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');

insert into Clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');

insert into Clientes values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');

insert into Clientes values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');

insert into Clientes values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');

insert into Clientes values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');

insert into Clientes values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

select distinct provincia from Clientes;

select count(distinct provincia) from Clientes;

select distinct ciudad from Clientes;

select count(distinct ciudad) from Clientes;

select count(distinct ciudad) from Clientes
where ciudad like '%Cordoba%';

select ciudad, count(distinct ciudad) as 'Cantidad de Ciudad' from Clientes 
group by ciudad;



--44) Cláusula top
if OBJECT_ID('Empleados') is not null 
drop table Empleados;

create table Empleados(
documento char(8),
nombre varchar(30),
estadoCivil char(1), --c=casado, s=soltero,v=viudo
seccion varchar(20), 
);

insert into Empleados values ('4765756','Alberto Lopez','c','Sistemas');

insert into Empleados values ('6456456','Beatriz Garcia','c','Administracion');

insert into Empleados values ('6456546','Carlos Fuentes','s','Administracion');

insert into Empleados values ('4645654','Daniel Garcia','s','Sistemas');

insert into Empleados values ('5345435','Ester Juarez','c','Sistemas');

insert into Empleados values ('87689678','Fabian Torres','s','Sistemas');

insert into Empleados values ('75675756','Gabriela Lopez',null,'Sistemas');

insert into Empleados values ('56756765','Hector Garcia',null,'Administracion');

select top 5 * from Empleados;

select top 4 nombre, seccion from empleados 
order by seccion;

select top 4 with ties nombre, seccion from empleados 
order by seccion;

select top 4 nombre, estadoCivil, seccion from empleados 
order by estadoCivil, seccion;

select top 4 with ties nombre, estadoCivil, seccion from empleados 
order by estadoCivil, seccion;



--53) Eliminar restricciones (alter table - drop)
if OBJECT_ID('Vehiculos') is not null 
drop table vehiculos;

create table Vehiculos(
patente char(8) not null,
tipo char(10),--'a'=auto, 'm'=moto,
horallegada datetime not null,
horasalida datetime
);

alter table Vehiculos add constraint CK_vehiculos_tipo check (tipo in('a','m'));

alter table Vehiculos add constraint DF_vehiculos_tipo default 'a' for tipo;

alter table Vehiculos add constraint CK_vehiculos_patente check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

alter table Vehiculos add constraint PK_vehiculos_primary primary key(patente, horallegada);

insert into Vehiculos values('SDR456','a','2005/11/10 10:10',null);

insert into vehiculos values('SDR456','m','2015/10/10 12:10',null);

insert into vehiculos values('SDR111','m','2012/07/10 10:10',null);

sp_helpconstraint vehiculos;

alter table vehiculos drop DF_vehiculos_tipo;

sp_helpconstraint vehiculos;

alter table vehiculos drop PK_vehiculos_primary, CK_vehiculos_tipo;

sp_helpconstraint vehiculos;



--66) Combinación interna (inner join)

if OBJECT_ID('Inscriptos') is not null 
drop table inscriptos;

if OBJECT_ID('Inasistencias') is not null 
drop table Inasistencias;

create table Inscriptos(
nombre varchar(30),
documento char(8),
deporte varchar(15),
matricula char(1),--'s' = paga 'n'=impaga
primary key(documento, deporte)
);

create table Inasistencias(
documento char(8),
deporte varchar(15),
fecha datetime
);

insert into Inscriptos values('Juan Perez','445654','tenis','s');
insert into Inscriptos values('Maria Lopez','45654654','tenis','s');
insert into Inscriptos values('Agustin Juarez','353467','tenis','n');
insert into Inscriptos values('Marta Garcia','35643564','natacion','s');
insert into Inscriptos values('Juan Perez','356364','natacion','s');
insert into Inscriptos values('Maria Lopez','73783','natacion','n');

insert into Inasistencias values('25345345','tenis','2006-12-01');
insert into Inasistencias values('34535543','tenis','2006-12-08');
insert into Inasistencias values('34543435','tenis','2006-12-01');
insert into Inasistencias values('7675688','tenis','2006-12-08');
insert into Inasistencias values('8768678','natacion','2006-12-02');
insert into Inasistencias values('7456756','natacion','2006-12-02');

select incr.nombre, incr.deporte, ins.fecha from Inscriptos as incr join Inasistencias as ins 
on incr.deporte = ins.deporte and incr.documento = ins.documento order by incr.nombre, incr.deporte;

select incr.nombre, incr.deporte, ins.fecha from Inscriptos as incr join Inasistencias as ins 
on incr.deporte = ins.deporte and incr.documento = ins.documento where incr.documento = '6786787';

select incr.nombre, incr.deporte, ins.fecha from Inscriptos as incr join Inasistencias as ins 
on incr.deporte = ins.deporte and incr.documento = ins.documento where matricula = 's';


--67) Combinación externa izquierda (left join)
if OBJECT_ID('Clientes') is not null 
drop table Clientes;

if OBJECT_ID('Provincias') is not null 
drop table Provincias;

create table Clientes(
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(20),
codigoprovincia tinyint not null,
primary key(codigo)
);

create table Provincias(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);
insert into Clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into Clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into Clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into Clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into Clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into Clientes values ('Torres Fabiola','Alem 777','La Plata',4);
insert into Clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

insert into Provincias (nombre) values('Cordoba');
insert into Provincias (nombre) values('Santa Fe');
insert into Provincias (nombre) values('Corrientes');



select c.nombre,domicilio,ciudad, p.nombre from Clientes as c left join Provincias as p
on c.codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre from Provincias as p left join Clientes as c
on c.codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre from Clientes as c left join Provincias as p
on c.codigoprovincia = p.codigo where p.codigo is not null;

 select c.nombre,domicilio,ciudad, p.nombre from Clientes as c left join Provincias as p
on c.codigoprovincia = p.codigo where p.codigo is null order by c.nombre;

select c.nombre,domicilio,ciudad, p.nombre from Clientes as c left join Provincias as p
on c.codigoprovincia = p.codigo where p.nombre = 'Cordoba';


--68) Combinación externa derecha (right join)
if OBJECT_ID('Clientes') is not null 
drop table Clientes;

if OBJECT_ID('Provincias') is not null 
drop table Provincias;

create table Clientes(
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
ciudad varchar(20),
codigoprovincia tinyint not null,
primary key(codigo)
);

create table Provincias(
codigo tinyint identity,
nombre varchar(20),
primary key (codigo)
);

insert into Provincias (nombre) values('Cordoba');
insert into Provincias (nombre) values('Santa Fe');
insert into Provincias (nombre) values('Corrientes');

insert into Clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into Clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into Clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into Clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into Clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into Clientes values ('Torres Fabiola','Alem 777','La Plata',4);
insert into Clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

select c.nombre, c.domicilio, c.ciudad, p.nombre from Clientes as c right join Provincias as p
on c.codigoprovincia = p.codigo;

select c.nombre, c.domicilio, c.ciudad, p.nombre from Clientes as c left join Provincias as p
on c.codigoprovincia = p.codigo;

select c.nombre, c.domicilio, c.ciudad, p.nombre from Clientes as c right join Provincias as p
on c.codigoprovincia = p.codigo where p.codigo is not null;

select c.nombre, c.domicilio, c.ciudad, p.nombre from Provincias as p right join Clientes as c
on c.codigoprovincia = p.codigo where p.codigo is null order by c.ciudad;

--69) Combinación externa completa (full join)
if object_id('Deportes') is not null 
drop table Deportes;

if object_id('Inscriptos') is not null 
drop table Inscriptos;

create table Deportes(
codigo int identity,
nombre varchar(30),
profesor varchar(30),
primary key(codigo)
);

create table Inscriptos(
documento char(8),
codigodeporte int,
matricula char(1) --'s'=paga 'n'=impaga
);

insert into Deportes values('tenis','Marcelo Roca');
insert into Deportes values('natacion','Marta Torres');
insert into Deportes values('basquet','Luis Garcia');
insert into Deportes values('futbol','Marcelo Roca');
 
insert into Inscriptos values('786978',3,'s');
insert into Inscriptos values('789787',3,'s');
insert into Inscriptos values('797855',3,'n');
insert into Inscriptos values('75756756',2,'s');
insert into Inscriptos values('5756765',2,'s');
insert into Inscriptos values('7567567',4,'n'); 
insert into Inscriptos values('5675676',5,'n');

select ins.documento, matricula, d.nombre from Inscriptos as ins join Deportes as d
on ins.codigodeporte = d.codigo;

select ins.documento, matricula, d.nombre from Inscriptos as ins left join Deportes as d
on ins.codigodeporte = d.codigo;

select ins.documento, matricula, d.nombre from Inscriptos as ins right join Deportes as d
on ins.codigodeporte = d.codigo;

select nombre from Deportes as d left join Inscriptos as ins
on ins.codigodeporte = d.codigo where ins.codigodeporte is null;

select ins.documento from Inscriptos as ins left join Deportes as d
on ins.codigodeporte = d.codigo where d.codigo is null;

select documento, nombre, profesor, matricula from Inscriptos as ins full join Deportes as d
on ins.codigodeporte = d.codigo;



--70) Combinaciones cruzadas (cross join)

--73) Combinación de más de dos tablas


--82) Unión


--83) Agregar y eliminar campos ( alter table - add - drop)

--84) Alterar campos (alter table - alter)

--86) Campos calculados
 
--92) Subconsultas como expresión

--93) Subconsultas con in

--94) Subconsultas any - some - all

--95) Subconsultas correlacionadas

--96) Exists y No Exists

--98) Subconsulta en lugar de una tabla

--99) Subconsulta (update - delete)

--100) Subconsulta (insert)

--101) Crear tabla a partir de otra (select - into)

--103) Vistas

--110) Lenguaje de control de flujo (case)

--111) Lenguaje de control de flujo (if)

--120) Procedimientos almacenados (crear - ejecutar)

--135) Funciones escalares (crear y llamar)

--136) Funciones de tabla de varias instrucciones



--) Funciones con valores de tabla en línea

