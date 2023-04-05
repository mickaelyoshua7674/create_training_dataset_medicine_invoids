SELECT TOP 500000
    ftp.id_produto,
    ftp.codigo_cfop,
	ftp.codigo_cest,
	ftp.codigo_ncm,
    ftp.codigo_ean,
    ftp.descricao,
    ftp.unidade,
    ftp.id_medicamento,
    md.cod_anvisa,
    ftp.id_combustivel,
    dcb.codigo_anp,
    dcc.cnpj,
    emp.razao_social,
    cna.nome_da_atividade_economica,
    est.cnae_fiscal,
    est.cnae_secundaria
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