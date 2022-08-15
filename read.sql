
CREATE TABLE user(
id int not null auto_increment,
name varchar(50) not null,
edad int not null,
email varchar(100) not null,
primary key(id)
);

INSERT INTO user (name, edad, email) VALUES ('Abel', 20, 'abelamarilla51777@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Layla', 15, 'layla@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Nicolas', 36, 'Nicolas@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Jose', 7, 'Jose@gmail.com');



-- Tipos de SELECT

select * from user;

--LIMIT sirve para limitar la cantidad de recursos que se van a retonar hacia nosotros
select * from user limit 1;

--Mayor que
select * from user where edad > 15;

--Mayor o igual
select * from user where edad >= 15;

--OR es la union entre condiciones
select * from user where edad > 20 or email = 'Layla@gmail.com';

--Distinto que
select * from user where email != 'layla@gmail.com';
select * from user where edad between 15 and 30;
select * from user where edad like '%gmail%';
select * from user where edad like '%gmail';
select * from user where edad like 'abel%';

--orden ascendencendente y descendente
select * from user order by edad asc;
select * from user order by edad desc;
--seleccionar la mayor o menor edad
select max(edad) as mayor from user;
select min(edad) as menor from user;

--Seleccionando columnas
select id, name from user;

--cambiar nombre de la columna
select id, name as nombre from user;


