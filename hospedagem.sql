CREATE TABLE pessoa(

    idpessoa INT(11) PRIMARY KEY,
    nome VARCHAR(20),
    cpf VARCHAR(15),
    rg VARCHAR(20),
    endereco VARCHAR(100),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    uf VARCHAR(2),
    cep VARCHAR(10),
    email VARCHAR(30),
    telefone VARCHAR(15)
);

CREATE TABLE cliente(

    idpessoa INT(11),
    codigo_cliente VARCHAR(10)
);

CREATE TABLE consumo(

    idconsumo INT(11) PRIMARY KEY,
    quantidade DECIMAL(7,2),
    preco DECIMAL(7,2),
    status VARCHAR(15),

    FOREIGN KEY(idreserva) REFERENCES reserva(idreserva),
    FOREIGN KEY( idproduto) REFERENCES produto(idproduto)
);

CREATE TABLE reserva(
    idreserva INT(11) PRIMARY KEY,
    data_reservada DATE,
    data_entrada DATE,
    data_saida DATE,
    custo_hospedagem DECIMAL(7,2),
    status VARCHAR(15)

    FOREIGN KEY(idcliente) REFERENCES cliente(idcliente),
    FOREIGN KEY(idsuites) REFERENCES suite(idsuites),
    FOREIGN KEY(idfuncionario) REFERENCES funcionario(idfuncionario)
);

CREATE TABLE funcionario(

    idpessoa INT(11),
    salario DECIMAL(7,2),
    acesso VARCHAR(15),
    login VARCHAR(15),
    password VARCHAR(20),
    status VARCHAR(25)
);

CREATE TABLE pagamento(
    idpagamento INT(11) PRIMARY KEY,
    idreserva INT(11)
);

CREATE TABLE produto(

    idproduto INT(11) PRIMARY KEY,
    nome VARCHAR(45),
    descricao VARCHAR(255),
    quantidade VARCHAR(20),
    preco DECIMAL(7,2)
);

CREATE TABLE suite(

    idsuite INT(11) PRIMARY KEY,
    tiposuites VARCHAR(20),
    numero VARCHAR(4),
    piso VARCHAR(2),
    descricao VARCHAR(255),
    precoDiario DECIMAL(7,2),
    status VARCHAR(15)
);