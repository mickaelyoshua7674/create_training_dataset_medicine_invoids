DROP TABLE IF EXISTS #NCMS;
SELECT
    ftp.codigo_ncm,
	COUNT(ftp.descricao) AS qtde_descricao
	INTO #NCMS
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
	ftp.descricao LIKE '%dipirona%'
GROUP BY ftp.codigo_ncm
ORDER BY ftp.codigo_ncm;

SELECT
    ftp.codigo_ncm,
	COUNT(ftp.descricao) AS qtde_descricao
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
WHERE ftp.codigo_ncm NOT IN (SELECT codigo_ncm FROM #NCMS) AND ftp.descricao LIKE '%reagente%'
GROUP BY ftp.codigo_ncm
ORDER BY ftp.codigo_ncm;
-- Consulta código NCM: https://www.freenfe.com.br/consulta-ncm