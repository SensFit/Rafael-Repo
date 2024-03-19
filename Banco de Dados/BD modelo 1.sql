create database SenseFit;
use SenseFit;

create table cliente(
idCliente INT auto_increment, 
nome VARCHAR(40) not null,
sigla CHAR(3) not null,
endereco VARCHAR(50) not null, 
responsavel VARCHAR(50) not null, 
contato CHAR(12),
primary key (idCliente)
 ) auto_increment=1;

create table sensor(
idSensor INT auto_increment,
dataAtualizacao datetime,
usoSensor INT,

primary key (idSensor)
 ) auto_increment=100;
 
 create table maquinaSuperior(
idMqnaSuperiro INT auto_increment,
nomeMqna	   VARCHAR(30) NOT NULL,
dataAtualização datetime,
-- sensor		(fk de outra tabela)

)auto_increment=2000;

create table maquinaInferior(
idMqnaInferior INT auto_increment,
nomeMqna	   VARCHAR(30) NOT NULL,
dataAtualização datetime,
-- sensor		(fk de outra tabela)
)auto_increment=3000;

create table maquinaCardio(
idMqnaCardio INT auto_increment,
nomeMqna	   VARCHAR(30) NOT NULL,
dataAtualização datetime,
-- sensor		(fk de outra tabela) 
)auto_increment=4000;