SELECT * 
	FROM uf;
	
SELECT sigla 
	FROM uf;
	
SELECT * 
	FROM nota;
	
SELECT * 
	FROM ementa;
	
SELECT * 
	FROM ementa
	WHERE disciplina_id = 1
	ORDER BY data_vigencia;
		
SELECT * 
	FROM ementa
	WHERE disciplina_id = 1 AND data_vigencia <= NOW()
	ORDER BY data_vigencia DESC
	LIMIT 1;
	




SELECT * 
	FROM aluno
	WHERE data_nascimento >= '1995-01-01'
			AND email LIKE '%@%.%'
			
SELECT * 
	FROM aluno
	WHERE data_nascimento >= '1995-01-01'
			AND email NOT LIKE '%@%.%'

SELECT * 
	FROM aluno
	WHERE data_nascimento >= '1995-01-01'
			AND NOT (email LIKE '%@%.%')
			
select * from aluno
where data_nascimento >= '1996-01-01'
or data_nascimento <= '1990-01-01'

SELECT * FROM aluno WHERE naturalidade_id IN (3250, 3225);

SELECT * FROM aluno WHERE complemento IS NOT NULL

SELECT * 
	FROM aluno 
	WHERE data_nascimento BETWEEN '1995-01-01' AND '1996-12-31';

