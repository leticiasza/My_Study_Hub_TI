# Selection Sort e Insertion Sort

Implementação dos algoritmos Selection Sort e Insertion Sort em Java, com medição do tempo de execução para comparar os dois.

**Tecnologias:** Java (JDK 17+), VS Code
**Repositório original:** https://github.com/leticiasza/Algoritmo-selection-sort-e-insertion-sort

## Como executar

1. Abra a pasta do projeto no VS Code (com o pacote de extensões para Java).
2. Execute o arquivo `Principal.java`.
3. Use o menu para ordenar a lista e ver os tempos.

## Resultados

| Cenário | Selection Sort | Insertion Sort |
|---|---|---|
| Lista original | 120.200 ns (0,1202 ms) | 67.300 ns (0,0673 ms) |
| Melhor caso (já ordenada) | 108.100 ns (0,1081 ms) | 4.800 ns (0,0048 ms) |

## Conclusão

O Insertion Sort foi mais rápido nos dois cenários. No melhor caso, com a lista já ordenada, ele foi cerca de 22 vezes mais rápido, porque só percorre a lista uma vez. O Selection Sort faz o mesmo trabalho de comparação independentemente da ordem inicial.