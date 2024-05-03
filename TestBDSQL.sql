CREATE DATABASE mikisDB; //Cria um novo banco de dados SQL.
DROP DATABASE mikisDB; //elimina um banco de dados SQL existente.

CREATE TABLE Users (
    UserID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
//Cria nova tabela um um banco de dados.

DROP TABLE Users; //elimina uma tabela existente em um banco de dados.

TRUNCATE TABLE Users; //excluir os dados dentro de uma tabela.

//é usada para adicionar, excluir ou modificar colunas em uma tabela existente.

//adiciona uma coluna em uma tabela
ALTER TABLE Users
ADD Email varchar(255);

ALTER TABLE Users
ADD DateOfBirth date;

//remove uma coluna de uma tabela.
ALTER TABLE Users
DROP COLUMN Email;

ALTER TABLE Users
DROP COLUMN DateOfBirth;

//modifica o tipo de dados de uma coluna.
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;

ALTER TABLE Users
MODIFY COLUMN DateOfBirth year;


//Create Constraints

NOT NULL- Garante que uma coluna não pode ter um valor NULL
UNIQUE- Garante que todos os valores em uma coluna sejam diferentes
PRIMARY KEY- Uma combinação de a NOT NULLe UNIQUE. Identifica exclusivamente cada linha em uma tabela
FOREIGN KEY - Impede ações que destruiriam links entre tabelas
CHECK- Garante que os valores em uma coluna satisfaçam uma condição específica
DEFAULT- Define um valor padrão para uma coluna se nenhum valor for especificado
CREATE INDEX- Usado para criar e recuperar dados do banco de dados muito rapidamente

//NOT NULL - Uma coluna NÃO aceita valores NULL;
//Garante que as colunas NÃO aceitarão valores NULL quando a tabela for criada:
CREATE TABLE Users (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);
//Cria restrição na coluna especificada quando a tabela já estiver criada;
ALTER TABLE Users
MODIFY Age int NOT NULL;

//UNIQUE - Garante que todos os valores em uma coluna sejam diferentes;
//Cria uma restrição na coluna especificada quando a tabela é criada;
CREATE TABLE Users (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);

//Nomeia e define uma restrição em diversas colunas;
CREATE TABLE Users (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_User UNIQUE (ID,LastName)
);
//Cria uma restrição na coluna especificada quando a tabela já estiver criada;
ALTER TABLE Users
ADD UNIQUE (ID);
//Nomeia e define uma restrição em diversas colunas;
ALTER TABLE Users
ADD CONSTRAINT UC_User UNIQUE (ID,LastName);
//Elimina uma restrição;
ALTER TABLE Users
DROP INDEX UC_User;

//PRIMARY KEY - identifica exclusivamente cada registro em uma tabela;
//Cria uma PRIMARY KEY na coluna especificada quando a tabela é criada;
CREATE TABLE Users (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
//Permite a nomeação e definição de uma PRIMARY KEY em múltiplas colunas;
CREATE TABLE Users (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_User PRIMARY KEY (ID,LastName)
);
//cria uma PRIMARY KEY na coluna especificada quando a tabela já estiver criada;
ALTER TABLE User
ADD PRIMARY KEY (ID);
//Permite a nomeação e definição de uma PRIMARY KEY em múltiplas colunas;
ALTER TABLE User
ADD CONSTRAINT PK_User PRIMARY KEY (ID,LastName);
//Elimina uma PRIMARY KEY;
ALTER TABLE Users
DROP PRIMARY KEY;

//FOREIGN KEY - Evitar ações que destruiriam links entre tabelas;
//Campo (ou coleção de campos) em uma tabela, que se refere a PRIMARY KEY em outra tabela.;
//Cria um FOREIGN KEYna coluna especificada quando a tabela é criada;
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    UserID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
//Permite a nomeação e definição de uma FOREIGN KEY em múltiplas colunas;
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    UserID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_UserOrder FOREIGN KEY (UserID)
    REFERENCES Users(UserID)
);
//Cria uma FOREIGN KEY na coluna especificada quando a tabela já estiver criada;
ALTER TABLE Orders
//Permite a nomeação de uma FOREIGN KEY em múltiplas colunas;
ALTER TABLE Orders
ADD CONSTRAINT FK_UserOrder
FOREIGN KEY (UserID) REFERENCES Users(UserID);
//Elimina uma FOREIGN KEY;
ALTER TABLE Orders
DROP FOREIGN KEY FK_UserOrder;


//CHECK - Limita o intervalo de valores que pode ser colocado em uma coluna;
//Cria um CHECK na coluna especificada quando a tabela é criada;
CREATE TABLE Users (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);
//Permite a nomeação e definição de um CHECK em múltiplas colunas;
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_User CHECK (Age>=18 AND City='Sandnes')
);
//Cria um CHECK na coluna especificada quando a tabela já estiver criada;
ALTER TABLE Users
ADD CHECK (Age>=18);
//Permite a nomeação e define um CHECK em múltiplas colunas;
ALTER TABLE Users
ADD CONSTRAINT CHK_PersonAge CHECK (Age>=18 AND City='Sandnes');
//Elimina um CHECK;
ALTER TABLE Users
DROP CHECK CHK_PersonAge;

//DEFAULT - define um valor padrão para uma coluna;
// define um valor para a coluna especificada quando a tabela é criada:
CREATE TABLE Users (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);

CREATE TABLE Orders (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT CURRENT_DATE()
);
//Criar um DEFAULT na coluna especificada quando a tabela já estiver criada;
ALTER TABLE Users
ALTER City SET DEFAULT 'Sandnes';
//Elimina um DEFAULT;
ALTER TABLE Users
ALTER City DROP DEFAULT;

//CREATE INDEX - Cria índices em tabelas;

//Cria um índice em uma tabela.
CREATE INDEX users_name
ON table_name (column1, column2, ...);

//Cria um índice exclusivo em uma tabela. Valores duplicados não são permitidos:
CREATE UNIQUE INDEX users_name
ON table_name (column1, column2, ...);

//Cria um índice em uma combinação de colunas;
CREATE INDEX idx_pname
ON Users (LastName, FirstName);

//Exclui um índice em uma tabela;
ALTER TABLE users_name
DROP INDEX index_name;

//AUTO_INCREMENT - Recurso de incremento automático;
CREATE TABLE Users (
    Userid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Userid)
);

ALTER TABLE Users AUTO_INCREMENT=100;

INSERT INTO Users (FirstName,LastName)
VALUES ('Thiago','Mikis');

//DATAS
DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY

SELECT * FROM Orders WHERE OrderDate='2008-11-11'

//VIEWS -  Tabela virtual baseada no conjunto de resultados de uma instrução SQL;
//Cria uma visualização:
CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';

CREATE VIEW [Products Above Average Price] AS
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);

CREATE OR REPLACE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';

DROP VIEW [Brazil Customers];