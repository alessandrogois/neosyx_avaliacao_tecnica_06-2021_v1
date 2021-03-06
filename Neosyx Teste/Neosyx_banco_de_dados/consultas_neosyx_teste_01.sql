-- Questão 01

CREATE TABLE estados ( 
codigo_estados INT AUTO_INCREMENT, 
nome_estados VARCHAR(30) NOT NULL, 
PRIMARY KEY(codigo_estados)
); 

CREATE TABLE cidades ( 
codigo_cidades INT AUTO_INCREMENT, 
nome_cidades VARCHAR(30) NOT NULL,
codigo_estados INT,
PRIMARY KEY (codigo_cidades),
FOREIGN KEY (codigo_estados)
    REFERENCES estados(codigo_estados)
); 

CREATE TABLE operadores (
codigo_operadores INT AUTO_INCREMENT , 
nome_operadores VARCHAR(30) NOT NULL, 
codigo_estados INT,
PRIMARY KEY (codigo_operadores),
FOREIGN KEY (codigo_estados)
    REFERENCES estados(codigo_estados)
);

CREATE TABLE ligacoes (
    codigo_ligacoes INT AUTO_INCREMENT,
    numero_cliente varchar(15),
    data_hora_ligacoes DATETIME,
    codigo_operadores INT,
    PRIMARY KEY (codigo_ligacoes),
    FOREIGN KEY(codigo_operadores)
        REFERENCES operadores(codigo_operadores)
);

-- Questão 02

-- Inserir valores na tabela estados
INSERT INTO estados VALUE (1, 'Rio de Janeiro');
INSERT INTO estados VALUE (2, 'Sao Paulo');
INSERT INTO estados VALUE (3, 'Espirito Santo');
INSERT INTO estados VALUE (4, 'Minas Gerais');

-- Inserir valores na tabela cidades
INSERT INTO cidades VALUES (21, 'Rio de Janeiro', 1),(22, 'Niteroi', 1),(23, 'Nova Iguacu', 1);
INSERT INTO cidades VALUES (41, 'Vitoria', 3),(42, 'Vila Velha', 3),(43, 'Cariacica', 3);
INSERT INTO cidades VALUES (11, 'Sao Paulo', 2),(12, 'Guarulhos', 2),(13, 'Campinas', 2);
INSERT INTO cidades VALUES (31, 'Belo Horizonte', 4),(32, 'Uberlandia', 4),(33, 'Contagem', 4)

-- Inserir valores na tabela operadores
INSERT INTO operadores VALUES (1, 'Joao Mendonca', 1),(2, 'Jose da Silva', 1),(3, 'Andreson Vieira', 1),(4, 'Andreson Vieira', 1);
INSERT INTO operadores VALUES (5, 'Marcela Lira', 1),(6, 'Caroline Andreia', 1),(7, 'Carlos Da Silva', 1),(8, 'Joao Eduardo', 2);
INSERT INTO operadores VALUES (9, 'Andreson Carvalho', 2),(10, 'Andrea Pereira', 2),(11, 'Carolina Marques', 2),(12, 'Eduardo Jonas', 2);
INSERT INTO operadores VALUES (13, 'Andre Claudio', 3),(14, 'Joana Desanto', 3),(15, 'Lucas Pereira', 3),(16, 'Lucas Leonardo', 3);
INSERT INTO operadores VALUES (17, 'Joao Santos', 4),(18, 'Claudio Matuto', 4),(19, 'Leandro Borges', 4),(20, 'Janezio Fernandes', 4);

-- Inserir valores na tabela ligacoes
INSERT INTO ligacoes  VALUES (1,"13-21848-2684","2021-04-07 22:22:17",9),(2,"12-28273-9085","2021-03-10 22:03:02",12),(3,"21-96928-9217","2021-02-15 03:01:56",9),(4,"11-38717-3197","2021-03-30 19:47:42",10),(5,"32-34630-3029","2021-04-06 17:14:54",10),(6,"12-28273-9085","2021-03-10 01:48:01",8),(7,"11-67075-3723","2021-03-06 22:08:51",14),(8,"11-25985-6121","2021-02-05 20:48:09",11),(9,"42-42794-5774","2021-01-11 03:26:43",16),(10,"42-42002-9287","2021-04-05 10:17:17",13);
INSERT INTO ligacoes  VALUES(11,"21-96617-2412","2021-06-07 20:28:55",8),(12,"21-66620-9818","2021-06-14 19:02:26",4),(13,"12-28273-9085","2021-03-10 01:22:25",15),(14,"13-48917-9972","2021-01-15 18:49:48",3),(15,"32-88599-6196","2021-04-12 20:11:51",8),(16,"12-84070-8533","2021-03-21 23:09:14",11),(17,"21-40441-9608","2021-02-18 23:49:19",3),(18,"31-37563-7435","2021-06-26 10:55:32",7),(19,"33-65637-5867","2021-06-12 08:33:18",19),(20,"23-19862-2368","2021-02-23 21:15:25",3);
INSERT INTO ligacoes  VALUES(21,"21-37580-2691","2021-04-02 15:28:37",4),(22,"13-20324-1377","2021-05-08 00:15:37",12),(23,"12-94130-8700","2021-02-18 11:29:26",5),(24,"21-35800-9145","2021-06-28 05:24:47",12),(25,"11-38799-3105","2021-02-16 09:10:27",12),(26,"21-95124-4238","2021-05-14 19:04:26",8),(27,"11-69398-2011","2021-01-14 01:28:38",9),(28,"21-65029-3452","2021-06-02 23:28:31",7),(29,"21-56760-2020","2021-02-17 00:22:20",12),(30,"12-28273-9085","2021-03-10 04:04:18",9);
INSERT INTO ligacoes  VALUES(31,"11-70655-4240","2021-03-02 13:04:29",1),(32,"21-57012-6495","2021-06-30 13:53:05",4),(33,"21-78797-2359","2021-02-04 01:50:45",11),(34,"43-54534-1336","2021-01-25 09:14:26",8),(35,"21-10248-9358","2021-04-02 18:29:53",11),(36,"11-87231-5427","2021-01-16 23:07:30",11),(37,"33-69219-6201","2021-05-10 11:27:18",4),),(38,"23-54535-1377","2021-02-10 15:22:28",3),(39,"13-90034-5116","2021-03-22 02:07:00",6),(40,"11-65385-6244","2021-02-22 13:42:51",13);
INSERT INTO ligacoes  VALUES(41,"41-68918-3453","2021-06-09 03:27:35",14),(42,"21-85889-2725","2021-02-03 04:16:24",2),(43,"11-49358-1714","2021-05-15 20:32:17",14),(44,"21-31464-3374","2021-04-13 00:21:50",17),(45,"11-61452-1388","2021-02-07 11:59:43",12),(46,"12-76601-8378","2021-01-02 18:18:13",4),(47,"31-52056-3000","2021-05-02 08:18:27",20),(48,"21-11992-7121","2021-06-25 10:03:08",1),(49,"11-47851-6996","2021-03-31 03:00:52",12),(50,"42-17242-5940","2021-06-28 09:29:59",7);
INSERT INTO ligacoes  VALUES(51,"21-86102-3866","2021-03-24 15:03:10",19),(52,"13-29944-2319","2021-02-03 06:46:22",3),(53,"41-47738-9912","2021-06-03 08:30:17",1),(54,"11-72954-3064","2021-03-27 12:02:38",3),(55,"11-91863-2566","2021-02-04 03:35:46",1),(56,"11-90933-5604","2021-03-09 06:48:33",5),(57,"32-99148-6888","2021-03-25 13:09:27",16),(58,"22-63139-6551","2021-03-01 20:31:30",12),(59,"31-49829-4362","2021-03-31 06:00:12",14),(60,"21-69502-5244","2021-02-23 05:33:04",20);
INSERT INTO ligacoes  VALUES(61,"43-12796-8062","2021-04-01 12:20:43",1),(62,"32-17176-2072","2021-03-29 21:03:07",6),(63,"41-21044-2291","2021-06-02 23:22:09",13),(64,"42-80288-8462","2021-01-21 01:41:43",10),(65,"11-10381-3945","2021-06-28 11:14:34",2),(66,"23-51236-1035","2021-05-14 21:00:24",18),(67,"11-91863-2566","2021-02-04 03:25:31",5),(68,"21-34178-2655","2021-02-15 22:17:47",13),(69,"23-56672-6178","2021-05-01 05:24:18",9),(70,"31-43512-4601","2021-04-25 13:03:33",9);
INSERT INTO ligacoes  VALUES(71,"11-57472-1657","2021-03-07 11:24:50",20),(72,"33-61290-3546","2021-01-26 16:11:48",17),(73,"23-19862-2368","2021-02-23 16:38:50",3),(74,"12-28273-9085","2021-03-10 10:38:43",9),(75,"21-74319-9005","2021-07-07 03:20:36",13),(76,"21-78797-2359","2021-02-04 09:47:31",1),(77,"33-34415-1544","2021-02-08 12:52:47",4),(78,"12-76601-8378","2021-01-02 21:51:31",10),(79,"11-63368-7563","2021-02-28 10:46:13",19),(80,"21-11830-8390","2021-02-14 19:04:15",11);
INSERT INTO ligacoes  VALUES(81,"21-58583-2103","2021-07-01 03:07:41",8),(82,"21-24915-4216","2021-05-23 19:51:47",16),(83,"21-69502-5244","2021-02-23 15:19:35",10),(84,"33-45711-8585","2021-03-20 03:05:49",16),(85,"22-50421-2698","2021-04-14 22:37:04",19),(86,"21-49080-1711","2021-06-23 19:01:11",13),(87,"43-11163-3707","2021-06-03 18:03:07",2),(88,"23-91913-2667","2021-06-10 12:24:46",3),(89,"43-34091-8478","2021-04-09 12:50:16",19),(90,"21-52962-2351","2021-03-04 22:45:43",18);
INSERT INTO ligacoes  VALUES(91,"31-80447-6804","2021-05-31 13:39:35",13),(92,"21-28977-6658","2021-04-01 00:40:48",8),(93,"43-50695-9286","2021-05-29 15:19:04",4),(94,"13-66151-9118","2021-05-21 07:26:39",19),(95,"33-38116-6859","2021-06-22 22:05:44",4),(96,"32-69169-3070","2021-06-29 18:43:31",8),(97,"23-19862-2368","2021-02-23 07:41:08",20),(98,"43-40879-1131","2021-06-14 16:41:30",17),(99,"33-87254-5362","2021-07-08 23:56:31",5),(100,"21-75628-5535","2021-07-08 08:31:35",6);