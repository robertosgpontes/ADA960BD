SELECT aluno_id,
	AVG(nota) AS "Média"
	FROM nota
	GROUP BY aluno_id
	HAVING AVG(nota) < 7;
	
SELECT * FROM disciplina;

SELECT a.nome_completo_aluno, d.codigo, d.descricao, n.nota
	FROM nota AS n
	LEFT JOIN disciplina AS d
			ON n.disciplina_id = d.id
	LEFT JOIN aluno AS a
			ON n.aluno_id = a.id
	
SELECT aluno_id,
	AVG(nota) AS "Média"
	FROM nota
	GROUP BY aluno_id
	
SELECT aluno.nome_completo_aluno,
	AVG(nota)
	FROM nota
		INNER JOIN aluno
		ON aluno_id = aluno.id
	GROUP BY aluno.id;
	

SELECT a.nome_completo_aluno, avg(nota) as "media"
FROM nota
LEFT JOIN aluno as a
ON nota.aluno_id = a.id
group by a.nome_completo_aluno



SELECT nome_completo_aluno AS nome_aluno, 
		data_nascimento,
		uf.sigla as UF, 
		municipio.nome as municipio,
		b.nome, mres.nome as mun_res, ufres.sigla as ufres
	FROM aluno
	INNER JOIN municipio
		ON aluno.naturalidade_id=municipio.id
	INNER JOIN uf
		ON municipio.uf_id=uf.id
	INNER JOIN bairro AS b
		ON aluno.bairro_id = b.id
	INNER JOIN municipio AS mres
		ON b.municipio_id=mres.id
	INNER JOIN uf AS ufres
		ON mres.uf_id=ufres.id



WITH mun_uf AS (SELECT municipio.id, municipio.nome as municipio_nome, uf.nome as uf_nome, uf.sigla
	FROM municipio
	INNER JOIN uf
		ON municipio.uf_id=uf.id),
	 xpto as (SELECT * FROM nota)
	SELECT al.nome_completo_aluno AS nome_aluno, 
			al.data_nascimento,
			muf1.sigla as UF, 
			muf1.municipio_nome as municipio,
			b.nome, muf_res.municipio_nome as mun_res, muf_res.sigla as ufres
		FROM aluno AS al
		INNER JOIN mun_uf AS muf1 ON al.naturalidade_id = muf1.id
		INNER JOIN bairro AS b
			ON al.bairro_id = b.id
		INNER JOIN mun_uf AS muf_res ON b.municipio_id = muf_res.id




