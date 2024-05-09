CREATE TABLE Users (
    RA varchar(9),
    Cpf varchar(14),
    LastName varchar(255),
    FirstName varchar(255),
    IdAluno varchar(255),
    IdProfessor varchar(255),
    IdFuncionarios varchar(255),
    Contacts contacts(255),
    Adress adress(255),
);

CREATE TABLE Students (
    RA varchar(9),
    Cpf varchar(14),
    LastName varchar(255),
    FirstName varchar(255),
    Curso varchar(255),
    Disciplina varchar(255)
);

CREATE TABLE Adress (
    CEP varchar(8),
    Rua varchar(255),
    Bairro varchar(255),
    Numero number (255),
    Cidade varchar(255)
);
CREATE TABLE Contacts (    
    Telefone varchar(255),
    Email varchar(255)    
);

CREATE TABLE Teacher (
    RA varchar (9),
    Cpf varchar(14),
    LastName varchar(255),
    FirstName varchar(255),
    Departamento varchar(255),
    Disciplina varchar(255)
);

CREATE TABLE Book (
    NºISBN varchar (9),
    Titulo varchar(14),
    SubTitulo varchar(255),
    AnoPublicacao varchar(255),
    Paginas varchar(255),
    Autor varchar(255),
    Genero varchar(255),
    Edicao varchar(255),
    idEditora varchar (255),
    idUsuario varchar (255)
);

CREATE TABLE Library (
    Categoria varchar (9),
    Cnpj varchar(14),
    nºdeRegistro varchar(255),
    Estantes varchar(255),
    Andar varchar(255),
    Responsável varchar(255),
    idLivro varchar (255)
);

CREATE TABLE Author (    
    Nome varchar(255),
    Nacionalidade varchar(255),
    Codigo varchar (255),
    idLivro varchar (255)    
);

CREATE TABLE Editora (    
    Nome varchar(255),    
    CodigoEditorial varchar (255),
    Contacts contacts (255),
    Adress adress (255),    
);