
CREATE TABLE usuarios (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE agendamentos (
  id INT PRIMARY KEY,
  id_usuario INT,
  data DATE,
  horario_inicio TIME,
  horario_fim TIME,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

-- Inserção de dados
INSERT INTO usuarios VALUES 
(1, 'João Silva', 'joao@email.com'),
(2, 'Ana Lima', 'ana@email.com'),
(3, 'Carlos Mendes', 'carlos@email.com');

INSERT INTO agendamentos VALUES 
(1, 1, '2025-06-15', '08:00', '09:00'),
(2, 2, '2025-06-15', '09:00', '10:00'),
(3, 3, '2025-06-16', '17:00', '18:00');

-- Atualização
UPDATE usuarios SET email = 'joaosilva@email.com' WHERE id = 1;

-- Remoção
DELETE FROM agendamentos WHERE id = 2;

-- Consulta
SELECT u.nome, a.data, a.horario_inicio, a.horario_fim
FROM usuarios u
JOIN agendamentos a ON u.id = a.id_usuario;