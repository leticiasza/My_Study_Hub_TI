# Minimax para Pac-Man

Agente de Inteligência Artificial que joga Pac-Man usando o algoritmo **Minimax**. A cada jogada, o agente simula os movimentos possíveis do Pac-Man e das respostas dos fantasmas e escolhe a ação com o melhor resultado esperado.

**Disciplina:** Inteligência Artificial, CEUB
**Tecnologias:** Python
**Repositório original:** https://github.com/leticiasza/Pacman

## Objetivo

Implementar o algoritmo Minimax na função `getAction` da classe `MinimaxAgent`, no arquivo `seuPacManAgents.py`, para que o Pac-Man tome decisões considerando os fantasmas como adversários.

## Como o Minimax funciona aqui

- O **Pac-Man** é o agente maximizador: escolhe a ação que leva ao maior valor.
- Cada **fantasma** é um agente minimizador: assume-se que ele fará a jogada pior para o Pac-Man.
- O algoritmo expande a árvore de jogadas até uma profundidade definida, avalia os estados e propaga os valores de volta até a raiz.
- A ação escolhida na raiz é a que leva ao melhor valor para o Pac-Man.

## Como executar

```powershell
git clone https://github.com/leticiasza/Pacman.git
cd Pacman
python pacman.py -p MinimaxAgent -a depth=3
```

Ajuste o comando conforme o arquivo principal e os parâmetros usados no repositório.

## O que aprendi

Jogos com adversários, árvore de decisão, impacto da profundidade da busca no desempenho e no tempo de resposta do agente.