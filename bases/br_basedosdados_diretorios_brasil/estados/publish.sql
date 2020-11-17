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
CREATE VIEW basedosdados.br_basedosdados_diretorios_brasil.estados AS
SELECT 
SAFE_CAST(id_estado AS INT64) id_estado,
SAFE_CAST(estado_abrev AS STRING) estado_abrev,
SAFE_CAST(estado AS STRING) estado,
SAFE_CAST(regiao AS STRING) regiao
from basedosdados-staging.br_basedosdados_diretorios_brasil_staging.estados as t