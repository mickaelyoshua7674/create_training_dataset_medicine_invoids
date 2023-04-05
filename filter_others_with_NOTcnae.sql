
WHERE
--FILTRO PRODUTOS
    -- C�digo para bebidas, l�quidos alco�licos e vinagres (Cap�tulo 22)
    ftp.codigo_ncm NOT LIKE '22071%' AND
    ftp.codigo_ncm NOT LIKE '22072%' AND
    -- Capítulo para combustíveis minerais, óleos, produtos da sua destilação... (Capítulo 27)
    ftp.codigo_ncm NOT LIKE '2710%' AND -- Óleos de petróleo ou de minerais betuminosos, exceto óleos brutos
    -- Código para Produtos químicos orgânicos (Capítulo 29)
    ftp.codigo_ncm NOT LIKE '29037931%' AND ftp.codigo_ncm NOT LIKE '29054400%' AND ftp.codigo_ncm NOT LIKE '29054500%' AND ftp.codigo_ncm NOT LIKE '29061100%' AND
    ftp.codigo_ncm NOT LIKE '29072200%' AND ftp.codigo_ncm NOT LIKE '29094910%' AND ftp.codigo_ncm NOT LIKE '29095011%' AND ftp.codigo_ncm NOT LIKE '29162014%' AND
    ftp.codigo_ncm NOT LIKE '29163920%' AND ftp.codigo_ncm NOT LIKE '29181610%' AND ftp.codigo_ncm NOT LIKE '29182110%' AND ftp.codigo_ncm NOT LIKE '29182211%' AND
    ftp.codigo_ncm NOT LIKE '29189940%' AND ftp.codigo_ncm NOT LIKE '292146%' AND ftp.codigo_ncm NOT LIKE '2922192%' AND ftp.codigo_ncm NOT LIKE '2922193%' AND
    ftp.codigo_ncm NOT LIKE '2922194%' AND ftp.codigo_ncm NOT LIKE '29221995%' AND ftp.codigo_ncm NOT LIKE '29223120%' AND ftp.codigo_ncm NOT LIKE '2922392%' AND
    ftp.codigo_ncm NOT LIKE '29224110%' AND ftp.codigo_ncm NOT LIKE '29224910%' AND ftp.codigo_ncm NOT LIKE '2922496%' AND ftp.codigo_ncm NOT LIKE '2922501%' AND
    ftp.codigo_ncm NOT LIKE '2922502%' AND ftp.codigo_ncm  NOT LIKE '2922503%' AND ftp.codigo_ncm NOT LIKE '2922504%' AND ftp.codigo_ncm NOT LIKE '29231000%' AND
    ftp.codigo_ncm NOT LIKE '29241992%' AND ftp.codigo_ncm NOT LIKE '29242914%' AND ftp.codigo_ncm NOT LIKE '29242943%' AND ftp.codigo_ncm NOT LIKE '29242951%' AND
    ftp.codigo_ncm NOT LIKE '29242952%' AND ftp.codigo_ncm NOT LIKE '29251910%' AND ftp.codigo_ncm NOT LIKE '2925291%' AND ftp.codigo_ncm NOT LIKE '29252921%' AND
    ftp.codigo_ncm NOT LIKE '29252923%' AND ftp.codigo_ncm NOT LIKE '292630%' AND ftp.codigo_ncm NOT LIKE '2926901%' AND ftp.codigo_ncm NOT LIKE '29269024%' AND
    ftp.codigo_ncm NOT LIKE '29280020%' AND ftp.codigo_ncm NOT LIKE '29303012%' AND ftp.codigo_ncm NOT LIKE '29309036%' AND ftp.codigo_ncm NOT LIKE '29321910%' AND
    ftp.codigo_ncm NOT LIKE '2932991%' AND ftp.codigo_ncm  NOT LIKE '29329991%' AND ftp.codigo_ncm NOT LIKE '29331111%' AND ftp.codigo_ncm NOT LIKE '29331112%' AND
    ftp.codigo_ncm NOT LIKE '2933212%' AND ftp.codigo_ncm  NOT LIKE '29332912%' AND ftp.codigo_ncm NOT LIKE '29332922%' AND ftp.codigo_ncm NOT LIKE '29332923%' AND
    ftp.codigo_ncm NOT LIKE '29332925%' AND ftp.codigo_ncm NOT LIKE '29332930%' AND ftp.codigo_ncm NOT LIKE '29332991%' AND ftp.codigo_ncm NOT LIKE '29332993%' AND
    ftp.codigo_ncm NOT LIKE '293331%' AND ftp.codigo_ncm NOT LIKE '29333322%' AND ftp.codigo_ncm NOT LIKE '29333381%' AND ftp.codigo_ncm NOT LIKE '29333915%' AND
    ftp.codigo_ncm NOT LIKE '29333924%' AND ftp.codigo_ncm NOT LIKE '29333932%' AND ftp.codigo_ncm NOT LIKE '29333943%' AND ftp.codigo_ncm NOT LIKE '29333944%' AND
    ftp.codigo_ncm NOT LIKE '29333946%' AND ftp.codigo_ncm NOT LIKE '29333948%' AND ftp.codigo_ncm NOT LIKE '29333983%' AND ftp.codigo_ncm NOT LIKE '29333992%' AND
    ftp.codigo_ncm NOT LIKE '29335321%' AND ftp.codigo_ncm NOT LIKE '29335340%' AND ftp.codigo_ncm NOT LIKE '29335510%' AND ftp.codigo_ncm NOT LIKE '29335912%' AND
    ftp.codigo_ncm NOT LIKE '29335913%' AND ftp.codigo_ncm NOT LIKE '29335914%' AND ftp.codigo_ncm NOT LIKE '29335942%' AND ftp.codigo_ncm NOT LIKE '29335991%' AND
    ftp.codigo_ncm NOT LIKE '29337210%' AND ftp.codigo_ncm NOT LIKE '29337910%' AND ftp.codigo_ncm NOT LIKE '29339111%' AND ftp.codigo_ncm NOT LIKE '29339113%' AND
    ftp.codigo_ncm NOT LIKE '29339122%' AND ftp.codigo_ncm NOT LIKE '29339142%' AND ftp.codigo_ncm NOT LIKE '29339153%' AND ftp.codigo_ncm NOT LIKE '29339162%' AND
    ftp.codigo_ncm NOT LIKE '29339164%' AND ftp.codigo_ncm NOT LIKE '29339911%' AND ftp.codigo_ncm NOT LIKE '29339932%' AND ftp.codigo_ncm NOT LIKE '29339946%' AND
    ftp.codigo_ncm NOT LIKE '29339953%' AND ftp.codigo_ncm NOT LIKE '29339954%' AND ftp.codigo_ncm NOT LIKE '29339992%' AND ftp.codigo_ncm NOT LIKE '29341030%' AND
    ftp.codigo_ncm NOT LIKE '29343030%' AND ftp.codigo_ncm NOT LIKE '29349122%' AND ftp.codigo_ncm NOT LIKE '29349931%' AND ftp.codigo_ncm NOT LIKE '29349954%' AND
    ftp.codigo_ncm NOT LIKE '29349991%' AND ftp.codigo_ncm NOT LIKE '29349993%' AND ftp.codigo_ncm NOT LIKE '29350012%' AND ftp.codigo_ncm NOT LIKE '29350021%' AND
    ftp.codigo_ncm NOT LIKE '29350023%' AND ftp.codigo_ncm NOT LIKE '29350024%' AND ftp.codigo_ncm NOT LIKE '29350025%' AND ftp.codigo_ncm NOT LIKE '29350094%' AND
    ftp.codigo_ncm NOT LIKE '29362%' AND ftp.codigo_ncm NOT LIKE '29371%' AND ftp.codigo_ncm NOT LIKE '29372%' AND ftp.codigo_ncm NOT LIKE '29375000%' AND
    ftp.codigo_ncm NOT LIKE '29379030%' AND ftp.codigo_ncm NOT LIKE '29389010%' AND ftp.codigo_ncm NOT LIKE '29391122%' AND ftp.codigo_ncm NOT LIKE '29391152%' AND
    ftp.codigo_ncm NOT LIKE '2939116%' AND ftp.codigo_ncm NOT LIKE '29391181%' AND ftp.codigo_ncm NOT LIKE '29393010%' AND ftp.codigo_ncm NOT LIKE '29394%' AND
    ftp.codigo_ncm NOT LIKE '29395%' AND ftp.codigo_ncm NOT LIKE '29396921%' AND ftp.codigo_ncm NOT LIKE '29396952%' AND ftp.codigo_ncm NOT LIKE '2939991%' AND
    ftp.codigo_ncm NOT LIKE '2939993%' AND ftp.codigo_ncm NOT LIKE '2941%' AND
    -- C�digos NCM para produtos farmac�uticos (Cap�tulo 30)
    ftp.codigo_ncm NOT LIKE '30%' AND
    -- C�digo Extratos tanantes e tintoriais (Cap�tulo 32)
    ftp.codigo_ncm NOT LIKE '320416%' AND -- corantes reagentes e prepara��es � base desses corantes
    -- C�digo para produtos para fotografia e cinematografia (Cap�tulo 37)
    ftp.codigo_ncm NOT LIKE '370110%' AND -- filme para raio x
    -- C�digo produtos qu�micos diversos (Cap�tulo 38)
    ftp.codigo_ncm NOT LIKE '3821%' AND -- Meios de cultura preparados para o desenvolvimento e a manuten��o de microrganismos 
    ftp.codigo_ncm NOT LIKE '3822%' AND -- reagentes de diagn�stico ou de laborat�rio (e.g. analisador de PH, glicose liquida, f�sforo UV, hemoglobina glicada, acido urico)
    -- C�digo NCM para produtos de borracha (Cap�tulo 40)
    ftp.codigo_ncm NOT LIKE '401511%' AND
    -- C�digo para tecidos especiais, tecidos tufados, rendas, tape�arias, passamanarias, bordados (Cap�tulo 58)
    ftp.codigo_ncm NOT LIKE '5803%' AND -- Tecidos em ponto de gaze
    -- C�digo para Outros artefatos t�xteis confeccionados (Cap�tulo 60)
    ftp.codigo_ncm NOT LIKE '6307901%' AND -- Outros artefatos confeccionados de falso tecido (e.g. m�scara)
    -- C�digo Reatores nucleares, caldeiras, m�quinas, aparelhos e instrumentos mec�nicos, e suas partes (Cap�tulo 84)
    ftp.codigo_ncm NOT LIKE '842119%' AND -- Centrifugadores para laborat�rios de an�lises, ensaios ou pesquisas cient�ficas
    ftp.codigo_ncm NOT LIKE '842191%' AND -- Partes de centrifugadores
    ftp.codigo_ncm NOT LIKE '84798912' AND -- Distribuidores e doseadores de s�lidos ou de l�quidos  (e.g. micropipeta)
    -- C�digos NCM para instrumentos e aparelhos de �ptica, de fotografia, de cinematografia, de medida, de controle ou de precis�o.
    -- instrumentos e aparelhos m�dico-cir�rgicos suas partes e acess�rios (Cap�tulo 90)
    ftp.codigo_ncm NOT LIKE '9011%' AND --  Microsc�pios �pticos, incluindo os microsc�pios para fotomicrografia, cinefotomicrografia ou microproje��o.
    ftp.codigo_ncm NOT LIKE '9012%' AND --  Microsc�pios, exceto �pticos, difrat�grafos.
    ftp.codigo_ncm NOT LIKE '9018%' AND -- instumentos e aparelhos para medicina, cirurgia, odontologia e veterin�ria
    ftp.codigo_ncm NOT LIKE '9019%' AND -- aparelhos de mecanoterapia, aparelhos de massagem, de psicot�cnica, de ozonoterapia...
    ftp.codigo_ncm NOT LIKE '9020%' AND -- outros aparelhos respirat�rios e m�scaras contra gases
    ftp.codigo_ncm NOT LIKE '9021%' AND -- Artigos e aparelhos ortop�dicos
    ftp.codigo_ncm NOT LIKE '9022%' AND -- Aparelhos de raios X e aparelhos que utilizem radia��es alfa
    ftp.codigo_ncm NOT LIKE '9027%' AND -- Instrumentos e aparelhos para an�lises f�sicas ou qu�micas
    -- C�digos para Obras diversas (Cap�tulo 96)
    ftp.codigo_ncm NOT LIKE '9619%' AND --  Absorventes e tamp�es higi�nicos, cueiros e fraldas para beb�s e artigos higi�nicos semelhantes, de qualquer mat�ria.
        -- FONTE: http://www5.sefaz.mt.gov.br/documents/6071037/6401784/Tabela+NCM+-+MDIC+atualizada.pdf/bc780e4b-fd2f-4312-879c-65d5fd1ff49d / P�g. 129
--------------------------------------------------------------------------------------------------------------------------------------------------------------
--FILTRO PESSOA JURIDICA
    est.cnae_fiscal NOT IN (2019399, 2110600, 2121101, 2121102, 2121103, 2123800, 2312500, 3299099, 3250701, 3250702, 3250705, 4618401, 4618402,
                        4644301, 4644302, 4645101, 4645103, 4664800, 4684299, 4771701, 4771702, 4771703, 4771704, 4773300, 7210000) AND -- Empresas farmoquimicas e farmaceuticas
    est.cnae_secundaria NOT LIKE '%2019399%' AND est.cnae_secundaria NOT LIKE '%2110600%' AND est.cnae_secundaria NOT LIKE '%2121101%' AND est.cnae_secundaria NOT LIKE '%2121102%' AND
    est.cnae_secundaria NOT LIKE '%2121103%' AND est.cnae_secundaria NOT LIKE '%2123800%' AND est.cnae_secundaria NOT LIKE '%2312500%' AND est.cnae_secundaria NOT LIKE '%3299099%' AND
    est.cnae_secundaria NOT LIKE '%3250701%' AND est.cnae_secundaria NOT LIKE '%3250702%' AND est.cnae_secundaria NOT LIKE '%3250705%' AND est.cnae_secundaria NOT LIKE '%4618401%' AND
    est.cnae_secundaria NOT LIKE '%4618402%' AND est.cnae_secundaria NOT LIKE '%4644301%' AND est.cnae_secundaria NOT LIKE '%4644302%' AND est.cnae_secundaria NOT LIKE '%4645101%' AND
    est.cnae_secundaria NOT LIKE '%4645103%' AND est.cnae_secundaria NOT LIKE '%4664800%' AND est.cnae_secundaria NOT LIKE '%4684299%' AND est.cnae_secundaria NOT LIKE '%4771701%' AND
    est.cnae_secundaria NOT LIKE '%4771702%' AND est.cnae_secundaria NOT LIKE '%4771703%' AND est.cnae_secundaria NOT LIKE '%4771704%' AND est.cnae_secundaria NOT LIKE '%4773300%' AND
    est.cnae_secundaria NOT LIKE '%7210000%'
-- Fonte: https://www.contabilizei.com.br/contabilidade-online/cnae/ - https://concla.ibge.gov.br/busca-online-cnae.html
--------------------------------------------------------------------------------------------------------------------------------------------------------------
ORDER BY RAND();