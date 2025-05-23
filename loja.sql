create database loja;
use loja;
create table produto(
codigoProduto int primary key not null auto_increment,
descricao varchar(70) not null,
tipo varchar(80) not null,
quantidade int not null,
preco float not null
);
insert into produto (codigoProduto, descricao, tipo, quantidade, preco)
values(56644, "Iphone 14 pro max", "celular", 2, 6657.58),
(64547, "Iphone 13 mini", "celular", 15, 25057.54),
    (3524, "Iphone X pro", "celular", 6, 14758.54),
    (3235, "Iphone 12", "celular", 4, 14675.65),
    (8765, "Iphone 14", "celular", 8, 19657.69),
    (2389, "Iphone 11 pro", "celular", 4, 5957.96),
    (95725, "Samsumg galaxy S10", "celular", 3, 8574.89),
    (86486, "Iphone 12 pro max", "celular", 5, 6657.56),
    (2474, "Iphone X pro max", "celular", 3, 9958.45),
    (7548, "Iphone 14 po max", "celular", 2, 6583.56),
    (4798547, "Iphone 14 pro max", "celular", 2, 6657.56);
    select * from produto;
    select tipo , sum(quantidade) as 'estoque' from produto group by tipo having sum (preco) > 5000;
    select tipo, sum(quantidade) as 'estoque' from produto where preco>7000 and preco < 10000;
    select tipo, sum(quantidade) as 'estoque' from produto where  preco >= 3000 and preco <= 7000;
    truncate table produto;
   
    create table professor (
    id int not null,
    nome varchar (45) not null,
    idade int not null
    );
    select * from professor;
   
    create table estudante (
    id int not null,
    nome varchar (45) not null,
    idade int not null
    );
    select * from estudante;
    select e.id, e.nome, p.id, p.nome from estudante as e inner join professor as p on e.nome = p.nome;
    select e.nome, p.nome from estudante as e left join professor as p on e.nome = p.nome;
    select e.nome, p.nome from estudante as e right join professor as p on e.nome = p.nome;
    select e.nome, p.nome from estudante as e right join professor as p on e.nome = p.nome where e.nome is null;
    select e.nome, p.nome from estudante as e full outer join professor as p on e.nome = p.nome;
   
    select distinct quantidade from produto;
