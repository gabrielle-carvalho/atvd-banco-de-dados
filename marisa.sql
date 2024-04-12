create database marisa;
use marisa;
create table clientes(
id int auto_increment primary key,
nome varchar(20) not null,
cidade varchar(40)
);
create table pedidos(
id int auto_increment primary key,
produto varchar (50) not null,
quantidade int not null,
clientes_id int,
foreign key(clientes_id)references clientes(id)

);
drop table pedidos;
drop table clientes;
drop database marisa;


SELECT c.nome
FROM clientes c
INNER JOIN pedidos p ON c.id= p.clientes_id
WHERE p.produto = 'camiseta';
