
WHERE
--FILTRO PRODUTOS
    (
        -- C�digo para bebidas, l�quidos alco�licos e vinagres (Cap�tulo 22)
        ftp.codigo_ncm LIKE '22071%' OR
        ftp.codigo_ncm LIKE '22072%' OR
        -- C�digo Extratos tanantes e tintoriais (Cap�tulo 32)
        ftp.codigo_ncm LIKE '320416%' OR -- corantes reagentes e prepara��es � base desses corantes
        -- C�digo para produtos para fotografia e cinematografia (Cap�tulo 37)
        ftp.codigo_ncm LIKE '370110%' OR -- filme para raio x
        -- C�digo produtos qu�micos diversos (Cap�tulo 38)
        ftp.codigo_ncm LIKE '3821%' OR -- Meios de cultura preparados para o desenvolvimento e a manuten��o de microrganismos 
        ftp.codigo_ncm LIKE '3822%' OR -- reagentes de diagn�stico ou de laborat�rio (e.g. analisador de PH, glicose liquida, f�sforo UV, hemoglobina glicada, acido urico)
        -- C�digo NCM para produtos de borracha (Cap�tulo 40)
        ftp.codigo_ncm LIKE '401511%' OR
        -- C�digo para tecidos especiais, tecidos tufados, rendas, tape�arias, passamanarias, bordados (Cap�tulo 58)
        ftp.codigo_ncm LIKE '5803%' OR -- Tecidos em ponto de gaze
        -- C�digo para Outros artefatos t�xteis confeccionados (Cap�tulo 60)
        ftp.codigo_ncm LIKE '6307901%' OR -- Outros artefatos confeccionados de falso tecido (e.g. m�scara)
        -- C�digo Reatores nucleares, caldeiras, m�quinas, aparelhos e instrumentos mec�nicos, e suas partes (Cap�tulo 84)
        ftp.codigo_ncm LIKE '842119%' OR -- Centrifugadores para laborat�rios de an�lises, ensaios ou pesquisas cient�ficas
        ftp.codigo_ncm LIKE '842191%' OR -- Partes de centrifugadores
        ftp.codigo_ncm LIKE '84798912' OR -- Distribuidores e doseadores de s�lidos ou de l�quidos  (e.g. micropipeta)
        -- C�digos NCM para instrumentos e aparelhos de �ptica, de fotografia, de cinematografia, de medida, de controle ou de precis�o.
        -- instrumentos e aparelhos m�dico-cir�rgicos suas partes e acess�rios (Cap�tulo 90)
        ftp.codigo_ncm LIKE '9011%' OR --  Microsc�pios �pticos, incluindo os microsc�pios para fotomicrografia, cinefotomicrografia ou microproje��o.
        ftp.codigo_ncm LIKE '9012%' OR --  Microsc�pios, exceto �pticos, difrat�grafos.
        ftp.codigo_ncm LIKE '9018%' OR -- instumentos e aparelhos para medicina, cirurgia, odontologia e veterin�ria
        ftp.codigo_ncm LIKE '9019%' OR -- aparelhos de mecanoterapia, aparelhos de massagem, de psicot�cnica, de ozonoterapia...
        ftp.codigo_ncm LIKE '9020%' OR -- outros aparelhos respirat�rios e m�scaras contra gases
        ftp.codigo_ncm LIKE '9021%' OR -- Artigos e aparelhos ortop�dicos
        ftp.codigo_ncm LIKE '9022%' OR -- Aparelhos de raios X e aparelhos que utilizem radia��es alfa
        ftp.codigo_ncm LIKE '9027%' OR -- Instrumentos e aparelhos para an�lises f�sicas ou qu�micas
        -- C�digos para Obras diversas (Cap�tulo 96)
        ftp.codigo_ncm LIKE '9619%' --  Absorventes e tamp�es higi�nicos, cueiros e fraldas para beb�s e artigos higi�nicos semelhantes, de qualquer mat�ria.
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
    )
-- Fonte: https://www.contabilizei.com.br/contabilidade-online/cnae/ - https://concla.ibge.gov.br/busca-online-cnae.html
--------------------------------------------------------------------------------------------------------------------------------------------------------------
ORDER BY RAND();