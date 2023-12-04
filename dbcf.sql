drop database dbcleanfood;

create database dbcleanfood;

use dbcleanfood;


create table tbusuarios(
codUsuario int not null auto_increment,
datanasc date not null,
endereco varchar(50) not null,
cidade varchar(50) not null,
bairro varchar(50) not null,
cep char(9) not null,
nome varchar(100) not null,
cpf char(14) not null unique,
email varchar(40) not null,
telCel char(10) not null,
senha varchar(8) not null,
primary key(codUsuario)         
);
create table tbclientes(
codCliente int not null auto_increment,
nome varchar(100) not null,
sobrenome varchar(100) not null,
senha varchar(9) not null,
datanasc date not null,
cpf char(14) not null unique,
email varchar(40) not null,
codUsuario int not null,
primary key(codCliente),
foreign key(codUsuario)references tbusuarios(codUsuario)
);
create table tbreceitas(
codReceita int not null auto_increment,
rendePorcoes int default 0 check(rendePorcoes>=0),
nomeReceita varchar(50) not null,
imagemDaReceita blob not null,
codCliente int not null,
primary key(codReceita),
foreign key(codCliente)references tbclientes(codCliente)
);
create table tbavaliacoes(
codAvaliacao int not null auto_increment,
comentario varchar(100) not null,
dataComentario datetime not null,
codReceita int not null,
primary key(codAvaliacao),
foreign key(codReceita)references tbreceitas(codReceita)
);
create table tbingredientes(
codIngrediente int not null auto_increment,
nomeIngrediente varchar (50) not null,
rendeMedidas varchar(8),	
codReceita int not null,
primary key(codIngrediente),
foreign key(codReceita)references tbreceitas(codReceita)
);
create table tbmedidas(
codMedida int not null auto_increment,
grama char(1) default 'g',
quilograma char(2) default 'kg',
mililitro char(2) default 'ml',
codIngrediente int not null,
primary key(codMedida),
foreign key (codIngrediente)references tbingredientes(codIngrediente)
);
create table tbquantidades(
codQtde int not null auto_increment,
nomeQtde varchar(50) not null,
qtdeIngrediente varchar(50) not null,
codMedida int not null,
primary key (codQtde),
foreign key (codMedida)references tbmedidas(codMedida)
);
create table tbpassos(
codPasso int not null auto_increment,
mododePreparo varchar(100) not null,
tempodePreparo varchar(50) not null,
codReceita int not null,
descricao varchar(100) not null,
primary key (codPasso),
foreign key (codReceita)references tbreceitas(codReceita)
);


show tables;

desc tbusuarios;
desc tbclientes;
desc tbreceitas;
desc tbavaliacoes;
desc tbingredientes;
desc tbmedidas;
desc tbquantidades;
desc tbpassos;


-- Insirindo dados 
insert into tbusuarios(datanasc,endereco,cidade,bairro,cep,nome,cpf,email,telCel,senha)
                values('2023/12/01','rua consolação','São Paulo','São judas','04858-260','Kaio santana','321.423.535-98','kaio.santana@hotmail','98754-4567','Teste@123');
insert into tbclientes(nome,sobrenome,senha,datanasc,cpf,email,codUsuario)
            values("Gabriel","Nascimento","123456","2023/12/04","432.123.765-76","gabrwil.lindo@hotmail.br",1);
insert into tbreceitas(rendePorcoes,nomeReceita,codCliente)
            values(4,"Bolo vegano de brigadeiro",1);
insert into tbavaliacoes(comentario,dataComentario,codReceita)
            values("bom demais","2023/12/04 12:12:00",1);
insert into tbingredientes(nomeIngrediente,rendeMedidas,codReceita)
            values("leite","1/2",1);
insert into tbmedidas(codIngrediente)
            values( 1);
insert into tbquantidades(nomeQtde,qtdeIngrediente,codMedida)
            values("gramas","duas coleres de sopa",1);
insert into tbpassos(mododePreparo,tempodePreparo,codReceita,descricao)
            values("Aqueca o forno a temperatura ambiente","30 min",1,"tenha um aptite");

-- Atualizando dados

-- Apagando dados 

-- Buscando dados 

select * from tbusuarios;
select * from tbclientes;
select * from tbreceitas;
select * from tbavaliacoes;
select * from tbingredientes;
select * from tbmedidas;
select * from tbquantidades;








