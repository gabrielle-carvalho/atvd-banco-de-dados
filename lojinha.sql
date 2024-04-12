create database lojinha;
use lojinha;
 create table cliente(
 id int auto_increment primary key,
 nome varchar (30) not null,
 idade int not null);

 create table pedidos(
 id int auto_increment primary key,
 valor float not null,
 cliente_id  int,
foreign key(cliente_id)references cliente(id)
 );
 
 SELECT c.nome, c.idade
FROM cliente c
INNER JOIN pedidos p ON c.id = p.cliente_id
WHERE c.idade > 30 AND p.valor >= 200;
