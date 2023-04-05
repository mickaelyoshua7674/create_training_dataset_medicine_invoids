DROP TABLE IF EXISTS #CNAES;
SELECT
    COUNT(ftp.descricao) AS qtde_descricao,
    est.cnae_fiscal
	INTO #CNAES
FROM NFE_PUBLICA_PRODUCAO.dbo.FATO_PRODUTO AS ftp
LEFT JOIN NFE_PUBLICA_PRODUCAO.dbo.DIM_COMBUSTIVEL AS dcb
	ON ftp.id_combustivel = dcb.id_combustivel
LEFT JOIN NFE_PUBLICA_PRODUCAO.dbo.DIM_MEDICAMENTO AS md
	ON ftp.id_medicamento = md.id_medicamento
LEFT JOIN NFE_PUBLICA_PRODUCAO.dbo.FATO_NFE AS ftn
	ON ftp.id_chave = ftn.id_chave
LEFT JOIN NFE_PUBLICA_PRODUCAO.dbo.DIM_DESTINATARIO_EMITENTE AS dde
	ON ftn.id_emitente = dde.id_destinatario_emitente
LEFT JOIN NFE_PUBLICA_PRODUCAO.dbo.DIM_CPF_CNPJ AS dcc
	ON dde.id_cpf_cnpj = dcc.id_cpf_cnpj
LEFT JOIN RF_DA.dbo.estabelecimentos AS est
	ON est.cnpj_completo = dcc.cnpj
LEFT JOIN RF_DA.dbo.empresas AS emp
	ON emp.cnpj_basico = est.cnpj_basico
LEFT JOIN RF_DA.dbo.cnae AS cna
	ON cna.codigo_da_atividade_economica = est.cnae_fiscal
WHERE
	ftp.descricao LIKE '%dipirona%' OR
	ftp.descricao LIKE '%ibuprofeno%' OR
	ftp.descricao LIKE '%ciprofloxacino%' OR
	ftp.descricao LIKE '%amoxacilina%' OR
	ftp.descricao LIKE '%ambroxol%' OR
	ftp.descricao LIKE '%nistatina%' OR
	ftp.descricao LIKE '%soro%'
GROUP BY est.cnae_fiscal
ORDER BY est.cnae_fiscal;

SELECT
    COUNT(ftp.descricao) AS qtde_descricao,
    est.cnae_fiscal
FROM NFE_PUBLICA_PRODUCAO.dbo.FATO_PRODUTO AS ftp
LEFT JOIN NFE_PUBLICA_PRODUCAO.dbo.DIM_COMBUSTIVEL AS dcb
	ON ftp.id_combustivel = dcb.id_combustivel
LEFT JOIN NFE_PUBLICA_PRODUCAO.dbo.DIM_MEDICAMENTO AS md
	ON ftp.id_medicamento = md.id_medicamento
LEFT JOIN NFE_PUBLICA_PRODUCAO.dbo.FATO_NFE AS ftn
	ON ftp.id_chave = ftn.id_chave
LEFT JOIN NFE_PUBLICA_PRODUCAO.dbo.DIM_DESTINATARIO_EMITENTE AS dde
	ON ftn.id_emitente = dde.id_destinatario_emitente
LEFT JOIN NFE_PUBLICA_PRODUCAO.dbo.DIM_CPF_CNPJ AS dcc
	ON dde.id_cpf_cnpj = dcc.id_cpf_cnpj
LEFT JOIN RF_DA.dbo.estabelecimentos AS est
	ON est.cnpj_completo = dcc.cnpj
LEFT JOIN RF_DA.dbo.empresas AS emp
	ON emp.cnpj_basico = est.cnpj_basico
LEFT JOIN RF_DA.dbo.cnae AS cna
	ON cna.codigo_da_atividade_economica = est.cnae_fiscal
WHERE  est.cnae_fiscal NOT IN (SELECT cnae_fiscal FROM #CNAES) AND ftp.descricao LIKE '%reagente%'
GROUP BY est.cnae_fiscal
ORDER BY est.cnae_fiscal;