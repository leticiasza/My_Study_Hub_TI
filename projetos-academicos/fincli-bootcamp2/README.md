# FinCLI: controle de gastos como API web

API de controle de gastos pessoais. Registra, lista e remove gastos e mostra o total convertido em BRL, USD, EUR e BTC em tempo real.

**Contexto:** Bootcamp 2
**Tecnologias:** Python 3.13, FastAPI, Uvicorn, Supabase (PostgreSQL), pytest, ruff, GitHub Actions, Render
**Repositório original:** https://github.com/leticiasza/fincli-bootcamp2
**API em produção:** https://fincli-bootcamp2.onrender.com (documentação em `/docs`)

## Problema

O dinheiro some no fim do mês e ninguém sabe para onde foi. Planilhas são chatas e apps exigem login e são pesados. O FinCLI oferece um controle simples e direto.

## Endpoints

| Método | Rota | O que faz |
|---|---|---|
| POST | `/expenses` | Registra um gasto |
| GET | `/expenses` | Lista os gastos |
| DELETE | `/expenses/{id}` | Remove um gasto |
| GET | `/total` | Total em BRL, USD, EUR e BTC |

O `/total` consome a AwesomeAPI para converter o valor.

## Arquitetura

Arquitetura hexagonal (portas e adaptadores): domínio em `models.py`, contrato de persistência em `repository.py`, adaptadores JSON e Supabase, casos de uso em `services.py` e interfaces em `api.py` (FastAPI) e `cli.py`.

## Como executar

```powershell
git clone https://github.com/leticiasza/fincli-bootcamp2.git
cd fincli-bootcamp2
python -m venv .venv
.venv\Scripts\activate
pip install -r requirements.txt
pip install -e .
uvicorn fincli.api:app --reload
```

Crie um arquivo `.env` com `SUPABASE_URL` e `SUPABASE_KEY`. Testes: `pytest`. Qualidade de código: `ruff check .`

## Autoria

Leticia Souza (@leticiasza)