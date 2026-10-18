# Horta Comunitária (ceubPI1)

Aplicativo de gamificação para hortas urbanas comunitárias: as hortas publicam tarefas, os voluntários as realizam e ganham moedas virtuais (**HortaCoins**), que podem ser trocadas por produtos das próprias hortas.

**Tipo:** Acadêmico (trabalho em equipe)
**Disciplina:** Projeto Integrador 1, ADS, CEUB
**Repositório original:** https://github.com/camilabsky/ceubPI1

## Problema

Hortas comunitárias costumam começar com entusiasmo e perder voluntários com o tempo. Sem incentivo tangível, tarefas essenciais como regar, capinar e colher ficam sem responsável, as plantas morrem e a participação cai.

## Solução

Transformar o trabalho comunitário em recompensa real:

1. **A horta publica tarefas** (descrição, tempo, dificuldade e recompensa em HortaCoins).
2. **O voluntário escolhe e executa** a tarefa que combina com o seu tempo.
3. **O gestor valida** e as moedas entram automaticamente na carteira do usuário.
4. **As moedas viram produtos**, pelo catálogo de recompensas da horta.

## Funcionalidades

- Autenticação com JWT
- Controle de acesso por perfil (RBAC): usuário comum e administrador da horta
- CRUD completo de tarefas
- CRUD completo de recompensas
- Sistema de moedas virtuais (HortaCoins)
- Histórico de tarefas concluídas e de recompensas resgatadas por usuário
- Histórico de atividades da horta para o administrador
- Imagens das recompensas com fallback visual

## Tecnologias

| Camada | Tecnologias |
|---|---|
| Front-end | React 18, TypeScript, Vite, TailwindCSS, shadcn/ui |
| Back-end | Node.js, Express, JWT |
| Banco de dados | MySQL 8.0 |
| Infraestrutura | Docker e Docker Compose |
| Arquitetura | API RESTful, autenticação com Bearer token, soft delete |

## Como executar

Pré-requisitos: Docker, Docker Compose e Git.

```powershell
git clone https://github.com/camilabsky/ceubPI1.git
cd ceubPI1
docker compose up
```

| Serviço | Endereço |
|---|---|
| Front-end | http://localhost:3000 |
| API | http://localhost:8080 |
| Banco de dados | localhost:3306 |

Para parar os contêineres: `docker compose down`. Os usuários de teste estão descritos no README do repositório original.

## Estrutura do projeto

```
ceubPI1/
├── frontend/            # React + Vite
│   └── src/components/  # TasksPage, RewardsPage, ProfilePage
├── backend/             # API Express
├── db/                  # init.sql (schema e dados iniciais)
└── docker-compose.yml
```

## Principais endpoints

| Recurso | Endpoints |
|---|---|
| Autenticação | `POST /auth/login` |
| Tarefas | `GET /tarefas_disponiveis`, `POST/PUT/DELETE /tarefas` (admin) |
| Recompensas | `GET /recompensas`, `POST/PUT/DELETE /recompensas` (admin) |
| Histórico do usuário | `GET /me/historico` |
| Histórico da horta | `GET /admin/horta/historico?id_horta=1` (admin) |

## Banco de dados

Tabelas principais: `Perfil`, `Usuario`, `Horta`, `UsuarioHortaRole`, `Tarefas`, `Recompensas` e `PerfilRecompensas`. As tabelas de dados principais usam **soft delete** (coluna `deleted_at`), então os registros nunca são apagados de verdade.

## Minha contribuição

> Preencha com a sua parte no projeto: quais telas, endpoints ou correções você fez, e o que aprendeu.

- 
- 

## Equipe

Projeto desenvolvido pela turma de Projeto Integrador 1 do curso de ADS, CEUB, como continuação de um trabalho sobre hortas urbanas.