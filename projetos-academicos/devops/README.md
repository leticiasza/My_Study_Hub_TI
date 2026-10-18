# DevOps: API Financeira com FastAPI

Atividades práticas da disciplina de DevOps. O projeto de referência é uma API para gerenciar movimentações financeiras, desenvolvida com FastAPI, com testes automatizados e Dockerfile para empacotamento.

**Tecnologias:** Python 3.11+, FastAPI, Uvicorn, SQLAlchemy, Pytest, Docker
**Repositórios:**

- https://github.com/leticiasza/devops
- https://github.com/leticiasza/devops_aula4ceub
- https://github.com/leticiasza/devopsaula10_leticia

## Estrutura

```
controle-financeiro/
├── app/
│   ├── routes/
│   ├── database.py
│   ├── main.py
│   ├── models.py
│   └── schemas.py
├── tests/
├── requirements.txt
├── Dockerfile
└── README.md
```

## Como executar

```powershell
git clone <link-do-repositorio>
cd controle-financeiro
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
python -m uvicorn app.main:app --reload
```

A API fica em `http://127.0.0.1:8000`.

| Documentação | Endereço |
|---|---|
| Swagger | http://127.0.0.1:8000/docs |
| Redoc | http://127.0.0.1:8000/redoc |

## Testes

```powershell
pytest -v
```

## Autores

Enzo Nardelli, Letícia de Souza e João Gabriel Costa. Projeto desenvolvido para estudo e prática com FastAPI.