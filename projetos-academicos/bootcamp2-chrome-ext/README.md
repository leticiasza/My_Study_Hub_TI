# Gerador de Senhas Aleatórias

Extensão para Google Chrome que gera senhas aleatórias seguras e as copia para a área de transferência.

**Contexto:** Bootcamp 2
**Tecnologias:** JavaScript, HTML, CSS, Chrome Extension (Manifest)
**Repositório original:** https://github.com/leticiasza/bootcamp2-chrome-ext

## Funcionalidades

- Gera senhas com letras, números e símbolos
- Copia a senha para a área de transferência
- Salva a última senha gerada e a mostra ao abrir o popup de novo

## Como instalar

1. Abra `chrome://extensions/` no Chrome.
2. Ative o **Modo do desenvolvedor**.
3. Clique em **Carregar sem compactação**.
4. Selecione a pasta raiz da extensão.

## Como usar

Clique no ícone da extensão, depois em **Gerar Senha** e em **Copiar**.

## Personalização

O tamanho da senha e os caracteres disponíveis ficam na função `generatePassword()` do arquivo `popup.js`.

## Licença

MIT