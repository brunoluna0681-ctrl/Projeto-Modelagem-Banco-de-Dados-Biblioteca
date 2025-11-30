CREATE TABLE Cliente (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR (255) NOT NULL,
  cpf VARCHAR (11),
  endereço VARCHAR (255),
  telefone VARCHAR (11),
  email VARCHAR (255)
  );
  
  CREATE TABLE Livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR (255),
    data_lançamento DATE,
    genero VARCHAR (255)
    );
    
    CREATE TABLE Reserva (
      data_reserva DATE NOT NULL,
      data_devolução DATE,
      id_cliente INT NOT NULL,
      id_livro INT NOT NULL,
      PRIMARY KEY (id_cliente, id_livro, data_reserva),
      
      FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
      FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
      );
      
      INSERT INTO Cliente (nome, cpf, endereço, telefone, email) VALUES
      ('Bruno Luna Ervolino','12312312311','Rua Estados Unidos, 1000','11900000000','bruno.lolo@yahoo.com'),
      ('Carla Chess','12412412411','Rua Estados Unidos, 1001','11900004400','carla.lili@outlook.com'),
      ('Caleb','12212212212','Rua Estados Unidos, 1002','11900066000','caleb.lala@gmail.com');
      
      INSERT INTO Livro (titulo, data_lançamento, genero) VALUES
      ('Bíblia NVI','2001-12-11','Religioso'),
      ('O pequeno príncipe','1943-11-02','Aventura'),
      ('As 5 linguagens do amor','1992-04-01','Auto ajuda');
      
      
      INSERT INTO Reserva(id_cliente, id_livro, data_reserva) VALUES (1, 1, '2025-11-30');
      INSERT INTO Reserva(id_cliente, id_livro, data_reserva) VALUES (2, 2, '2025-11-30');
      INSERT INTO Reserva(id_cliente, id_livro, data_reserva) VALUES (3, 3, '2025-11-30');
      
      