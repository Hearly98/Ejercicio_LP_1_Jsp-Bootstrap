drop database BD_Veterinaria;
create database BD_Veterinaria;
use BD_Veterinaria;

CREATE TABLE atenciones (
    idMaskota INT NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(6) NOT NULL,
    nombre_dueño VARCHAR(50) NOT NULL,
    nombre_mascota VARCHAR(50) NOT NULL,
    fecha_cita DATE NOT NULL ,
	tipo_atencion VARCHAR(50),
    diagnostico VARCHAR(100),
    cel_dueño VARCHAR(9),
    PRIMARY KEY (idMaskota)
);
select * from atenciones ;
insert into atenciones values (null ,'FO0001', 'Julio Perez', 'Firulais', '2023-02-23', 'Vacunacion', 'Vacuna antirrábica','998213122');
