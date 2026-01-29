# 🤝 Contributing to Copilot Agents Platform

**Obrigado por querer contribuir!** Este documento te guia em como adicionar novos agents e melhorias.

---

## 🎯 Como Contribuir

### 1. Adicionar Novo Agent

#### Passo 1: Escolha uma Categoria
```
.github/agents/
├── qa/                 ← Para QA (migração, estratégia, frameworks)
├── dev/                ← Para desenvolvimento (Python, Go, .NET, JS/TS, Java)
├── shared/             ← Para QA+Dev (code review, docs, devops, reporting)
├── infrastructure/     ← Para IaC, Kubernetes, Cloud (Terraform, Bicep, K8s)
├── security/           ← Para segurança (secrets, compliance, scanning)
└── system/             ← Para sistema (universal-helper, specification)
```

#### Passo 2: Crie a Pasta e Arquivo

```bash
mkdir -p .github/agents/[categoria]/[seu-agent]
touch .github/agents/[categoria]/[seu-agent]/agent-prompt.md
```

#### Passo 3: Use o Template

```markdown
# [Nome do Agent]

## Role
[Descrição do que o agent faz]

## Responsibilities
- [Responsabilidade 1]
- [Responsabilidade 2]
- [Responsabilidade 3]

## Input
- **Arquivo/Contexto 1**: Descrição
- **Arquivo/Contexto 2**: Descrição

## Output
- **Resultado 1**: Descrição
- **Resultado 2**: Descrição

## Actions
1. [Passo 1]
2. [Passo 2]
3. [Passo 3]

## Examples

### Example 1: [Cenário]
**Input**:
```
[Exemplo do que o usuário digita]
```

**Expected Output**:
```
[Exemplo do resultado esperado]
```

### Example 2: [Outro cenário]
...

## Validation Checklist
- [ ] [Critério 1]
- [ ] [Critério 2]

## Error Handling
- **Error 1**: [Como resolver]
- **Error 2**: [Como resolver]

## Related Agents
- [Agent relacionado]: [Como se relaciona]
```

#### Passo 4: Registre no Universal Helper

**Arquivo**: `.github/agents/universal-helper/agent-prompt.md`

Adicione uma seção de detecção:

```markdown
### [Emoji] **[Categoria]**
**Intent Patterns:**
- **Explicit**: "keyword1", "keyword2"
- **Implicit**: "frase natural"
- **Context Clues**: [pistas de contexto]

**Action:**
\`\`\`
Detectei [descrição]...

⚠️ CARREGANDO AGENTS:
#file .github/agents/[categoria]/[seu-agent]/agent-prompt.md

Agents carregados!
\`\`\`

**Example Detections:**
- "[Frase 1]" → Auto-load
- "[Frase 2]" → Auto-load
```

#### Passo 5: Atualizar Documentação

1. **Atualizar `docs/ROADMAP_AGENTS_EXPANSION.md`**:
   - Mover de "Planejado" para "Implementado"
   - Atualizar contagem total
   - Adicionar à tabela de progresso

2. **Opcional: Atualizar `README.md`**:
   - Se for uma categoria nova ou muito importante

### 2. Melhorar Documentação

- Encontrou um typo? Corrija diretamente
- Acha que falta explicação? Adicione mais detalhes
- Quer adicionar exemplos? Ótimo!

### 3. Reportar Bugs

Se encontrou um bug:

1. **Verifique se já foi reportado**: Procure em Issues
2. **Crie um novo Issue**: Com título claro e repro steps
3. **Seja específico**: Qual agent? Qual keyword não funcionou?

### 4. Sugerir Features

Tem uma ideia? Ótimo!

1. **Abra uma Discussion**: Para debater a ideia
2. **Descreva o caso de uso**: Por que precisamos?
3. **Suggira uma categoria**: Onde se encaixa?

---

## 📋 Checklist Antes de Fazer PR

- [ ] Agent segue o template
- [ ] Responsabilidades são claras
- [ ] Exemplos são realistas
- [ ] Registrado no universal-helper
- [ ] Documentação atualizada
- [ ] Sem typos
- [ ] Keywords em português E inglês
- [ ] Testou com um comando de exemplo?

---

## 🔄 Fluxo de PR

1. **Fork** o repositório
2. **Branch** para sua feature: `git checkout -b feature/novo-agent`
3. **Commit** com mensagem clara: `feat: Add [Agent Name] agent`
4. **Push** para sua branch
5. **Abra PR** com descrição completa

### Mensagem de Commit

```
feat: Add Jenkins CI/CD Agent
- Gera Jenkinsfile automaticamente
- Suporta múltiplos stages
- Integra com Allure Reports

closes #123
```

### PR Description

```markdown
## Descrição
Adiciona novo agent para [descrição]

## Tipo de Mudança
- [ ] Novo Agent
- [ ] Melhoria de Agent Existente
- [ ] Documentação
- [ ] Bug Fix

## Checklist
- [ ] Testei com exemplos
- [ ] Atualizei documentação
- [ ] Não quebra nada existente
- [ ] Segue padrões do projeto

## Screenshots/Examples
[Se aplicável]
```

---

## 📚 Padrões do Projeto

### Nomenclatura
- **Pasta**: `kebab-case` (ex: `user-story-validator`)
- **Arquivo**: `agent-prompt.md` (sempre este nome)
- **Keywords**: Minúsculas em português (ex: "migrar", "revisar")

### Escrita
- **Português**: Usado em documentação e exemplos
- **Inglês**: Usado em keywords (para compatibilidade)
- **Tone**: Profissional, claro, conciso

### Estrutura de Agentes

```
categoria/
└── nome-do-agent/
    ├── agent-prompt.md (OBRIGATÓRIO)
    ├── README.md (OPCIONAL - para documentação extra)
    └── examples/ (OPCIONAL - exemplos)
        ├── input.txt
        └── output.txt
```

---

## 🎯 Áreas Prioritárias para Contribuir

### 🔴 Prioridade Alta (v1.5 - Q2 2026)
- [ ] Cypress Template Agent
- [ ] Playwright Template Agent
- [ ] Jenkins CI/CD Agent
- [ ] GitLab CI Agent
- [ ] API Test Generator

### 🟡 Prioridade Média (v2.0 - Q3 2026)
- [ ] Azure DevOps Agent
- [ ] AWS CodePipeline Agent
- [ ] Performance Test Generator
- [ ] User Story Validator
- [ ] BDD Scenario Generator

### 🟢 Prioridade Baixa (v3.0+)
- [ ] Mobile Testing Agents
- [ ] Visual Regression Agents
- [ ] API Mocking Agents

---

## 💡 Ideias para Novos Agents

### Development Agents
- [ ] Code Refactoring (identifica code smells)
- [ ] Performance Profiling (analisa gargalos)
- [ ] Security Auditor (busca vulnerabilidades)
- [ ] Dependency Manager (atualiza libs)

### Test Agents
- [ ] Contract Testing (Pact, Spring Cloud Contract)
- [ ] Accessibility Testing (axe-core)
- [ ] Visual Regression (Percy, Applitools)
- [ ] Chaos Engineering (fault injection)

### Cloud Agents
- [ ] Kubernetes Deployment
- [ ] Serverless Setup (Lambda, Cloud Functions)
- [ ] Infrastructure as Code (Terraform, Bicep)
- [ ] Multi-Cloud Orchestration

---

## 🔗 MCPs (Model Context Protocol)

Se você quer integrar com serviços externos:

1. **Crie MCP Spec**: `.mcp/[categoria]/[serviço].mcp.json`
2. **Defina Resources e Tools**: Segundo OpenAI MCP spec
3. **Link no Agent**: Agent usa MCP para validação/execução
4. **Documente**: Em `.mcp/README.md`

---

## ❓ Dúvidas?

- **Documentação**: Veja `docs/ROADMAP_AGENTS_EXPANSION.md`
- **Exemplos**: Veja `docs/EXEMPLOS_USO_CHAT.md`
- **Padrões**: Veja `.github/agents/code_review/agent-prompt.md` (modelo)
- **Discussão**: Abra uma Discussion no GitHub

---

## 🙏 Obrigado!

Sua contribuição ajuda a melhorar a plataforma para todos!

---

## 📧 Contato & Feedback

**👤 Projeto Lead:** Fábio Polli  
**🔗 LinkedIn**: [Fábio Polli](https://www.linkedin.com/in/fábio-polli/)  

**Como Entrar em Contato:**
- 📝 Issues no GitHub (bugs, sugestões, feature requests)
- 💬 LinkedIn DM (discussões, feedback, parcerias)
- 🔀 Pull Requests (melhorias, novos agents, correções)

---

**Versão**: 1.0  
**Última Atualização**: 29/01/2026  
**Status**: Open for Community Contributions  
**Status**: Open for Community Contributions
