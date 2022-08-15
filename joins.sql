CREATE TABLE products(
    id int not null auto_increment,
    name varchar(50) not null,
    create_by int not null,
    marca varchar(50) not null,
    primary key(id),
    fireign key(create_by) references user (id)
);
--Renombrar nombre de una tabla
rename TABLE products to product;

INSERT INTO product (name, create_by, marca) 
VALUES
 ('ipad', 1, 'apple'),
 ('iphone', 1, 'apple'),
 ('watch', 2, 'apple'),
 ('macbook', 1, 'apple'),
 ('imac', 3, 'apple'),
 ('ipad mini', 2, 'apple');
 SELECT * FROM product;

--Left join te trae algunos atributos de la tabla izquierda
 SELECT u.id, u.email, p.name FROM user u LEFT JOIN product p on u.id = p.create_by; 

--Es lo mismo que leftjoin pero de la tabla derecha

 SELECT u.id, u.email, p.name FROM user u RIGHT JOIN product p on u.id = p.create_by; 

 --INNER JOIN
 --Trae la interseccion de dos tablas
  SELECT u.id, u.email, p.name FROM user u INNER JOIN product p on u.id = p.create_by;

  --CROSS JOIN te entrega el producto cartesioano de da latbla
 
 SELECT u.id, u.name, p.id, p.name FROM user u CROSS JOIN product p;

 --GROUP BY se utiliza con instrucciones para agrupar elementos en registros idividuales
 SELECT count(id), marca from product GROUP BY  marca;
 SELECT count(p.id), u.name from product p LEFT JOIN user u on u.id = p.create_by GROUP by p.create_by;

--HAVING 
SELECT count(p.id), u.name from product p LEFT JOIN user u 
on u.id = p.create_by GROUP by p.create_by
HAVING count(p.id) >= 2;

--DROP TABLE para eliminar tablas
DROP TABLE product;
DROP TABLE animales;
DROP TABLE user;


























