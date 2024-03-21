create database SenseFit;
use SenseFit;

create table cliente(
idCliente INT auto_increment, 
nome VARCHAR(40) not null,
sigla CHAR(3) not null,
cep char(9) not null,
endereco VARCHAR(50) not null, 
numero INT,
responsavel VARCHAR(50) not null, 
contato CHAR(12),
primary key (idCliente)
 ) auto_increment=1;
 
 INSERT INTO Cliente 
(Nome, sigla, endereco, responsavel, numero, responsavel, contato)
VALUES
('Green Fit', 'GRF', '03142020', 'Avenida Conselheiro Carrão', 666, 'Pedro Henrique', '11-999872111'),
('Esperto Fit','ESP', '04543040', 'Rua Oscar Freire', 228, 'Thiago Silva', '11-999862000'),
('Bu Fit', 'BUF', '06634080', 'Av. Mato Grosso', 3520,'Maria Pertra', '11-999862000'),
('Ledi Fit','LEF' '87830020', 'Avenida Paulista', 735,'Kelly Rejk' '11-999862000'),
('Test Fit','TSF', '87833221', 'Avenida Dutra', 33, 'Tristan Iuri',  '11-999862000');

create table sensor(
idSensor INT auto_increment,
dataAtualizacao datetime,
usoSensor INT,

primary key (idSensor)
 ) auto_increment=100;
 
 INSERT INTO sensor
(dataAtualizacao, usoSensor)
VALUES
(2024-03-15, 11),
(2024-02-17, 4),
(2023-12-15, 2),
(2024-01-08, 8),
(2023-11-13, 1);
 
 create table maquinaSuperior(
idMqnaSuperiro INT auto_increment,
nomeMqna	   VARCHAR(40) NOT NULL,
dataAtualizcao datetime,

PRIMARY KEY PK_idMqnaSuperiro (idMqnaSuperiro),
FOREIGN KEY ForeignKey_idSensor (FK_idSensor) REFERENCES Cliente (idSensor)

)auto_increment=2000;

 INSERT INTO maquinaSuperior
 (nomeMqna, dataAtualizacao, FK_idSensor)
 values
 ('Supino reto', 2024-03-05, 1),
 ('Supino inclinado', 2024-02-19, 2),
 ('Tríceps máquina', 2024-01-20, 3),
 ('Tríceps máquina', 2024-01-20, 4);

create table maquinaInferior(
idMqnaInferior INT auto_increment,
nomeMqna	   VARCHAR(30) NOT NULL,
dataAtualização datetime,

PRIMARY KEY PK_idMqnaSuperiro (idMqnaSuperiro),
FOREIGN KEY ForeignKey_idSensor (FK_idSensor) REFERENCES Cliente (idSensor)
)auto_increment=3000;

 INSERT INTO maquinaInferior
 (nomeMqna, dataAtualizacao, FK_idSensor)
 values
 ('Leg press', 2024-03-05, 5),
 ('Leg press', 2023-10-19, 6),
 ('Cadeira abdução', 2024-01-20, 7),
 ('Cadeira de adução', 2024-01-20, 8);

create table maquinaCardio(
idMqnaCardio INT auto_increment,
nomeMqna	   VARCHAR(30) NOT NULL,
dataAtualização datetime,

PRIMARY KEY PK_idMqnaSuperiro (idMqnaSuperiro),
FOREIGN KEY ForeignKey_idSensor (FK_idSensor) REFERENCES Cliente (idSensor)
)auto_increment=4000;

INSERT INTO maquinaCardio
 (nomeMqna, dataAtualizacao, FK_idSensor)
 values
 ('Esteira', 2023-01-03, 9),
 ('Esteira', 2024-01-02, 10),
 ('Bicicleta', 2024-02-20, 11),
 ('Eliptico', 2024-01-20, 12);