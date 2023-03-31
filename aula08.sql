ALTER TABLE aluno 
	RENAME COLUMN nome_completo_aluno TO nome_completo;
	
INSERT INTO turma (codigo, descricao)
VALUES ('00005444', 'Turma Hypera 960');

INSERT INTO turma (codigo, descricao)
SELECT coluna_x, coluna_y FROM tabela_z;

--UPDATE table
--SET column1 = value1
--WHERE condition;

UPDATE turma
	SET descricao = 'Turma Super'
	WHERE codigo = 'RJ0001'

begin;

UPDATE turma
	SET descricao = 'Turma Super'
	WHERE codigo = '00005444';

select * from turma;

rollback; -- desfaz
commit; -- Efetiva o que foi feito

select * from turma;

-- apagar registro

BEGIN TRANSACTION;

DELETE FROM turma WHERE codigo = '00005444';

select * from turma;

commit;