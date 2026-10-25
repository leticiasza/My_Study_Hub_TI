# Plano de implantação do PortfolioHUB

**Objetivo:** colocar o PortfolioHUB em produção no GitHub e no GitHub Pages, com gestão de usuários, políticas de segurança e controle de acesso, usando o Google Gemini como guia.

**Repositório:** https://github.com/leticiasza/My_Study_Hub_TI
**Página publicada:** https://leticiasza.github.io/My_Study_Hub_TI/

## Fases

### 1. Planejamento
- [ ] Plano de implantação escrito (este documento)
- [ ] Gemini configurado como guia, com os prompts registrados em [uso-do-gemini.md](uso-do-gemini.md)

### 2. Ambiente GitHub e integração
- [ ] Repositório dedicado ao projeto, com README, estrutura de pastas e tag `v1.0`
- [ ] Projetos armazenados em `projetos-academicos/`, um README por projeto
- [ ] Página publicada no GitHub Pages (branch `main`, pasta raiz)

### 3. Gestão de usuários
- [ ] Autenticação em dois fatores ativada na conta
- [ ] Colaboradores convidados com a permissão mínima necessária (Read, Triage ou Write)
- [ ] Papéis documentados: quem pode ler, quem pode propor mudanças e quem pode aprovar

### 4. Segurança
- [ ] Proteção da branch `main` (alteração só por Pull Request)
- [ ] Alertas de dependências (Dependabot) e detecção de segredos (secret scanning) ativados
- [ ] Nenhuma senha, chave ou `.env` no repositório; `.gitignore` configurado
- [ ] Política de segurança publicada em [SECURITY.md](../SECURITY.md)

### 5. Compartilhamento e controle de acesso
- [ ] Repositório público com link de compartilhamento
- [ ] Fluxo de colaboração documentado em [CONTRIBUTING.md](../CONTRIBUTING.md)
- [ ] Modelo de Pull Request em `.github/pull_request_template.md`

### 6. Testes e lançamento
- [ ] Todos os links da página testados (projetos, READMEs, documentos)
- [ ] Página testada em janela anônima e no celular
- [ ] Versão marcada com a tag `v2.0`

### 7. Apresentação
- [ ] Vídeo de 5 minutos no YouTube sobre as etapas da implantação e os desafios superados
- [ ] PDF de entrega com os links e prints

## Riscos e respostas

| Risco | Resposta |
|---|---|
| Push recusado por conflito | `git pull --rebase` antes de enviar |
| Credencial de outra conta no Windows | Limpar o Gerenciador de Credenciais e entrar de novo |
| Segredo enviado por engano | Revogar a chave imediatamente e remover do histórico |
| Página sem atualizar | Aguardar o deploy na aba Actions e usar Ctrl+F5 |