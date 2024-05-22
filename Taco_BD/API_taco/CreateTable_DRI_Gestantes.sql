.import gestantes.csv gestantes

CREATE TABLE RDA_Gestantes (
  
    'IdGestantes' int PRIMARY KEY AUTOINCREMENT,
    'Id_RDA' int NOT NULL FOREIGN KEY,
    'Id_Dieta' int NOT NULL FOREIGN KEY,
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
    CONSTRAINT fk_PesRDA FOREIGN KEY (Id_RDA) REFERENCES RDA (Id_RDA),
    CONSTRAINT fk_PesDieta FOREIGN KEY (Id_Dieta) REFERENCES Dieta (Id_Dieta)

);
