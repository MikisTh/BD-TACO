.import aminoacidos.csv aminoacidos
.import acidos-graxos.csv acidos-graxos
.import alimentos.csv alimentos
.import dri.csv DRI

CREATE TABLE RDA_DRI (
    'IdAlimento' int PRIMARY KEY AUTOINCREMENT,
    'Id_RDA' int NOT NULL FOREIGN KEY,
    'Id_Dieta' int NOT NULL FOREIGN KEY,
    'Id_Taco' int NOT NULL FOREIGN KEY, 
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
    'Saturados' varchar(20),
    'Mono-insaturados' varchar(20),
    'Poli-insaturados' varchar(20),    
    '12:0' varchar(20),
    '14:0' varchar(20),
    '16:0' varchar(20),
    '18:0' varchar(20),
    '20:0' varchar(20),
    '22:0' varchar(20),
    '24:0' varchar(20),
    '14:1' varchar(20),
    '16:1' varchar(20),
    '18:1' varchar(20),
    '20:1' varchar(20),
    '18:2 n-6' varchar(20),
    '18:3 n-3' varchar(20),
    '20:4' varchar(20),
    '20:5' varchar(20),
    '22:5' varchar(20),
    '22:6' varchar(20),
    '18:1t' varchar(20),
    '18:2t' varchar(20),
    CONSTRAINT fk_PesAlimento FOREIGN KEY (Id_Alimento) REFERENCES Taco (Id_Alimento)
    CONSTRAINT fk_PesRDA FOREIGN KEY (Id_RDA) REFERENCES RDA (Id_RDA),
    CONSTRAINT fk_PesDieta FOREIGN KEY (Id_Dieta) REFERENCES Dieta (Id_Dieta)

);

