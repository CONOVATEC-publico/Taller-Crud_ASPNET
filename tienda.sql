create database tienda
go
use tienda
go

create table categoria
(
idcategoria int identity(1,1)not null,
descripcion varchar(40)not null,
constraint pk_idcategoria primary key(idcategoria)

);
go

insert into categoria
values ('Golosinas'),('Lacteos'),('Refrescos'),('Menestras')

select * from categoria;

create table estado
(
idestado int identity(1,1)not null,
descripcion varchar(40)not null,
constraint pk_idestado primary key(idestado)

);
go

insert into estado
values ('Disponible'),('No disponible'),('Por vencer'),('Vencido')

select * from estado;

create table producto
(
idproducto int identity(1,1)not null,
nombre varchar(40)not null,
precio decimal(8,2)not null,
stock int  not null,
idcategoria int not null,
idestado int not null,
constraint pk_idproducto primary key(idproducto),
constraint fk_idcategoria foreign key(idcategoria) references categoria,
constraint fk_idestado foreign key(idestado) references estado

);

insert into producto
values ('Chocolate triangulo','3.5','20', 1, 2),
('Lentejita ','5','10', 5, 3);
