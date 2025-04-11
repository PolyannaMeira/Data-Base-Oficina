
-- Inserção de dados para a tabela Clientes
INSERT INTO Clientes (idClientes, Nome, Endereço, Telefone) VALUES
(1, 'João Silva', 'Rua das Flores, 123', '11999999999'),
(2, 'Maria Oliveira', 'Av. Brasil, 456', '11988888888');

-- Inserção de dados para a tabela Veiculos
INSERT INTO Veiculos (idVeiculos, Placa, Modelo, Ano, Clientes_idClientes) VALUES
(1, 'ABC1234', 'Fiat Uno', '2010', 1),
(2, 'XYZ5678', 'Ford Ka', '2015', 2);

-- Inserção de dados para a tabela Mecânicos
INSERT INTO Mecânicos (idMecânicos, Nome, Endereço, Especialidade) VALUES
(1, 'Carlos Souza', 'Rua A, 100', 'Motor'),
(2, 'Ana Paula', 'Rua B, 200', 'Freios');

-- Inserção de dados para a tabela Equipes
INSERT INTO Equipes (idEquipes, Nome) VALUES
(1, 'Equipe Alpha'),
(2, 'Equipe Beta');

-- Associação de Mecânicos às Equipes
INSERT INTO Equipes_Mecânicos (Equipes_idEquipes, Mecânicos_idMecânicos) VALUES
(1, 1),
(1, 2);

-- Inserção de dados para a tabela Peças
INSERT INTO Peças (idPeças, Descrição, Valor) VALUES
(1, 'Filtro de Óleo', '30.00'),
(2, 'Pastilha de Freio', '150.00');

-- Inserção de dados para a tabela Serviços
INSERT INTO Serviços (idServiços, Descrição, Valor_Mão_de_Obra) VALUES
(1, 'Troca de Óleo', '50.00'),
(2, 'Revisão dos Freios', '120.00');

-- Inserção de dados para a tabela Ordem de Serviço (OS)
INSERT INTO `Ordem de Serviço (OS)` 
(idOrdem_de_Serviço, Data_de_Emissão, Valor_TOTAL, Status, Data_de_conclusão, Veiculos_idVeiculos, Equipes_idEquipes, Autorização_do_Cliente)
VALUES
(1, '2025-04-01', '180.00', 'Concluída', '2025-04-03', 1, 1, TRUE),
(2, '2025-04-05', '270.00', 'Em Andamento', NULL, 2, 1, TRUE);

-- Inserção de dados para a tabela Itens de OS
INSERT INTO `Itens de OS` 
(idItens_de_OS, Quantidade, `Ordem de Serviço (OS)_idOrdem_de_Serviço`, Peças_idPeças, Serviços_idServiços)
VALUES
(1, 1, 1, 1, 1), -- Troca de Óleo com Filtro
(2, 1, 2, 2, 2); -- Revisão dos Freios com Pastilha
