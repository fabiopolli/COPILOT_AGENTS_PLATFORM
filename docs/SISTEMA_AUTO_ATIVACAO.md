# 📖 Sistema de Auto-Ativação de Agents v2.1 - Copilot Agents Platform

**Data:** 29 de janeiro de 2026  
**Status:** ✅ v2.1 - Multi-Agent Platform (QA, Dev, Shared, Infrastructure, Security, System) - **ALL LIVE**  
**Agents Atuais:** 37 implementados (11 QA + 14 Dev + 9 Shared + 2 System + 6 Infrastructure + 3 Security)  
**Agents Planejados:** +11 (frameworks expansion, test generation, advanced testing)  
**Total Potencial:** 48 agents (roadmap v3.0)  
**Local:** Reorganizado em `.github/agents/` com 6 categorias profissionais

---

## 🎯 Quick Start (5 min)

### Como Funciona (v2.1)

```
1. Você digita algo no VS Code (português ou inglês)
2. Universal Helper detecta a intenção com compreensão semântica
3. Sistema identifica a categoria correta (QA, Dev, Shared, etc)
4. Agents da categoria auto-carregam automaticamente
5. Você escolhe qual usar ou executa automático
```

### Exemplos Práticos (v2.1)

| Você Digita | Categoria | Agents Carregados |
|---|---|---|
| "migrar de Karate para Robot" | QA | 7 agents de migração |
| "novo projeto Robot" | QA | Templates + Scaffold |
| "revisar este código" | Shared | 4 agents de qualidade |
| "criar pipeline GitHub" | Shared | 3 agents de DevOps |
| "otimizar teste lento" | Shared | Performance Analyzer |
| "refatorar código Python" | Dev | 4 agents Python |
| "gerar testes de API" | Dev | Code Generator + Performance |
| "criar projeto Node" | Dev | 3 agents JS/TS |
| "novo projeto" (sem contexto) | System | Specification Agent (5 fases) |

---

## 🏗️ Arquitetura v2.1

### 6 Categorias Profissionais

#### 1. 🎯 **QA Agents** (11 - QA Only)
**Local:** `.github/agents/qa/`

```
Triggers: "migrar", "test strategy", "template robot", "scaffold"
Agents:
  ├── Migration (7): Karate↔Robot, Selenium→Playwright, Jest→Vitest, etc
  ├── Test Strategy (2): Organization, Analysis
  ├── Frameworks (2): Robot Template, Karate Template
  └── Scaffold (1): Project structures
```

#### 2. 💻 **Dev Agents** (16+ - Dev Only)
**Local:** `.github/agents/dev/`

```
Triggers: "python", "refactor", ".net", "typescript", "java", "go"
Languages: Python (4), Go (3), .NET (3), JS/TS (3), Java (2), Generic (2)
Agents:
  ├── Python (4): Generator, Refactoring, Migration, Linter
  ├── Go (3): Generator, Concurrency, Performance
  ├── .NET (3): Generator, EF Core, ASP.NET
  ├── JS/TS (3): Generator, TypeScript, Performance
  ├── Java (2): Spring, Maven
  └── Generic (2): Lang Migration, Architecture
```

#### 3. 🔄 **Shared Agents** (9 - QA + Dev)
**Local:** `.github/agents/shared/`

```
Triggers: "revisar", "documentação", "pipeline", "relatório"
Agents:
  ├── Code Review (4): Quality, Security, Data, Performance
  ├── Documentation (1): README, Guides, Reports
  ├── Reporting (1): Dashboards, Metrics, Allure
  └── DevOps (3): CI/CD Validator, Templates, Setup
```

#### 4. 🏗️ **Infrastructure Agents** (6 - LIVE)
**Local:** `.github/agents/infrastructure/`

```
Status: ✅ v2.1 Production Ready
Triggers: "terraform", "kubernetes", "k8s", "azure", "aws", "gcp", "bicep", "helm", "infra"
Agents:
  ├── IaC (2): Terraform, Bicep/ARM
  ├── Kubernetes (2): Manifests, Helm Charts
  └── Cloud (2): Azure Deployment, AWS Deployment
```

#### 5. 🔐 **Security Agents** (3 - LIVE)
**Local:** `.github/agents/security/`

```
Status: ✅ v2.1 Production Ready
Triggers: "secrets", "vault", "compliance", "vulnerability", "scanning", "sast", "segurança", "gdpr", "cve"
Agents:
  ├── Secrets (1): Key Vault, Vault, Secrets Manager
  ├── Compliance (1): GDPR, SOC2, PCI-DSS
  └── Scanning (1): SAST, CVEs, Secrets Detection
```

#### 6. 📍 **System Agents** (2 - Sempre Ativos)
**Local:** `.github/agents/system/`

```
Status: ✅ v2.1 - Sempre ativo
Agents:
  ├── Universal Helper: Detecta intenção + roteia para categorias
  └── Specification Agent (NEW!): PRD/Architecture generation (5 fases)
```

---

## 🔧 Keywords de Auto-Ativação (Categoria-Based)

### QA Triggers
```
"migrar", "migration", "converter", "convert", 
"template", "scaffold", "estratégia", "strategy",
"test strategy", "cobertura", "coverage"
```

### Dev Triggers
```
"python", "refactor", ".net", "typescript", "javascript", "java", "go",
"refatorar", "criar código", "migrar linguagem", "language migration"
```

### Shared Triggers
```
"revisar", "review", "code review", "validar", "segurança",
"performance", "lento", "documentação", "pipeline", "ci/cd",
"relatório", "dashboard", "metrics", "allure"
```

### Infrastructure Triggers (Planejado)
```
"terraform", "iac", "kubernetes", "k8s", "helm",
"deployment", "azure", "aws", "gcp", "bicep"
```

### Security Triggers (Planejado)
```
"secrets", "vault", "compliance", "gdpr", "vulnerability",
"scanning", "sast", "cve", "credenciais", "credentials"
```

### System Triggers
```
"novo projeto", "new project", "especificar", "specify",
"arquitetura", "architecture", "planejamento", "planning"
```

---

## 📊 Estatísticas v2.1

| Métrica | Valor |
|---------|-------|
| **Total de Agents Planejados** | 47+ |
| **Agents Implementados (v1.0)** | 23 |
| **Sempre Ativos** | 2 (Universal Helper + Specification) |
| **Auto-Load On-Demand** | 21+ |
| **Keywords de Detecção** | 150+ |
| **Categorias** | 6 |
| **Linguagens Suportadas** | 5+ (Python, Go, .NET, JS/TS, Java) |
| **Token Savings** | 90%+ |

---

## 📚 Documentação Relacionada

- **README.md** (raiz) - Visão geral completa do projeto
- **ANALISE_COMPLETA_AGENTS.md** - Detalhes técnicos e arquitetura
- **EXEMPLOS_USO_CHAT.md** - Exemplos práticos de uso
- **ROADMAP_AGENTS_EXPANSION.md** - Roadmap completo
- **Specification Agent** (`.github/agents/system/specification/agent-prompt.md`) - Nova feature PRD/Architecture

---

## 🔗 Relacionados

- **ROADMAP_AGENTS_EXPANSION.md** - Futuros agents e MCPs
- **EXEMPLOS_USO_CHAT.md** - Exemplos práticos
- **ANALISE_COMPLETA_AGENTS.md** - Detalhes técnicos
- **README.md** (raiz) - Visão geral do projeto

---

**Sistema v2.1: 100% reorganizado e pronto para expansão!** 🚀
