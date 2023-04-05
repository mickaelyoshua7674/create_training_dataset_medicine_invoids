
WHERE
--FILTRO PRODUTOS
    (   -- Código para Produtos químicos orgânicos (Capítulo 29)
        ftp.codigo_ncm LIKE '29037931%' OR ftp.codigo_ncm LIKE '29054400%' OR ftp.codigo_ncm LIKE '29054500%' OR ftp.codigo_ncm LIKE '29061100%' OR
        ftp.codigo_ncm LIKE '29072200%' OR ftp.codigo_ncm LIKE '29094910%' OR ftp.codigo_ncm LIKE '29095011%' OR ftp.codigo_ncm LIKE '29162014%' OR
        ftp.codigo_ncm LIKE '29163920%' OR ftp.codigo_ncm LIKE '29181610%' OR ftp.codigo_ncm LIKE '29182110%' OR ftp.codigo_ncm LIKE '29182211%' OR
        ftp.codigo_ncm LIKE '29189940%' OR ftp.codigo_ncm LIKE '292146%' OR ftp.codigo_ncm LIKE '2922192%' OR ftp.codigo_ncm LIKE '2922193%' OR
        ftp.codigo_ncm LIKE '2922194%' OR ftp.codigo_ncm LIKE '29221995%' OR ftp.codigo_ncm LIKE '29223120%' OR ftp.codigo_ncm LIKE '2922392%' OR
        ftp.codigo_ncm LIKE '29224110%' OR ftp.codigo_ncm LIKE '29224910%' OR ftp.codigo_ncm LIKE '2922496%' OR ftp.codigo_ncm LIKE '2922501%' OR
        ftp.codigo_ncm LIKE '2922502%' OR ftp.codigo_ncm LIKE '2922503%' OR ftp.codigo_ncm LIKE '2922504%' OR ftp.codigo_ncm LIKE '29231000%' OR
        ftp.codigo_ncm LIKE '29241992%' OR ftp.codigo_ncm LIKE '29242914%' OR ftp.codigo_ncm LIKE '29242943%' OR ftp.codigo_ncm LIKE '29242951%' OR
        ftp.codigo_ncm LIKE '29242952%' OR ftp.codigo_ncm LIKE '29251910%' OR ftp.codigo_ncm LIKE '2925291%' OR ftp.codigo_ncm LIKE '29252921%' OR
        ftp.codigo_ncm LIKE '29252923%' OR ftp.codigo_ncm LIKE '292630%' OR ftp.codigo_ncm LIKE '2926901%' OR ftp.codigo_ncm LIKE '29269024%' OR
        ftp.codigo_ncm LIKE '29280020%' OR ftp.codigo_ncm LIKE '29303012%' OR ftp.codigo_ncm LIKE '29309036%' OR ftp.codigo_ncm LIKE '29321910%' OR
        ftp.codigo_ncm LIKE '2932991%' OR ftp.codigo_ncm LIKE '29329991%' OR ftp.codigo_ncm LIKE '29331111%' OR ftp.codigo_ncm LIKE '29331112%' OR
        ftp.codigo_ncm LIKE '2933212%' OR ftp.codigo_ncm LIKE '29332912%' OR ftp.codigo_ncm LIKE '29332922%' OR ftp.codigo_ncm LIKE '29332923%' OR
        ftp.codigo_ncm LIKE '29332925%' OR ftp.codigo_ncm LIKE '29332930%' OR ftp.codigo_ncm LIKE '29332991%' OR ftp.codigo_ncm LIKE '29332993%' OR
        ftp.codigo_ncm LIKE '293331%' OR ftp.codigo_ncm LIKE '29333322%' OR ftp.codigo_ncm LIKE '29333381%' OR ftp.codigo_ncm LIKE '29333915%' OR
        ftp.codigo_ncm LIKE '29333924%' OR ftp.codigo_ncm LIKE '29333932%' OR ftp.codigo_ncm LIKE '29333943%' OR ftp.codigo_ncm LIKE '29333944%' OR
        ftp.codigo_ncm LIKE '29333946%' OR ftp.codigo_ncm LIKE '29333948%' OR ftp.codigo_ncm LIKE '29333983%' OR ftp.codigo_ncm LIKE '29333992%' OR
        ftp.codigo_ncm LIKE '29335321%' OR ftp.codigo_ncm LIKE '29335340%' OR ftp.codigo_ncm LIKE '29335510%' OR ftp.codigo_ncm LIKE '29335912%' OR
        ftp.codigo_ncm LIKE '29335913%' OR ftp.codigo_ncm LIKE '29335914%' OR ftp.codigo_ncm LIKE '29335942%' OR ftp.codigo_ncm LIKE '29335991%' OR
        ftp.codigo_ncm LIKE '29337210%' OR ftp.codigo_ncm LIKE '29337910%' OR ftp.codigo_ncm LIKE '29339111%' OR ftp.codigo_ncm LIKE '29339113%' OR
        ftp.codigo_ncm LIKE '29339122%' OR ftp.codigo_ncm LIKE '29339142%' OR ftp.codigo_ncm LIKE '29339153%' OR ftp.codigo_ncm LIKE '29339162%' OR
        ftp.codigo_ncm LIKE '29339164%' OR ftp.codigo_ncm LIKE '29339911%' OR ftp.codigo_ncm LIKE '29339932%' OR ftp.codigo_ncm LIKE '29339946%' OR
        ftp.codigo_ncm LIKE '29339953%' OR ftp.codigo_ncm LIKE '29339954%' OR ftp.codigo_ncm LIKE '29339992%' OR ftp.codigo_ncm LIKE '29341030%' OR
        ftp.codigo_ncm LIKE '29343030%' OR ftp.codigo_ncm LIKE '29349122%' OR ftp.codigo_ncm LIKE '29349931%' OR ftp.codigo_ncm LIKE '29349954%' OR
        ftp.codigo_ncm LIKE '29349991%' OR ftp.codigo_ncm LIKE '29349993%' OR ftp.codigo_ncm LIKE '29350012%' OR ftp.codigo_ncm LIKE '29350021%' OR
        ftp.codigo_ncm LIKE '29350023%' OR ftp.codigo_ncm LIKE '29350024%' OR ftp.codigo_ncm LIKE '29350025%' OR ftp.codigo_ncm LIKE '29350094%' OR
        ftp.codigo_ncm LIKE '29362%' OR ftp.codigo_ncm LIKE '29371%' OR ftp.codigo_ncm LIKE '29372%' OR ftp.codigo_ncm LIKE '29375000%' OR
        ftp.codigo_ncm LIKE '29379030%' OR ftp.codigo_ncm LIKE '29389010%' OR ftp.codigo_ncm LIKE '29391122%' OR ftp.codigo_ncm LIKE '29391152%' OR
        ftp.codigo_ncm LIKE '2939116%' OR ftp.codigo_ncm LIKE '29391181%' OR ftp.codigo_ncm LIKE '29393010%' OR ftp.codigo_ncm LIKE '29394%' OR
        ftp.codigo_ncm LIKE '29395%' OR ftp.codigo_ncm LIKE '29396921%' OR ftp.codigo_ncm LIKE '29396952%' OR ftp.codigo_ncm LIKE '2939991%' OR
        ftp.codigo_ncm LIKE '2939993%' OR ftp.codigo_ncm LIKE '2941%' OR
        -- C�digos NCM para produtos farmac�uticos (Cap�tulo 30)
        ftp.codigo_ncm LIKE '30%' OR
        ftp.id_medicamento != -1 -- possui id de medicamento inv�lido
        -- FONTE: http://www5.sefaz.mt.gov.br/documents/6071037/6401784/Tabela+NCM+-+MDIC+atualizada.pdf/bc780e4b-fd2f-4312-879c-65d5fd1ff49d / P�g. 129
    ) AND
--------------------------------------------------------------------------------------------------------------------------------------------------------------
--FILTRO PESSOA JURIDICA
    (
        est.cnae_fiscal IN (2019399, 2110600, 2121101, 2121102, 2121103, 2123800, 2312500, 3299099, 3250701, 3250702, 3250705, 4618401, 4618402,
                            4644301, 4644302, 4645101, 4645103, 4664800, 4684299, 4771701, 4771702, 4771703, 4771704, 4773300, 7210000) OR -- Empresas farmoquimicas e farmaceuticas
        est.cnae_secundaria LIKE '%2019399%' OR est.cnae_secundaria LIKE '%2110600%' OR est.cnae_secundaria LIKE '%2121101%' OR est.cnae_secundaria LIKE '%2121102%' OR
        est.cnae_secundaria LIKE '%2121103%' OR est.cnae_secundaria LIKE '%2123800%' OR est.cnae_secundaria LIKE '%2312500%' OR est.cnae_secundaria LIKE '%3299099%' OR
        est.cnae_secundaria LIKE '%3250701%' OR est.cnae_secundaria LIKE '%3250702%' OR est.cnae_secundaria LIKE '%3250705%' OR est.cnae_secundaria LIKE '%4618401%' OR
        est.cnae_secundaria LIKE '%4618402%' OR est.cnae_secundaria LIKE '%4644301%' OR est.cnae_secundaria LIKE '%4644302%' OR est.cnae_secundaria LIKE '%4645101%' OR
        est.cnae_secundaria LIKE '%4645103%' OR est.cnae_secundaria LIKE '%4664800%' OR est.cnae_secundaria LIKE '%4684299%' OR est.cnae_secundaria LIKE '%4771701%' OR
        est.cnae_secundaria LIKE '%4771702%' OR est.cnae_secundaria LIKE '%4771703%' OR est.cnae_secundaria LIKE '%4771704%' OR est.cnae_secundaria LIKE '%4773300%' OR
        est.cnae_secundaria LIKE '%7210000%'
    ) AND
-- Fonte: https://www.contabilizei.com.br/contabilidade-online/cnae/ - https://concla.ibge.gov.br/busca-online-cnae.html
--------------------------------------------------------------------------------------------------------------------------------------------------------------
--FILTRO ANVISA
    md.cod_anvisa IS NULL
ORDER BY RAND();