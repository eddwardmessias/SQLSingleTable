create database grupo_quatro_single_table;

create table tab_ficha_profissional(
Id int not null primary key auto_increment,
Nome varchar(100) not null,
Email varchar(60) not null,
Telefone varchar(16) not null,
Lougradoro varchar(100) not null,
Numero varchar(6) not null,
Bairro varchar(50) not null,
Cidade varchar(50) not null,
Estado varchar(50) not null,
Salario_Minimo decimal(6,2) not null,
Salario_Maximo decimal(6,2) not null,
Estrangeiro bit(1) not null
);

alter table tab_ficha_profissional add column Profissao varchar(50);

alter table tab_ficha_profissional modify column Email varchar(100) not null;

insert into tab_ficha_profissional ( Nome , Email, Telefone, Lougradoro, Numero, Bairro, Cidade, Estado,
Salario_Minimo, Salario_Maximo, Estrangeiro) values 
('Eddward Messias', 'eddwardmessias@gmail.com', '083988639028', 'Av. Dom Pedro l', '1400', 'Itararé','Campina Grande', 'Paraiba', 1500, 4500, 1),
('Marcos Paulo', 'marcospaulo@gmail','81991547020','Av. Jornalista Alberto Francisco Torres', '405-A','Icaraí','Niterói','Rio de Janeiro',1250,1900, 1),
('Luis Carlos', 'luiscarlos@gmail','091985445566','Rua 07 de setembro', '1234','Central','Belém','Pará', 1500, 3500, 1 ), 
('Caroline Silva Costa', 'carolsilvacosta@gmail.com','1146325698',' Rua Jacarau', '109',' Jardim São João',' Guarulhos','São Paulo',1200,'3000',0), 
('Claudia Maia','claudiamaia@hotmail.com','081988304060','Av. Brasil','1991','Centro','Porto Alegre','Rio Grande do Sul',3000,9500,1),
('Lais Costa','laiscostast@gmail.com', '39871726814','Rua Joao Leite de Godoy', '277', 'Agua Vermelha', 'Poá', 'São Paulo', 1200, 5000, 1),
('Dayane', 'sistemas12day@gmail.com', '091985324369', 'Travessa Padre Antônio Franco',  '2421', 'Matinha','Cametá', 'Pará', 2.000, 5.000, 1),
('Natália Sabino', 'natalia@gmail.com','1145687965','Rua Conde Juliano', '140','Vila Suiça','Santo André','São Paulo', 2000 , 2500, 1),
('Daniela Aguiar', 'daniela@gmail.com','1145687966','Rua Sigma', '130','Vila Palmares','São Paulo','São Paulo',1500,1800, 0),
('James Gosling','jamesgosling100%java@hotmail.com', '021991654172', 'Street Jonh People', '579','Red Hook', 'Brooklyn','New York', 3000, 9000, 0);

select * from tab_ficha_profissional;

update tab_ficha_profissional set profissao= 'Desevolvedor Java Treinee' where id=1;

update tab_ficha_profissional set profissao= 'Escritor' where id=2;

update tab_ficha_profissional set profissao= 'Cantor' where id=3;

update tab_ficha_profissional set profissao= 'Arquiteta de Software' where id=4;

update tab_ficha_profissional set profissao= 'Desenvolvedora Java Sênior' where id=5;

update tab_ficha_profissional set profissao= 'Desenvolvedora Java Pleno' where id=6;

update tab_ficha_profissional set profissao= 'Desenvolvedora Java Júnior' where id=7;

update tab_ficha_profissional set profissao= 'Desenvolvedora Java Júnior' where id=8;

update tab_ficha_profissional set profissao= 'Desenvolvedora Java Júnior' where id=9;

update tab_ficha_profissional set profissao= 'Software Engineer' where id=10;

select * from tab_ficha_profissional;

delete from tab_ficha_profissional where Estrangeiro= 0;

update tab_ficha_profissional set Lougradoro='PRACA DA SE', Numero = 'S/N', Bairro = 'CENTRO', Cidade = 'SAO PAULO', Estado = 'SP' where id=3;


select * from tab_ficha_profissional;

select Nome, Email, Profissao, Salario_Minimo, Salario_Maximo from tab_ficha_profissional order by nome, profissao asc;

select Nome, Email, Profissao, Salario_Minimo, Salario_Maximo from tab_ficha_profissional order by  Profissao, Salario_Maximo asc;


select profissao, count(profissao) from tab_ficha_profissional group by profissao;

select min(Salario_Minimo) from tab_ficha_profissional;

select * from tab_ficha_profissional where nome like 'MARCOS PAULO%' and salario_maximo > 12000 and salario_maximo <= 2000.0
and estado = 'RJ' or estado = 'SC' or estado = 'SP';

