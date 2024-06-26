.import alimentos.csv alimentos

CREATE TABLE ComposicaoCentesimal(
    'IdAlimento' int PRIMARY KEY AUTOINCREMENT,
    'CategoriaAlimento' varchar (20),
    'DescricaoAlimento' varchar (200),
    'Umidade' varchar(20),
    'EnergiaKcal' varchar(20),
    'EnergiaKj' varchar(20),
    'Proteina' varchar(20),
    'Lipideos' varchar(20),
    'Colesterol' varchar(20),
    'Carboidrato' varchar(20),
    'FibraAlimentar' varchar(20),
    'Cinzas' varchar(20),
    'Calcio' varchar(20),
    'Magnesio' varchar(20),
    'Manganes' varchar(20),
    'Fosforo' varchar(20),
    'Ferro' varchar(20),
    'Sodio' varchar(20),
    'Postassio' varchar(20),
    'Cobre' varchar(20),
    'Zinco' varchar(20),
    'Retinol' varchar(20),
    're' varchar(20),
    'rae' varchar(20),
    'Tiamina' varchar(20),
    'Riboflavina' varchar(20),
    'Piridoxina' varchar(20),
    'Niacina' varchar(20),
    'AcidoAscorbico' varchar(20),    
    FOREIGN KEY (Id_Alimento) REFERENCES Taco (Id_Alimento)

);
