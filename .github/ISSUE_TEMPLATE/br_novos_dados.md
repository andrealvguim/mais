---
name: PTBR | Novos dados
about: Novos dados para serem adicionados à BD+
title: '[dados] <dataset_id>'
labels: data
assignees: 

---

**Metadados da base**

1. Descrição: <descrição da base e suas tabelas>

<!-- Para (2) e (3): veja como nomeamos nossos conjuntos e tabelas aqui https://basedosdados.github.io/mais/style_data/#nomea%C3%A7%C3%A3o-de-bases-e-tabelas -->

2. Qual o nome do conjunto? `dataset_id`

3. Qual o nome da(s) tabela(s)? `table_id`

4. Fonte original dos dados: <link>

5. Cobertura espacial: <país/sigla_uf>

6. Cobertura temporal: de XXXX a YYYY

**Tarefas** (seguindo os passos da documentação [aqui](https://basedosdados.github.io/mais/colab_data/))

- [ ] Baixar a pasta template e os dados originais
- [ ] Preencher as tabelas de arquitetura - Marcar a equipe de dados na issue avisando quando finalizar
- [ ] Escrever código de captura e limpeza de dados
- [ ] Organizar arquivos auxiliares, se necessário
- [ ] Criar tabela dicionário, se necessário
- [ ] Subir tabelas no BigQuery
- [ ] Criar e preencher table_config e dataset_config
- [ ] Fazer uma revisão seguindo o [nosso guia](https://github.com/basedosdados/.github/wiki/Dados#como-fazer-code-review)
- [ ] Abrir o PR
