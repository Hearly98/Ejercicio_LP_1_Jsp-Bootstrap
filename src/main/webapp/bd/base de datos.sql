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

insert into subject values(null,'CU0001','LPI','3','José Atúncar');

update subject set code='CU0002', name = 'LPII',  level='4', teacher = 'José Atúncar' 
where idsubject = 2;

create procedure usp_buscar(cod int)
	select * from subject where idsubject = cod;

-- prueba
call usp_buscar(1);

/* Tabla niveles */
create table tb_level(
	level char(2) not null,
    des_level varchar(50) not null,
    constraint pk_level primary key (level)
);

insert into tb_level values('1','Primer ciclo');
insert into tb_level values('2','Segundo ciclo');
insert into tb_level values('3','Tercer ciclo');
insert into tb_level values('4','Cuarto ciclo');
insert into tb_level values('5','Quinto ciclo');
insert into tb_level values('6','Sexto ciclo');

select * from tb_level;



create table estudiantes(
	id int not null auto_increment,
    nombre_apellido varchar(100) not null,
    tipo_doc varchar(20) not null,
    num_doc varchar(20) not null,
    carrera varchar(50) not null,
    constraint pk_estudiante primary key (id)
);

