# Consultório API

API REST em C# (.NET) para gerenciar os pacientes de um consultório, usando Entity Framework Core e SQLite. O projeto inclui a API Web e uma interface de console que acessam o mesmo banco de dados.

**Disciplina:** Desenvolvimento de Sistemas, UniCEUB (Prof. Fábio)
**Tecnologias:** C#, .NET, Entity Framework Core, SQLite, Swagger
**Repositório original:** https://github.com/leticiasza/Consultorio_API

## Entidade Paciente

| Campo | Tipo | Regra |
|---|---|---|
| Id | inteiro | Chave primária |
| Nome | texto | Obrigatório, até 120 caracteres |
| CPF | texto | Obrigatório, único, até 14 caracteres |
| Email | texto | Obrigatório, único, formato de e-mail |
| Data de nascimento | data | Obrigatória |

Erros de validação retornam `400 Bad Request` e dados duplicados (CPF ou e-mail) retornam `409 Conflict`.

## Rotas

| Método | Rota | Descrição |
|---|---|---|
| GET | `/api/v1/patients` | Lista todos os pacientes |
| GET | `/api/v1/patients/{id}` | Busca paciente por ID |
| POST | `/api/v1/patients` | Cadastra paciente |
| PUT | `/api/v1/patients/{id}` | Atualiza paciente |
| DELETE | `/api/v1/patients/{id}` | Remove paciente |

## Como executar

```powershell
git clone https://github.com/leticiasza/Consultorio_API.git
cd Consultorio_API
dotnet restore
dotnet ef migrations add InitialCreate
dotnet ef database update
dotnet run
```

A API sobe em `http://localhost:5099`, e o Swagger fica em `http://localhost:5099/swagger`.

## Autoria

Letícia de Souza de Almeida