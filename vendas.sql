create database empresa;
use empresa;

create table vendas(
id int auto_increment primary key,
produto varchar(30) not null,
quantidade int not null,
dataVenda date
);

insert into vendas(produto, quantidade, dataVenda)
values(&quot;Camiseta&quot;,10,&#39;2022-05-15&#39;),
(&quot;Calca&quot;,5, &#39;2022-06-20&#39;),
(&quot;Camiseta&quot;,8,&#39;2022-06-30&#39;),
(&quot;Camiseta&quot;,6,&#39;2022-07-10&#39;),
(&quot;Calca&quot;,4,&#39;2022-08-05&#39;);

select * from vendas;
drop database empresa;

select month (dataVenda) as mes, produto, sum(quantidade) as total_vendas
from vendas
group by mes, produto
order by mes asc;
