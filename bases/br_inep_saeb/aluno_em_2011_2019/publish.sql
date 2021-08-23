/*

Query para publicar a tabela.

Esse é o lugar para:
    - modificar nomes, ordem e tipos de colunas
    - dar join com outras tabelas
    - criar colunas extras (e.g. logs, proporções, etc.)

Qualquer coluna definida aqui deve também existir em `table_config.yaml`.

# Além disso, sinta-se à vontade para alterar alguns nomes obscuros
# para algo um pouco mais explícito.

TIPOS:
    - Para modificar tipos de colunas, basta substituir STRING por outro tipo válido.
    - Exemplo: `SAFE_CAST(column_name AS NUMERIC) column_name`
    - Mais detalhes: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types

*/

CREATE VIEW basedosdados-dev.br_inep_saeb.aluno_em_2011_2019 AS
SELECT 
SAFE_CAST(ano AS INT64) ano,
SAFE_CAST(sigla_uf AS STRING) sigla_uf,
SAFE_CAST(id_municipio AS STRING) id_municipio,
SAFE_CAST(id_escola AS STRING) id_escola,
SAFE_CAST(id_aluno AS STRING) id_aluno,
SAFE_CAST(rede AS STRING) rede,
SAFE_CAST(localizacao AS STRING) localizacao,
SAFE_CAST(turma AS STRING) turma,
SAFE_CAST(turno AS STRING) turno,
SAFE_CAST(serie AS STRING) serie,
SAFE_CAST(situacao_censo AS STRING) situacao_censo,
SAFE_CAST(preenchimento_prova AS STRING) preenchimento_prova,
SAFE_CAST(preenchimento_prova_lp AS STRING) preenchimento_prova_lp,
SAFE_CAST(preenchimento_prova_mt AS STRING) preenchimento_prova_mt,
SAFE_CAST(presenca_prova AS STRING) presenca_prova,
SAFE_CAST(presenca_prova_lp AS STRING) presenca_prova_lp,
SAFE_CAST(presenca_prova_mt AS STRING) presenca_prova_mt,
SAFE_CAST(caderno AS STRING) caderno,
SAFE_CAST(caderno_lp AS STRING) caderno_lp,
SAFE_CAST(caderno_mt AS STRING) caderno_mt,
SAFE_CAST(bloco_1 AS STRING) bloco_1,
SAFE_CAST(bloco_2 AS STRING) bloco_2,
SAFE_CAST(bloco_1_lp AS STRING) bloco_1_lp,
SAFE_CAST(bloco_2_lp AS STRING) bloco_2_lp,
SAFE_CAST(bloco_1_mt AS STRING) bloco_1_mt,
SAFE_CAST(bloco_2_mt AS STRING) bloco_2_mt,
SAFE_CAST(resposta_bloco_1_lp AS STRING) resposta_bloco_1_lp,
SAFE_CAST(resposta_bloco_2_lp AS STRING) resposta_bloco_2_lp,
SAFE_CAST(resposta_bloco_1_mt AS STRING) resposta_bloco_1_mt,
SAFE_CAST(resposta_bloco_2_mt AS STRING) resposta_bloco_2_mt,
SAFE_CAST(indicador_proficiencia AS STRING) indicador_proficiencia,
SAFE_CAST(indicador_proficiencia_lp AS STRING) indicador_proficiencia_lp,
SAFE_CAST(indicador_proficiencia_mt AS STRING) indicador_proficiencia_mt,
SAFE_CAST(indicador_prova_brasil AS STRING) indicador_prova_brasil,
SAFE_CAST(indicador_amostra AS STRING) indicador_amostra,
SAFE_CAST(estrato AS STRING) estrato,
SAFE_CAST(peso AS FLOAT64) peso,
SAFE_CAST(peso_aluno_lp AS FLOAT64) peso_aluno_lp,
SAFE_CAST(peso_aluno_mt AS FLOAT64) peso_aluno_mt,
SAFE_CAST(proficiencia_lp AS FLOAT64) proficiencia_lp,
SAFE_CAST(erro_padrao_lp AS FLOAT64) erro_padrao_lp,
SAFE_CAST(desvio_padrao_lp AS FLOAT64) desvio_padrao_lp,
SAFE_CAST(proficiencia_lp_saeb AS FLOAT64) proficiencia_lp_saeb,
SAFE_CAST(erro_padrao_lp_saeb AS FLOAT64) erro_padrao_lp_saeb,
SAFE_CAST(desvio_padrao_lp_saeb AS FLOAT64) desvio_padrao_lp_saeb,
SAFE_CAST(proficiencia_mt AS FLOAT64) proficiencia_mt,
SAFE_CAST(erro_padrao_mt AS FLOAT64) erro_padrao_mt,
SAFE_CAST(desvio_padrao_mt AS FLOAT64) desvio_padrao_mt,
SAFE_CAST(proficiencia_mt_saeb AS FLOAT64) proficiencia_mt_saeb,
SAFE_CAST(erro_padrao_mt_saeb AS FLOAT64) erro_padrao_mt_saeb,
SAFE_CAST(desvio_padrao_mt_saeb AS FLOAT64) desvio_padrao_mt_saeb,
SAFE_CAST(preenchimento_questionario AS FLOAT64) preenchimento_questionario,
SAFE_CAST(resposta_q001 AS STRING) resposta_q001,
SAFE_CAST(resposta_q002 AS STRING) resposta_q002,
SAFE_CAST(resposta_q003 AS STRING) resposta_q003,
SAFE_CAST(resposta_q004 AS STRING) resposta_q004,
SAFE_CAST(resposta_q005 AS STRING) resposta_q005,
SAFE_CAST(resposta_q006 AS STRING) resposta_q006,
SAFE_CAST(resposta_q007 AS STRING) resposta_q007,
SAFE_CAST(resposta_q008 AS STRING) resposta_q008,
SAFE_CAST(resposta_q009 AS STRING) resposta_q009,
SAFE_CAST(resposta_q010 AS STRING) resposta_q010,
SAFE_CAST(resposta_q011 AS STRING) resposta_q011,
SAFE_CAST(resposta_q012 AS STRING) resposta_q012,
SAFE_CAST(resposta_q013 AS STRING) resposta_q013,
SAFE_CAST(resposta_q014 AS STRING) resposta_q014,
SAFE_CAST(resposta_q015 AS STRING) resposta_q015,
SAFE_CAST(resposta_q016 AS STRING) resposta_q016,
SAFE_CAST(resposta_q017 AS STRING) resposta_q017,
SAFE_CAST(resposta_q018 AS STRING) resposta_q018,
SAFE_CAST(resposta_q019 AS STRING) resposta_q019,
SAFE_CAST(resposta_q020 AS STRING) resposta_q020,
SAFE_CAST(resposta_q021 AS STRING) resposta_q021,
SAFE_CAST(resposta_q022 AS STRING) resposta_q022,
SAFE_CAST(resposta_q023 AS STRING) resposta_q023,
SAFE_CAST(resposta_q024 AS STRING) resposta_q024,
SAFE_CAST(resposta_q025 AS STRING) resposta_q025,
SAFE_CAST(resposta_q026 AS STRING) resposta_q026,
SAFE_CAST(resposta_q027 AS STRING) resposta_q027,
SAFE_CAST(resposta_q028 AS STRING) resposta_q028,
SAFE_CAST(resposta_q029 AS STRING) resposta_q029,
SAFE_CAST(resposta_q030 AS STRING) resposta_q030,
SAFE_CAST(resposta_q031 AS STRING) resposta_q031,
SAFE_CAST(resposta_q032 AS STRING) resposta_q032,
SAFE_CAST(resposta_q033 AS STRING) resposta_q033,
SAFE_CAST(resposta_q034 AS STRING) resposta_q034,
SAFE_CAST(resposta_q035 AS STRING) resposta_q035,
SAFE_CAST(resposta_q036 AS STRING) resposta_q036,
SAFE_CAST(resposta_q037 AS STRING) resposta_q037,
SAFE_CAST(resposta_q038 AS STRING) resposta_q038,
SAFE_CAST(resposta_q039 AS STRING) resposta_q039,
SAFE_CAST(resposta_q040 AS STRING) resposta_q040,
SAFE_CAST(resposta_q041 AS STRING) resposta_q041,
SAFE_CAST(resposta_q042 AS STRING) resposta_q042,
SAFE_CAST(resposta_q043 AS STRING) resposta_q043,
SAFE_CAST(resposta_q044 AS STRING) resposta_q044,
SAFE_CAST(resposta_q045 AS STRING) resposta_q045,
SAFE_CAST(resposta_q046 AS STRING) resposta_q046,
SAFE_CAST(resposta_q047 AS STRING) resposta_q047,
SAFE_CAST(resposta_q048 AS STRING) resposta_q048,
SAFE_CAST(resposta_q049 AS STRING) resposta_q049,
SAFE_CAST(resposta_q050 AS STRING) resposta_q050,
SAFE_CAST(resposta_q051 AS STRING) resposta_q051,
SAFE_CAST(resposta_q052 AS STRING) resposta_q052,
SAFE_CAST(resposta_q053 AS STRING) resposta_q053,
SAFE_CAST(resposta_q054 AS STRING) resposta_q054,
SAFE_CAST(resposta_q055 AS STRING) resposta_q055,
SAFE_CAST(resposta_q056 AS STRING) resposta_q056,
SAFE_CAST(resposta_q057 AS STRING) resposta_q057,
SAFE_CAST(resposta_q058 AS STRING) resposta_q058,
SAFE_CAST(resposta_q059 AS STRING) resposta_q059,
SAFE_CAST(resposta_q060 AS STRING) resposta_q060,
SAFE_CAST(resposta_q061 AS STRING) resposta_q061,
SAFE_CAST(resposta_q062 AS STRING) resposta_q062,
SAFE_CAST(resposta_q063 AS STRING) resposta_q063,
SAFE_CAST(resposta_q064 AS STRING) resposta_q064,
SAFE_CAST(resposta_q065 AS STRING) resposta_q065,
SAFE_CAST(resposta_q066 AS STRING) resposta_q066,
SAFE_CAST(resposta_q067 AS STRING) resposta_q067,
SAFE_CAST(resposta_q068 AS STRING) resposta_q068,
SAFE_CAST(resposta_q069 AS STRING) resposta_q069,
SAFE_CAST(resposta_q070 AS STRING) resposta_q070,
SAFE_CAST(resposta_q071 AS STRING) resposta_q071,
SAFE_CAST(resposta_q072 AS STRING) resposta_q072,
SAFE_CAST(resposta_q073 AS STRING) resposta_q073,
SAFE_CAST(resposta_q074 AS STRING) resposta_q074,
SAFE_CAST(resposta_q075 AS STRING) resposta_q075,
SAFE_CAST(resposta_q076 AS STRING) resposta_q076,
SAFE_CAST(resposta_q077 AS STRING) resposta_q077,
SAFE_CAST(resposta_q078 AS STRING) resposta_q078,
SAFE_CAST(resposta_q079 AS STRING) resposta_q079,
SAFE_CAST(resposta_q080 AS STRING) resposta_q080,
SAFE_CAST(resposta_q081 AS STRING) resposta_q081,
SAFE_CAST(resposta_q082 AS STRING) resposta_q082,
SAFE_CAST(resposta_q083 AS STRING) resposta_q083,
SAFE_CAST(resposta_q084 AS STRING) resposta_q084,
SAFE_CAST(resposta_q085 AS STRING) resposta_q085,
SAFE_CAST(resposta_q086 AS STRING) resposta_q086,
SAFE_CAST(resposta_q087 AS STRING) resposta_q087,
SAFE_CAST(resposta_q088 AS STRING) resposta_q088,
SAFE_CAST(resposta_q089 AS STRING) resposta_q089
from basedosdados-dev.br_inep_saeb_staging.aluno_em_2011_2019 as t