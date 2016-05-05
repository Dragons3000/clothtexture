drop database rosela;
create database rosela;
use rosela

create table rol(
idRol int(3) primary key auto_increment,
nombreRol varchar(10) not null
)engine=innodb;

insert into rol values(1,"Administrador");
insert into rol values(2,"Empleado");

create table usuario(
nombreUsuario varchar(45) primary key,
contraUsuario varchar(64) not null,
estatusUsuario boolean not null default true,
rolUsuario int(3) not null,
foreign key (rolUsuario) references rol(idRol) on delete cascade on update cascade
)engine=innodb;
