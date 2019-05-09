
CREATE DATABASE lanchonete;



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
nome_produto VARCHAR(100),
descricao_produto VARCHAR(200),
valor_produto FLOAT,
cod_tipo INT,
foreign key(cod_tipo) references Tipo(cod_tipo)
);

CREATE TABLE Venda(
cod_venda INT PRIMARY KEY AUTO_INCREMENT,
valor_venda FLOAT,
fk_cod_pedido INT,
foreign key(fk_cod_pedido) references Pedido(cod_pedido)
);

CREATE TABLE CardapioDoDia(
cod_cardapio INT PRIMARY KEY AUTO_INCREMENT,
nome_cardapio VARCHAR(100),
valor_cardapio DECIMAL(10,2)
);
