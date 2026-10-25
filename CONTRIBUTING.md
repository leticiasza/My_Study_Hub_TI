# Como colaborar

## Fluxo de trabalho

1. Crie uma branch a partir da `main`: `git checkout -b feat/nome-da-mudanca`
2. Faça commits pequenos, com mensagens no padrão `tipo: descrição` (`feat`, `fix`, `docs`, `refactor`).
3. Envie a branch: `git push origin feat/nome-da-mudanca`
4. Abra um Pull Request para a `main` e preencha o modelo.
5. Aguarde a revisão. Só depois da aprovação a mudança entra na `main`.

## Regras

- Não envie diretamente para a `main`.
- Não versione senhas, chaves ou arquivos `.env`.
- Cada projeto fica em `projetos-academicos/<nome>/` e tem um `README.md`.
- Teste a página localmente antes de abrir o Pull Request: `python -m http.server 8000`

## Versionamento

As versões são marcadas com tags (`v1.0`, `v2.0`, ...).