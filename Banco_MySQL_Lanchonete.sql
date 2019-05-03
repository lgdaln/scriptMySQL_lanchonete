/*
Retirada a chave estrangeira cod_atendente de pedido
inserido nome_atendente ao pedido
*/

CREATE DATABASE lanchonete;

USE lanchonete

CREATE TABLE Cliente(
cod_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR(100)
);

CREATE TABLE Atendente(
cod_atendente INT PRIMARY KEY AUTO_INCREMENT,
nome_atendente VARCHAR(200)
);

CREATE TABLE Pedido(
cod_pedido INT PRIMARY KEY AUTO_INCREMENT,
data_pedido DATE,
hora_pedido TIME,
descricao_pedido VARCHAR(200),
status_pedido VARCHAR(200),
obs_pedido VARCHAR(200),
cod_cliente INT,
foreign key(cod_cliente) references Cliente(cod_cliente),
/*nome_atendente VARCHAR(200)*/
cod_atendente INT,
foreign key(cod_atendente) references Atendente(cod_atendente)
);

CREATE TABLE Tipo(
cod_tipo INT PRIMARY KEY AUTO_INCREMENT,
descricao_tipo VARCHAR(200)
);

CREATE TABLE Produto(
cod_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(100),
descricao_produto VARCHAR(200),
valor_produto FLOAT,
cod_tipo INT,
foreign key(cod_tipo) references Tipo(cod_tipo)
);

CREATE TABLE Venda(
qtde_venda INT,
total_venda FLOAT,
cod_pedido INT,
foreign key(cod_pedido) references Pedido(cod_pedido),
cod_tipo INT,
foreign key(cod_tipo) references Tipo(cod_tipo)
);

CREATE TABLE CardapioDoDia(
cod_cardapio INT PRIMARY KEY AUTO_INCREMENT,
nome_cardapio VARCHAR(100),
valor_cardapio DECIMAL(10,2)
);

INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Água', '2.50');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Café', '1.00');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Refrigerante', '3.50');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Cuscuz com queijo', '4.50');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Cuscuz com carne', '5.00');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Cuscuz com ovos', '4.50');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Baguete com queijo', '3.50');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Baguete com carne', '4.00');
INSERT INTO  CardapioDoDia (nome_cardapio, valor_cardapio) VALUES ('Baguete com ovos', '3.50');



INSERT INTO  atendente (nome_atendente) VALUES ('Joaquim');
INSERT INTO  atendente (nome_atendente) VALUES ('Joana');
INSERT INTO  atendente (nome_atendente) VALUES ('Maria');

INSERT INTO  cliente (nome_cliente) VALUES ('Pedro');


INSERT INTO  Pedido (data_pedido, hora_pedido, descricao_pedido, status_pedido, obs_pedido, cod_cliente) VALUES ('30/04/2019', '10:00', 'baguete', 'Elaboração', 'sem cebola', '1');
INSERT INTO  Pedido (data_pedido, hora_pedido, descricao_pedido, status_pedido, obs_pedido, cod_cliente) VALUES ('30/04/2019', '10:00', 'café', "Finalizado", 'sem cebola', '1');
INSERT INTO  Pedido (data_pedido, hora_pedido, descricao_pedido, status_pedido, obs_pedido, cod_cliente) VALUES ('30/04/2019', '10:00', 'água sem gás', "Entregue", 'sem cebola', '1');

UPDATE pedido SET cod_atendente=1 WHERE cod_pedido = 2;

