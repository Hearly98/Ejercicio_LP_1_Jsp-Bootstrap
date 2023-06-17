create database demo;

use demo;
create table subject(
	idsubject int not null auto_increment,
    code varchar(100) not null,
    name varchar(100) not null,
    level varchar(100) not null,
    teacher varchar(100) not null,
    constraint pk_subject primary key (idsubject)
);
select * from subject;

/* Tabla niveles */
create table tb_level(
	level char(2) not null,
    des_level varchar(50) not null,
    constraint pk_level primary key (level)
);

insert into subject values(null,'CU0001','LPI','3','José Atúncar');

update subject set code='CU0002', name = 'LPII',  level='4', teacher = 'José Atúncar' 
where idsubject = 2;

create procedure usp_buscar(cod int)
	select * from subject where idsubject = cod;

-- prueba
call usp_buscar(1);

create table estudiantes(
	id int not null auto_increment,
    nombre_apellido varchar(100) not null,
    tipo_doc varchar(20) not null,
    num_doc varchar(20) not null,
    carrera varchar(50) not null,
    constraint pk_estudiante primary key (id)
);

