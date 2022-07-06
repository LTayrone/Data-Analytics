CREATE TABLE tb_dados02
AS
SELECT COUNT(*) FROM tb_dados;

# Binarização da variavel classe (0/1)
SELECT 

	CASE
           WHEN classe = 'no-recurrence-events' THEN 0
           WHEN classe = 'recurrence-events' THEN 1
       END AS classe,
       idade,
       menopausa,
       inv_nodes,
       deg_malig,

# Binarização da classe irradiano (0/1)
	CASE
           WHEN irradiando = 'no' THEN 0
           WHEN irradiando = 'yes' THEN 1
       END AS irradiando,
       
# Categorização da classe node_caps (0/1)

	CASE
           WHEN node_caps = 'no' THEN 0
           WHEN node_caps = 'yes' THEN 1
           ELSE 2
       END AS node_caps,

# Categorização da vaiavel seio (E/D)

	CASE
           WHEN seio = 'left' THEN 0
           WHEN seio = 'right' THEN 1
       END AS seio,

# Categorização da vaiavel tamnho_tumor ( 6 categorias )

	CASE
			WHEN tamanho_tumor = '0-4' OR tamanho_tumor = '5-9' THEN 'Muito Pequeno'
            WHEN tamanho_tumor = '10-14' OR tamanho_tumor = '15-19' THEN 'Pequeno'
            WHEN tamanho_tumor = '20-24' OR tamanho_tumor = '25-29' THEN 'Médio'
            WHEN tamanho_tumor = '30-34' OR tamanho_tumor = '35-39' THEN 'Grande'
            WHEN tamanho_tumor = '40-44' OR tamanho_tumor = '45-49' THEN 'Muito Grande'
            WHEN tamanho_tumor = '50-54' OR tamanho_tumor = '55-59' THEN 'Tratamento Urgente'
		END as tamanho_tumor,
        
# Label encoding da variavel quadrante (1,2,3,4,5,6)


	CASE
			WHEN quadrante = 'left_low' THEN '1'
            WHEN quadrante = 'right_up' THEN '2'
            WHEN quadrante = 'left_up' THEN '3'
            WHEN quadrante = 'right_low' THEN '4'
            WHEN quadrante = 'central' THEN '5'
            ELSE 0
		END as quadrante
FROM tb_dados