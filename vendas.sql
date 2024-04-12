create database empresa;
use empresa;

create table vendas(
id int auto_increment primary key,
produto varchar(30) not null,
quantidade int not null,
dataVenda date
);


insert into vendas(produto, quantidade, dataVenda)
values("Camiseta",10,'2022-05-15'),
("Calca",5, '2022-06-20'),
("Camiseta",8,'2022-06-30'),
("Camiseta",6,'2022-07-10'),
("Calca",4,'2022-08-05');

select * from vendas;     
drop database empresa;           
           
select month (dataVenda) as mes, produto, sum(quantidade) as total_vendas
from vendas
group by mes, produto
order by mes asc;
