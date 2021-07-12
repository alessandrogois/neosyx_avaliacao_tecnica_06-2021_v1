-- Questão 3

SELECT DATE(l.data_hora_ligacoes) AS 'Data das Ligações', COUNT(l.numero_cliente) AS 'Quantidade de Ligações' FROM ligacoes l
	GROUP BY DATE(l.data_hora_ligacoes)
	ORDER BY 2 DESC ;
    
 -- Questão 4   
SELECT c.nome_cidades AS 'Cidades', COUNT(l.numero_cliente) AS 'Número de Ligações' FROM ligacoes l 
	INNER JOIN cidades c ON c.codigo_cidades = substr(l.numero_cliente,1,2)
GROUP BY c.nome_cidades;

-- Questão 5
SELECT l.numero_cliente AS 'Numero Cliente', l.data_hora_ligacoes AS 'Data Hora',
	    CASE    
	        WHEN TIME(data_hora_ligacoes) BETWEEN '00:00:00' AND '05:59:59' THEN 'MADRUGADA'
	        WHEN TIME(data_hora_ligacoes) BETWEEN '06:00:00' AND '11:59:59' THEN 'MANHA'
	        WHEN TIME(data_hora_ligacoes) BETWEEN '12:00:00' AND '17:59:59' THEN 'TARDE'
	        WHEN TIME(data_hora_ligacoes) BETWEEN '18:00:00' AND '23:59:59' THEN 'NOITE'
	        -- ELSE 'NOITE'
	        END AS 'Período'
	    FROM ligacoes l;

-- Questão 6
SELECT 	
		concat(cast((count(l.numero_cliente)/(SELECT COUNT(L2.numero_cliente) FROM ligacoes l2)*100) AS DEC(10,2)),'%') "Percentual de Ligações",
		c.nome_cidades Cidade
	FROM ligacoes l 
		INNER JOIN cidades c ON c.codigo_cidades = substr(l.numero_cliente,1,2)
	GROUP BY c.nome_cidades; 
    
    
    -- Questão 7
    SELECT 
	DATE(data_hora_ligacoes) DATA,
	numero_cliente numerocliente,
	COUNT(DATE(data_hora_ligacoes)) Rechamadas
FROM ligacoes l 
	GROUP BY DATE(data_hora_ligacoes), numero cliente
	ORDER BY 3 DESC;