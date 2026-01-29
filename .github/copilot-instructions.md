# Copilot Instructions: Workflow Agents System

> **📌 Para continuar trabalhando amanhã:** Veja `.github/COMO_CONTINUAR.md`
> 
> **Este é o ÚNICO arquivo de instruções que você precisa manter atualizado.**  
> Os READMEs na raiz são documentação externa (sincronize apenas antes de publicar).

## 🚀 Agent Auto-Loading System (Zero Manual Configuration)

**IMPORTANTE:** Este sistema detecta sua intenção e carrega agents automaticamente via contexto.

### Detection Rules - Como Carregar Agents Automaticamente

Quando o usuário menciona estas palavras-chave, VOCÊ DEVE carregar os agents correspondentes usando comandos `#file`:

#### 🔄 **Migração de Frameworks de QA (ANY → ANY)**
**Triggers:** "migrar", "migration", "convert", "transform", "adaptar", "portar", "reescrever"

**Action:** Carregar TODOS os agents de migração:
```
#file .github/agents/migration/AGENTS.md
```

**Migrações Suportadas:**
- Karate DSL → Robot Framework
- Selenium (Java/Python) → Robot Framework / Playwright
- Cypress → Playwright
- Jest → Vitest
- Postman Collections → Robot Framework / Karate
- **Qualquer framework de QA → Qualquer framework de QA**

**Exemplo de uso:**
- User: "Preciso migrar o projeto Score de Karate para Robot"
- Assistant: [PRIMEIRO carrega migration/AGENTS.md via #file, DEPOIS responde]
- User: "Converter testes Selenium para Playwright"
- Assistant: [PRIMEIRO carrega migration/AGENTS.md via #file, DEPOIS responde]

#### 🤖 **Gerar Template Robot Framework**
**Triggers:** "gerar template robot", "create robot project", "scaffold robot", "novo projeto robot"

**Action:**
```
#file .github/agents/frameworks/AGENTS.md
```

#### 🥋 **Gerar Template Karate Framework**
**Triggers:** "gerar template karate", "create karate project", "scaffold karate"

**Action:**
```
#file .github/agents/frameworks/AGENTS.md
```

#### 👁️ **Code Review**
**Triggers:** "revisar", "review", "code review", "validar", "validate", "security", "segurança", "credenciais", "credentials", "hardcoded", "best practices", "performance", "timeout", "retry"

**Action:** Carregar TODOS os agents de code review:
```
#file .github/agents/code_review/AGENTS.md
```

**Agents inclusos:**
- Code Review (padrões, best practices)
- Security Reviewer (credenciais, vulnerabilidades)
- Data Validation (integridade JSON/CSV/YAML)
- Performance Analyzer (timeouts, retries, bottlenecks)

**Exemplo de uso:**
- User: "Revisar este código para segurança e performance"
- Assistant: [PRIMEIRO carrega code_review/AGENTS.md via #file, DEPOIS analisa código]

#### 🚀 **DevOps & CI/CD**
**Triggers:** "ci/cd", "pipeline", "github actions", "workflow", "validate", "deploy", "jenkins", "gitlab ci", "setup automation", "github action"

**Action:** Carregar TODOS os agents de DevOps:
```
#file .github/agents/devops-helper/AGENTS.md
```

**Agents inclusos:**
- CI/CD Validator (pipelines, workflows, validation)
- Issue Template Designer (templates, checklists)
- Repository Setup Assistant (editorconfig, pre-commit, standardization)

**Exemplo de uso:**
- User: "Create a GitHub Actions pipeline for validation"
- Assistant: [PRIMEIRO carrega devops-helper/AGENTS.md via #file, DEPOIS cria workflow]

#### 🧪 **Test Strategy**
**Triggers:** "estratégia", "strategy", "test strategy", "organizar testes", "tagging", "tags", "cobertura", "coverage", "analisar testes", "test analysis", "test metrics", "plano de teste"

**Action:** Carregar agents de estratégia e análise:
```
#file .github/agents/test-strategy/AGENTS.md
```

**Agents inclusos:**
- Test Strategy (organização, tagging, execução)
- Test Analysis (cobertura, métricas de qualidade)

**Exemplo de uso:**
- User: "Analisar cobertura dos testes"
- Assistant: [PRIMEIRO carrega test-strategy/AGENTS.md via #file, DEPOIS analisa]

#### 📖 **Documentation**
**Triggers:** "documentação", "documentation", "gerar doc", "criar readme", "guide", "setup guide", "migration report", "relatório", "report"

**Action:** Carregar agents de documentação:
```
#file .github/agents/documentation/AGENTS.md
```

**Agents inclusos:**
- Documentation Generator (README, guides, reports)
- Reporting Designer (dashboards, relatórios de teste)

**Exemplo de uso:**
- User: "Gerar README do projeto"
- Assistant: [PRIMEIRO carrega documentation/AGENTS.md via #file, DEPOIS gera]

---

## System Overview

Multi-agent system for **Karate → Robot Framework migration** and **QA automation**.  
Agents são carregados **AUTOMATICAMENTE** via detecção de intenção (veja regras acima).

### Agent Organization

```
.github/agents/
├── migration/karate-to-robot/    # 7 agents (orchestrator, core, converters)
├── frameworks/                   # 2 agents (Robot + Karate template specialists)
├── code_review/                  # 4 agents (code, security, data, performance)
├── test-strategy/                # 2 agents (strategy + analysis)
├── documentation/                # Documentation generator
├── reporting-designer/           # Report/dashboard designer
└── scaffold/                     # Project scaffolding
```

**Estrutura:** Cada pasta tem `AGENTS.md` (índice) + `agent-prompt.md` (detalhes).

### VS Code Integration

**Settings configurados:**
- `.github/copilot-instructions.md` → Este arquivo (sempre ativo)
- `chat.useAgentsMdFile: true` → Ativa suporte a AGENTS.md
- `chat.useNestedAgentsMdFiles: true` → AGENTS.md por pasta

**Como funciona o auto-load:**
1. User edita `.feature` → VS Code carrega `migration/karate-to-robot/AGENTS.md` automaticamente
2. User pede "migrar" no chat → Sistema carrega `AGENTS.md` via detecção de intenção
3. User seleciona código + "review" → VS Code carrega `code_review/AGENTS.md`

---

## 📝 Comando Rápido para Continuar Migração

```
Continuar migração - próximos 50 cenários

Contexto: #file tests/robot/SUMMARY.md
```

Sistema detecta "migração" → Carrega agents automaticamente → Processa lote → Pausa para revisão

---

## 📚 Referências Principais

1. **Universal Helper:** `.github/agents/universal-helper/agent-prompt.md` (System agent - always active)
2. **DevOps Agents:** `.github/agents/devops-helper/AGENTS.md` (CI/CD, templates, setup)
3. **Orchestrator:** `.github/agents/migration/karate-to-robot/orchestrator/agent-prompt.md`
4. **Commits Faseados:** `.github/agents/migration/karate-to-robot/orchestrator/phased-commit-guide.md`
5. **Exemplos Práticos:** `docs/EXEMPLOS_USO_CHAT.md`
6. **Progresso:** `tests/robot/SUMMARY.md` (em cada projeto)

---

**Versão do Projeto:** 1.0 (Public Release - Community-Driven)  
**Versão do Sistema:** 3.2 (DevOps Agents + Universal Helper Rename)  
**Última atualização:** 29/01/2026  
**Projeto exemplo:** `examples/score/`  
**Configuração:** `.vscode/settings.json` + `.github/copilot-instructions.md`  
**Para continuar amanhã:** Leia `docs/COMO_CONTINUAR.md` (quando criado)