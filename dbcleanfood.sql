drop database dbcleanfood;

create database dbcleanfood;

use dbcleanfood;

create table tbreceitas(
cod_receita int,
cod_usuario int,
rende_quantidade int,
rende_medidas real,
nome_receita varchar(50),
imagem_receita blob

);

create table tbpasso(
 cod_passo int,
 cod_receita int,
 mode_de_preparo varchar(500),
 descricao varchar(500)
 ); 

create table tbtppreparo(
cod_tempo_de_preparo int,
cod_receita int,
cod_passo int

);
create table tbingredientes(
cod_ingrediente int,
cod_receita int,
nome_ingrediente varchar(100)

);

create table tbavaliacao(
cod_avaliacao int,
cod_receita int,
cod_cliente int,
cod_usuario int

);

create table tbcliente(
cod_cliente int,
nome varchar(100),
sobrenome varchar(100),
senha varchar(20)
datanasc date,
cpf char(14),
email varchar(40)
);

create table tbusuario(
cod_usuario int,
cod_receita int,
datanasc date,
endereco varchar(50),
cidade varchar(50),
bairro varchar(50),
cep char(9),
nome varchar(100),
cpf char(14),
email varchar(40),
telCel char(10),
senha varchar(8)

);

create table tbingredientesreceitas(
cod_ingrediente int,
cod_receita int,
qtand_ingrediente int,
medida_ingrediente char(50)

);

create table tbmedida(
cod_medida int,
cod_ingrediente int,
cod_quantidade int,
grama char(5),
quilograma char(5),
mililtro char(5)
);

create table tbquantidade(
cod_quantidade int,
cod_medida int,
nome_quantidade varchar(50)
);

show tables;

select * from tbreceitas;
select * from tbpasso;
select * from tbtppreparo;
select * from tbingredientes;
select * from tbavaliacao;
select * from tbcliente;
select * from tbingredientesreceitas;
select * from tbmedida;
select * from tbquantidade;








