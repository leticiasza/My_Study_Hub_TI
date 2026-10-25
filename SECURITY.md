# Política de segurança

## Versões

Este repositório é um portfólio estático. A versão mantida é a que está na branch `main`, publicada no GitHub Pages.

## Como reportar um problema de segurança

Use a aba **Security → Report a vulnerability** deste repositório. Não abra uma issue pública com detalhes do problema.

## Práticas adotadas

- Nenhuma senha, chave de API ou arquivo `.env` é versionado.
- A branch `main` é protegida: alterações entram por Pull Request.
- Autenticação em dois fatores ativada na conta proprietária.
- Alertas de dependências (Dependabot) e detecção de segredos (secret scanning) ativados.
- Colaboradores recebem a menor permissão necessária.

## Se um segredo for enviado por engano

1. Revogue ou troque a credencial imediatamente.
2. Remova o arquivo do repositório e do histórico.
3. Confira a aba **Security** para alertas de secret scanning.