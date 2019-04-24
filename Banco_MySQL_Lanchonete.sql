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
status_pedido BIT,
obs_pedido VARCHAR(200),
cod_cliente INT,
foreign key(cod_cliente) references Cliente(cod_cliente),
cod_atendente INT,
foreign key(cod_atendente) references Atendente(cod_atendente)
);

CREATE TABLE Tipo(
cod_tipo INT PRIMARY KEY AUTO_INCREMENT,
descricao_tipo VARCHAR(200)
);

CREATE TABLE Produto(
cod_produto INT PRIMARY KEY AUTO_INCREMENT,
descricao_produto VARCHAR(200),
cod_tipo INT,
foreign key(cod_tipo) references Tipo(cod_tipo)
);

CREATE TABLE Venda(
qtde_venda INT,
valor_venda FLOAT,
cod_pedido INT,
foreign key(cod_pedido) references Pedido(cod_pedido),
cod_tipo INT,
foreign key(cod_tipo) references Tipo(cod_tipo)
);


