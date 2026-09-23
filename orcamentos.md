# Orçamento e Comparação de Custos em Nuvem (AWS vs. Azure)

> Versão em texto do documento de cotação. O nome da empresa foi omitido.

Este documento apresenta o resultado final das estimativas de custo para hospedar os principais recursos da empresa em dois provedores de nuvem (AWS e Azure). Foram considerados:

- 2 servidores Windows (4 vCPUs e 32 GB de RAM cada)
- 4 servidores Linux (4 vCPUs e 32 GB de RAM cada)
- Armazenamento total projetado de 9,1 TB (crescimento de 30% em relação aos 7 TB iniciais), sendo 7,28 TB em armazenamento "hot" e 1,82 TB em armazenamento "cold"
- Transferência de dados de cerca de 2 TB/mês de saída (mais 1 TB/mês de entrada no caso da AWS)
- Duração de 1 ano (Savings Plans ou Reserved Instances de 1 ano), com licenças Windows incluídas

## Orçamento na AWS

1. **Servidores Windows:** 2 instâncias r5a.xlarge (4 vCPUs, 32 GB), 1 year Savings Plan, licença Windows incluída, US$ 616,72/mês (aprox.).
2. **Servidores Linux:** 4 instâncias r6g.xlarge (4 vCPUs, 32 GB, Graviton2), 1 year Savings Plan, US$ 621,99/mês (aprox.).
3. **Armazenamento:**
   - S3 Standard: 7,28 TB + requisições (~US$ 302,43/mês)
   - S3 Glacier Deep Archive: 1,82 TB + requisições (~US$ 7,70/mês)
4. **Transferência de dados:** 2 TB de saída + 1 TB de entrada (~US$ 307,20/mês).

**Total estimado na AWS: ~US$ 1.856/mês**

## Orçamento na Azure

1. **Armazenamento quente:** 7,28 TB em Blob LRS (camada Quente) + operações, US$ 317,51/mês.
2. **Armazenamento frio:** 1,82 TB em Blob LRS (camada Fria) + operações, US$ 61,14/mês.
3. **Servidores Windows:** 2 instâncias E4a v4 (4 vCPUs, 32 GB), 1 year Savings Plan, licença Windows, disco S4, US$ 789,92/mês.
4. **Servidores Linux:** 4 instâncias E4 v5 (4 vCPUs, 32 GB), 1 year Savings Plan, disco S4, US$ 1.038,38/mês.
5. **Transferência de dados (saída):** 2 TB de saída de "Brazil South" via Internet Pública, US$ 228,00/mês.

**Total estimado na Azure: ~US$ 2.435/mês**

## Comparação e escolha

Analisando as duas cotações, observa-se que:

- A AWS apresenta um valor aproximado de US$ 1.856/mês.
- A Azure chega a cerca de US$ 2.435/mês.

A diferença de cerca de US$ 600/mês (mais de 30% sobre o valor da AWS) ocorre principalmente em função dos tipos de instâncias escolhidos, dos descontos de 1 ano e da adoção de instâncias Graviton2 na AWS, que costumam ter custo menor. Também influenciam as tabelas de preços regionais e a forma como cada provedor cobra suas licenças Windows.

Diante disso, optou-se pela AWS por oferecer um custo global menor para a estrutura proposta, mantendo os mesmos requisitos de hardware, armazenamento e transferência de dados. Além do custo, a AWS conta com vasta documentação e suporte técnico reconhecido, o que reforça a decisão de seguir com este provedor nesta fase de migração para a nuvem.

## Conclusão

Ambos os provedores suportam plenamente as necessidades da empresa, mas a AWS se mostrou mais vantajosa em relação ao custo total mensal estimado. A recomendação é prosseguir com a contratação dos serviços na AWS, monitorar o consumo efetivo ao longo do tempo e reavaliar periodicamente para buscar otimização ou renegociação de contrato, caso seja necessário.
