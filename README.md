# 🌳 Projeto de Modelagem de Dados em Grafo (Neo4j/Cypher)
Este projeto implementa uma Base de Dados de Grafos para Mídia (Filmes, Séries, Atores, Diretores) usando a linguagem de consulta Cypher (Neo4j). O objetivo é mapear as relações complexas de produção, categorização e consumo de conteúdo.
## 🎯 Estrutura do Grafo
Abaixo estão as principais entidades (Nós) e suas propriedades:

|Rótulo do Nó| Representa | Propriedades Chave|
|---------|---------|-----------------|
|`User`|Espectadores|`nome`, `idade`|
|`Actor`|Artistas|`nome`|
|`Director`|Pessoas responsáveis pela direção|`nome`|
|`Movie`|Filmes|`nome`, `anoLançamento`, `classificacao`|
|`Series`|Séries de TV|`nome`, `anoLançamento`, `classificacao`|
|`Genre`|Categorias de mídia|`nome`|

## 🛠️ Relações Implementadas (Ações do Projeto)
As relações são o coração do grafo, definindo como as entidades se conectam. As seguintes relações foram implementadas:

1. 🧑‍🤝‍🧑 Produção e Autoria
|Relação|De (Origem)|Para (Destino)|Tipo de Obra|Exemplo de Uso|
|----|-----|-----|------|----|
|:ACTED_IN|Actor|Movie / Series|Atuação|(Actor)-[:ACTED_IN]->(Movie)|
|:DIRECTED|Director|Movie / Series|Direção|(Director)-[:DIRECTED]->(Series)|
|:DIRECTS|Director|Actor|Direção de Atuação|(Director)-[:DIRECTS]->(Actor)

2. 📺 Consumo e Visualização
|Relação|De (Origem)|Para (Destino)|Observação|
|---|-----|-----|-----|
|:WATCHED|User|Series|Relação de consumo (assistiu). Implementada sem atributos de avaliação.

3. 🏷️ Categorização
|Relação|De (Origem)|Para (Destino)|Descrição|
|-------|-----------|--------------|---------|
|`:IN_GENRE`|Movie / Series|Genre|Classifica a obra dentro de uma ou mais categorias (e.g., `Pantera Negra` é `:IN_GENRE` `Ação`).|
## 🚀 Implementação Adicional e Boas Práticas
Durante a construção do grafo, adotamos algumas práticas e implementações importantes:
- Modelagem de TV (Series): Criamos um rótulo específico (:Series) para melhor representar a estrutura da TV (e.g., Peaky Blinders).
- Nome Completo como Chave: Todas as consultas para Atores e Diretores utilizam o campo nome completo (`{nome: 'Nome Completo'}`), mantendo a precisão na busca.
- Uso de `MERGE`: A cláusula `MERGE` foi amplamente utilizada na criação de relações para evitar a duplicação de dados, assegurando que cada vínculo exista apenas uma vez no grafo.
