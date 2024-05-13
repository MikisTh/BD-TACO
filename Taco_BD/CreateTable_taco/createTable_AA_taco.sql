.import aminoacidos.csv aminoacidos

CREATE TABLE Aminoacidos(
    'IdAlimento' varchar(20),
    'CategoriaAlimento' varchar (20),
    'DescricaoAlimento' varchar (200),
    'Triptofano' varchar(20),
    'Treonina' varchar(20),
    'Isoleucina' varchar(20),
    'Leucina' varchar(20),
    'Lisina' varchar(20),
    'Metionina' varchar(20),
    'Cisteina' varchar(20),
    'fenilalanina' varchar(20),
    'Tirosina' varchar(20),
    'Valina' varchar(20),
    'Arginina' varchar(20),
    'Histina' varchar(20),
    'Alanina' varchar(20),
    'AcidoAspartico' varchar(20),
    'AcidoGlutamico' varchar(20),
    'Glicina' varchar(20),
    'Prolina' varchar(20),
    'Serina' varchar(20),    
    FOREIGN KEY (Id_Alimento) REFERENCES Taco (Id_Alimento)
);