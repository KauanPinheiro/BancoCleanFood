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
grama char(1),
quilograma char(2) default 'kg',
mililitro char(2) default 'ml',
codIngrediente int not null,
primary key(codMedida),
foreign key (codIngrediente)references tbingredientes(codIngrediente)
);

insert into tbmedidas(g)

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
        values('2023/12/01','rua consolação','São Paulo','São judas','04858-260','Kaio santana','321.423.535-98','kaio.santana@hotmail.com','98754-4567','Teste@123');
 insert into tbusuarios(datanasc,endereco,cidade,bairro,cep,nome,cpf,email,telCel,senha)
        values('2019/05/11','rua inhamus','São Paulo','Vila Prudente','04785-589','Julia Santos','347.475.758-32','julinha.santod@gmail.com','97459-4753','Teste@789');
insert into tbusuarios(datanasc,endereco,cidade,bairro,cep,nome,cpf,email,telCel,senha)
        values('2005/07/07','rua puruba','São Paulo','Vila gilda','07896-789','Roberto Andrade','789.756.376-18','robeto.andrade@hotmail.com','97569-3796','Teste@196');
insert into tbusuarios(datanasc,endereco,cidade,bairro,cep,nome,cpf,email,telCel,senha)
        values('2012/04/05','rua taquandava','São Paulo','Cidade ipava','03214-456','Lucas Souza','461.693.478-63','kaio.santana@hotmail.com','95832-5497','Teste@896');                                
insert into tbusuarios(datanasc,endereco,cidade,bairro,cep,nome,cpf,email,telCel,senha)
        values('2000/11/01','rua das nações unidas','São Paulo','São paulo','07514-527','Viviane Silva','189.347.534-56','vivi.silva@hotmail.com','96941-6764','Teste@635');


insert into tbclientes(nome,sobrenome,senha,datanasc,cpf,email,codUsuario)
        values("Gabriel","Nascimento","123456","2023/12/04","432.123.765-76","gabrwil.lindo@hotmail.br",1);





insert into tbreceitas(rendePorcoes,nomeReceita,codCliente)
            values(4,"Bolo vegano de brigadeiro",1);

insert into tbavaliacoes(comentario,dataComentario,codReceita)
            values("bom demais","2023/12/04 12:12:00",1);

insert into tbingredientes(nomeIngrediente,rendeMedidas,codReceita)
            values("leite","1/2",1);


-- Atualizando dados

-- Apagando dados 

-- Buscando dados 

select * from tbusuarios;
select * from tbclientes;
select * from tbreceitas;
select * from tbavaliacoes;
select * from tbingredientes;









    