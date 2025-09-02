#### Inserção de dados nas tabelas ####

#Tabela de cargos#

INSERT INTO cargos (descritivo) VALUES
('Analista de Sistemas'), 
('Desenvolvedor Web'), 
('Gerente de Projetos'), 
('DBA'), 
('Analista de RH'),
('Assistente Administrativo'), 
('Estagiário'), 
('Técnico de Suporte'), 
('Designer Gráfico'),
('Vendedor'), 
('Diretor');

#Tabela de departamentos
INSERT INTO departamentos (descritivo) VALUES
('Tecnologia da Informação'), 
('Recursos Humanos'), 
('Administrativo'), 
('Marketing'), 
('Vendas'),
('Financeiro'), 
('Operações'), 
('Jurídico'), 
('Comercial'), 
('Logística');

#Tabela de unidades
INSERT INTO unidades (descritivo, cidade, telefone) VALUES
('Matriz', 'São Paulo', '11 1234-5678'), 
('Filial 1', 'Rio de Janeiro', '21 9876-5432'), 
('Filial 2', 'Belo Horizonte', '31 1357-9123'),
('Filial 3', 'Brasília', '61 4567-8901'), 
('Filial 4', 'Salvador', '71 1023-4567'), 
('Filial 5', 'Curitiba', '41 9012-3456'),
('Filial 6', 'Porto Alegre', '51 1234-5678'), 
('Filial 7', 'Recife', '81 9876-5432'), 
('Filial 8', 'Manaus', '92 1357-9123'),
('Filial 9', 'Goiânia', '62 4567-8901');

#Tabela de funcionarios 
INSERT INTO funcionarios (nome, sexo, data_nasc, admissao, logradouro, bairro, cidade, uf, salario, id_unidade, id_cargo, id_departamento) VALUES
('João da Silva', 'M', '1990-05-10', '2015-08-15', 'Rua A, 123', 'Centro', 'São Paulo', 'SP', 5000.00, 1, 1, 1),
('Maria Souza', 'F', '1985-11-25', '2010-02-20', 'Rua B, 456', 'Vila Mariana', 'São Paulo', 'SP', 6000.00, 2, 2, 2),
('Carlos Pereira', 'M', '1992-03-05', '2018-09-01', 'Rua C, 789', 'Pinheiros', 'São Paulo', 'SP', 4500.00, 1, 3, 1),
('Ana Paula', 'F', '1988-07-18', '2013-05-12', 'Rua D, 1011', 'Consolação', 'São Paulo', 'SP', 7000.00, 3, 4, 3),
('José Santos', 'M', '1995-12-02', '2020-06-25', 'Rua E, 1213', 'Liberdade', 'São Paulo', 'SP', 4000.00, 2, 5, 2),
('Fernanda Oliveira', 'F', '1982-09-15', '2008-11-08', 'Rua F, 1415', 'Moema', 'São Paulo', 'SP', 8000.00, 1, 1, 1),
('Pedro Almeida', 'M', '1997-06-08', '2022-03-19', 'Rua G, 1617', 'Itaim Bibi', 'São Paulo', 'SP', 3500.00, 4, 6, 4),
('Camila Rodrigues', 'F', '1989-04-22', '2014-07-05', 'Rua H, 1819', 'Vila Madalena', 'São Paulo', 'SP', 6500.00, 2, 3, 1),
('Lucas Silva', 'M', '1993-10-30', '2019-01-12', 'Rua I, 2021', 'Jardins', 'São Paulo', 'SP', 5500.00, 3, 2, 2),
('Mariana Ferreira', 'F', '1987-08-03', '2012-12-28', 'Rua J, 2223', 'Brooklin', 'São Paulo', 'SP', 7500.00, 1, 4, 3);

#Tabela de dependentes
INSERT INTO dependentes (nome, sexo, data_nasc, id_funcionario) VALUES
('Sofia Silva', 'F', '2010-04-15', 1), 
('Miguel Souza', 'M', '2012-07-20', 2), 
('Isabela Pereira', 'F', '2015-11-05', 3),
('Enzo Paula', 'M', '2018-02-10', 4), 
('Valentina Santos', 'F', '2021-09-25', 5), 
('Laura Almeida', 'F', '2013-06-18', 7),
('Matheus Rodrigues', 'M', '2016-12-02', 8), 
('Manuela Silva', 'F', '2019-08-08', 9), 
('Lucas Ferreira', 'M', '2011-03-22', 10),
('Giovanna Oliveira', 'F', '2014-01-30', 6),
('Maria Silva', 'F', '2010-01-15', 1),
('João Souza', 'M', '2012-05-20', 2), 
('Ana Paula', 'F', '2015-09-10', 3), 
('Pedro Almeida Paula', 'M', '2018-03-05', 4); 

#Tabela de projetos
INSERT INTO projetos (descritivo, bonus) VALUES
('Desenvolvimento de Novo Sistema', 10.00),
('Implementação de Banco de Dados', 30.00),
('Criação de Website Institucional', 20.00),
('Campanha de Marketing Digital', 15.00),
('Reestruturação do Departamento de RH', 20.00),
('Otimização de Processos Internos', 15.00),
('Expansão da Área de Vendas', 10.00),
('Desenvolvimento de Aplicativo Mobile', 15.00),
('Implantação de Sistema de Segurança', 20.00),
('Consultoria Financeira', 10.00);


#Tabela de projetos_funcionarios
INSERT INTO projetos_funcionarios (datai, horast, id_projeto, id_funcionario) VALUES
('2023-01-15', 40, 1, 1), 
('2023-02-20', 30, 2, 2), 
('2023-03-10', 20, 3, 3), 
('2023-04-05', 40, 1, 4),
('2023-05-12', 35, 2, 5), 
('2023-06-18', 25, 3, 6), 
('2023-07-22', 40, 1, 7), 
('2023-08-28', 30, 2, 8),
('2023-09-05', 20, 3, 9), 
('2023-10-10', 40, 1, 10);

