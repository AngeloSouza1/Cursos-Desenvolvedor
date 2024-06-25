-- Criando a base de dados
CREATE DATABASE IF NOT EXISTS orm_mysql;
USE orm_mysql;

-- Criando a tabela de clientes
CREATE TABLE IF NOT EXISTS clientes (
                                        id INT AUTO_INCREMENT PRIMARY KEY,
                                        nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    cpf VARCHAR(14) UNIQUE NOT NULL
    );

-- Inserindo 10 registros na tabela de clientes
INSERT INTO clientes (nome, telefone, cpf) VALUES
                                               ('Lucas Andrade', '11987654321', '123.456.789-01'),
                                               ('Mariana Nunes', '11912345678', '234.567.890-12'),
                                               ('Gabriel Ferreira', '21987654321', '345.678.901-23'),
                                               ('Laura Pereira', '31987654321', '456.789.012-34'),
                                               ('Rodrigo Almeida', '41987654321', '567.890.123-45'),
                                               ('Carla Moura', '51987654321', '678.901.234-56'),
                                               ('Thiago Ribeiro', '61987654321', '789.012.345-67'),
                                               ('Aline Silva', '71987654321', '890.123.456-78'),
                                               ('Bruno Costa', '81987654321', '901.234.567-89'),
                                               ('Fernanda Lima', '91987654321', '012.345.678-90');

-- Criando a tabela de fornecedores
CREATE TABLE IF NOT EXISTS fornecedores (
                                            id INT AUTO_INCREMENT PRIMARY KEY,
                                            nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    cnpj VARCHAR(18) UNIQUE NOT NULL,
    endereco VARCHAR(255)
    );

-- Inserindo 10 registros na tabela de fornecedores
INSERT INTO fornecedores (nome, telefone, cnpj, endereco) VALUES
                                                              ('Fornecedor Alpha', '1123456789', '12.345.678/0001-01', 'Rua Alpha, 100, São Paulo, SP'),
                                                              ('Fornecedor Beta', '2123456789', '23.456.789/0001-12', 'Avenida Beta, 200, Rio de Janeiro, RJ'),
                                                              ('Fornecedor Gamma', '3123456789', '34.567.890/0001-23', 'Praça Gamma, 300, Belo Horizonte, MG'),
                                                              ('Fornecedor Delta', '4123456789', '45.678.901/0001-34', 'Alameda Delta, 400, Porto Alegre, RS'),
                                                              ('Fornecedor Epsilon', '5123456789', '56.789.012/0001-45', 'Rua Epsilon, 500, Curitiba, PR'),
                                                              ('Fornecedor Zeta', '6123456789', '67.890.123/0001-56', 'Avenida Zeta, 600, Salvador, BA'),
                                                              ('Fornecedor Eta', '7123456789', '78.901.234/0001-67', 'Praça Eta, 700, Fortaleza, CE'),
                                                              ('Fornecedor Theta', '8123456789', '89.012.345/0001-78', 'Alameda Theta, 800, Recife, PE'),
                                                              ('Fornecedor Iota', '9123456789', '90.123.456/0001-89', 'Rua Iota, 900, Belém, PA'),
                                                              ('Fornecedor Kappa', '10123456789', '01.234.567/0001-90', 'Avenida Kappa, 1000, Manaus, AM');
q
