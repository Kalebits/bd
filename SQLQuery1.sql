create database xd;
use xd;

create table cliente(cod_clie numeric(4) not null primary key,
nome_clie varchar(20) not null,
endereco varchar(30),
cidade varchar(15),
cep char(8),
uf char(2),
cnpj char(16),
ie char(12)
)

create table vendedor(cod_ven numeric(4) not null primary key,
nome_ven varchar(20) not null,
salario_fixo numeric (10,2),
comissao char(1)
)

create table produto(cod_prod numeric(4) not null primary key,
unidade varchar(3),
descricao varchar(20),
val_unit numeric(8,2)
)

create table pedido(num_pedido numeric(4) not null primary key,
pr_entrega numeric(3) not null,
cod_clie_fk numeric(4) references cliente,
cod_ven_fk numeric(4) references vendedor
)

create table item_pedido(num_pedido_fk numeric(4) references pedido,
cod_prod_fk numeric(4) references produto,
quant numeric(8,2)

)

insert into cliente values (720, 'Ana', 'Rua 17 n.19', 'Niter�i', 24358310, 'RJ', '12113231/0001-34', 2134);
insert into cliente values (870, 'Fl�vio', 'Av. Pres. Vargas, 10', 'S�o Paulo', 22763931, 'SP', '22534126/9387-9', 4631);
insert into cliente values (110, 'Jorge', 'Rua Caiap�, 13', 'Curitiba', 30078500, 'PR', '14512764/9834-9', null);
insert into cliente values (222, 'L�cia', 'Rua Itabira, 123', 'Belo Horizonte', 22124391, 'MG', '283152123/9348-8', 2985);
insert into cliente values (830, 'Mauricio', 'Av. Paulista, 1236', 'S�o Paulo', 3012683, 'SP', '32816985/7465-6', 9343);
insert into cliente values (130, 'Edmar', 'Rua da Praia, s/n', 'Salvador', 30079300, 'BA', '23463284/234-9', 7121);
insert into cliente values (410, 'Rodolfo', 'Largo da Lapa, 27', 'Rio de Janeiro', 30078900, 'RJ', '12835128/2346-9', 7431);
insert into cliente values (20, 'Beth', 'Av. Clim�rio, 45', 'S�o Paulo', 25679300, 'SP', '32485126/7326-8', 9280);
insert into cliente values (157, 'Paulo', 'Trav. Moraes, casa 3', 'Londrina', null, 'PR', '32848223/324-2', 1923);
insert into cliente values (180, 'L�vio', 'Av. Beira Mar, 1256', 'Florian�polis', 30077500, 'SC', '12736571/2347-4', 1111);
insert into cliente values (260, 'Susana', 'Rua Lopes Mandes, 12', 'Niter�i', 30046500, 'RJ', '21763571/232-9', 2530);
insert into cliente values (290, 'Renato', 'Rua Meireles, 123', 'S�o Paulo', 30225900, 'SP', '13276571/1231-4', 1820);
insert into cliente values (390, 'Sebasti�o', 'Rua da Igreja, 10', 'Uberaba', 30438700, 'MG', '32176547/213-3', 9071);
insert into cliente values (234, 'Jos�', 'Quadra 3, Bl. 3, sl. 1003', 'Bras�lia', 22841650, 'DF', '21763576/1232-3', 2931);

insert into vendedor values(209, 'Jos�', 1800.00, 'C');
insert into vendedor values(111, 'Carlos', 2490.00, 'A');
insert into vendedor values(11, 'Jo�o',  2780.00, 'C');
insert into vendedor values(240, 'Ant�nio', 9500.00, 'C');
insert into vendedor values(720, 'Felipe', 4600.00, 'A');
insert into vendedor values(213, 'Jonas', 2300.00, 'A');
insert into vendedor values(101, 'Jo�o', 2650.00, 'C');
insert into vendedor values(310, 'Josias', 870.00, 'B');
insert into vendedor values(250, 'Maur�cio', 2930.00, 'B');

insert into produto values(25, 'KG', 'Queijo', 0.97);
insert into produto values(31, 'BAR', 'Chocolate', 0.87);
insert into produto values(78, 'L', 'Vinho', 2.00);
insert into produto values(22, 'M', 'Linho', 0.11);
insert into produto values(30, 'SAC', 'A��car', 0.30);
insert into produto values(53, 'M', 'Linha', 1.80);
insert into produto values(13, 'G', 'Ouro', 6.18);
insert into produto values(45, 'M', 'Madeira', 0.25);
insert into produto values(87, 'M', 'Cano', 1.97);
insert into produto values(77, 'M', 'Papel', 1.05);

insert into pedido values (121,20,410,209);
insert into pedido values (97,20,720,101); 
insert into pedido values (101,15,720,101); 
insert into pedido values (137,20,720,720); 
insert into pedido values (148,20,720,101); 
insert into pedido values (189,15,870,213); 
insert into pedido values (104,30,110,101); 
insert into pedido values (203,30,830,250); 
insert into pedido values (98,20,410,209); 
insert into pedido values (143,30,20,111); 
insert into pedido values (105,30,180,240); 
insert into pedido values (111,15,260,240); 
insert into pedido values (103,20,260,11); 
insert into pedido values (91,20,260,11); 
insert into pedido values (138,20,260,11); 
insert into pedido values (108,15,290,310); 
insert into pedido values (119,30,390,250); 
insert into pedido values (127,10,410,11); 

insert into item_pedido values (121,25,10); 
insert into item_pedido values (121,31,35); 
insert into item_pedido values (97,77,20); 
insert into item_pedido values (101,31,9); 
insert into item_pedido values (101,78,18); 
insert into item_pedido values (101,13,5); 
insert into item_pedido values (98,77,5); 
insert into item_pedido values (148,45,8); 
insert into item_pedido values (148,31,7); 
insert into item_pedido values (148,77,3); 
insert into item_pedido values (148,25,10); 
insert into item_pedido values (148,78,30); 
insert into item_pedido values (104,53,32); 
insert into item_pedido values (203,31,6); 
insert into item_pedido values (189,78,45); 
insert into item_pedido values (143,31,20); 
insert into item_pedido values (143,78,10); 


select * from vendedor
select nome_ven "Nome do Vendedor", comissao from vendedor
select nome_ven "Nome do Vendedor", salario_fixo "Salario" from vendedor order by salario_fixo asc
select * from pedido
select * from item_pedido order by num_pedido_fk, cod_prod_fk
select * from pedido order by cod_ven_fk
select descricao "item", val_unit "Pre�o" from produto
select nome_ven "Nome do Vendedor", comissao from vendedor order by comissao desc
select salario_fixo "salario atual", salario_fixo * 1.15 * 0.95 "Salario Reajustado" from vendedor
select nome_clie "Nome do Cliente", uf from cliente where uf = 'SP'
select * from cliente where uf != 'SP'
select * from vendedor where comissao = 'B' order by comissao asc
select * from produto where val_unit > 0.70
