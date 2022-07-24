#1-Quais embarcações possuem pontuação de risco igual a 310?

SELECT nome_navio,
       classificacao_risco,
       pontuacao_risco
FROM tb_navios
WHERE pontuacao_risco = 310

# 2 - Quais embarcações têm classificação de risco A e índice de conformidade maior ou igual a 95%?
SELECT nome_navio,
       classificacao_risco,
       pontuacao_risco,
       indice_conformidades
FROM tb_navios
WHERE classificacao_risco = 'A' AND indice_conformidades >= 95

# 3 - Quais embarcações têm classificação de risco C ou D e índice de conformidade menor ou igual a 95%?

SELECT nome_navio,
       classificacao_risco,
       pontuacao_risco,
       indice_conformidades
FROM tb_navios
WHERE classificacao_risco = 'C'
  OR classificacao_risco = 'D'
  AND indice_conformidades <=95

# 4 - Quais embarcações têm classificação de risco A ou pontuação de risco igual a 0?

SELECT nome_navio,
       classificacao_risco,
       pontuacao_risco,
       indice_conformidades
FROM tb_navios
WHERE classificacao_risco = 'A'
  OR pontuacao_risco = 0

# 5-[DESAFIO] Quais embarcações foram inspecionadas em Dezembro de 2016?

SELECT DISTINCT nome_navio,
                classificacao_risco,
                pontuacao_risco,
                indice_conformidades
FROM tb_navios
WHERE mes_ano = '12/2016'
  OR pontuacao_risco = 0
