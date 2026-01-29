# 🔄 Shared Agents - QA + Development

**Categoria**: Shared (QA Engineers, Developers, DevOps, Tech Leads)  
**Agents**: 9 total  
**Status**: ✅ v1.0 Production Ready

---

## 📋 Shared Agents Disponíveis

### 👁️ Code Review Agents (4)
Quality assurance for code, security, data, and performance

- **[Code Reviewer](./code-review/reviewer/agent-prompt.md)** - Validates code quality and best practices
- **[Security Reviewer](./code-review/security/agent-prompt.md)** - Detects secrets, vulnerabilities, security issues
- **[Data Validation](./code-review/data-validation/agent-prompt.md)** - Validates test data integrity (JSON/CSV/YAML)
- **[Performance Analyzer](./code-review/performance/agent-prompt.md)** - Identifies bottlenecks (timeouts, retries, inefficiencies)

### 📖 Documentation Agents (1)
Generate comprehensive project documentation

- **[Documentation Generator](./documentation/generator/agent-prompt.md)** - Creates README, setup guides, API docs, migration reports

### 📊 Reporting Agents (1)
Design test reports and metrics dashboards

- **[Reporting Designer](./reporting/designer/agent-prompt.md)** - Designs test reports, dashboards, metrics visualization (Allure, HTML, custom)

### 🚀 DevOps Agents (3)
CI/CD pipeline setup and infrastructure automation

- **[CI/CD Validator](./devops/ci-cd/agent-prompt.md)** - Generates CI/CD pipelines (GitHub Actions, GitLab CI, Jenkins, Azure DevOps)
- **[Issue Template Designer](./devops/templates/agent-prompt.md)** - Generates bug reports, feature requests, PR templates
- **[Repository Setup Assistant](./devops/setup/agent-prompt.md)** - Configures .editorconfig, pre-commit hooks, .gitignore, Dependabot

---

## 🚀 Quick Start

### Detectar Agents Automaticamente

Shared agents ativam quando você menciona:

**Code Review**: "revisar", "review", "validar", "security", "performance", "timeout", "lento"
```
Você: "Revisar código para segurança"
→ Code Review agents auto-carregam
```

**Documentation**: "documentação", "documentation", "gerar doc", "readme", "guide", "setup"
```
Você: "Gerar README completo do projeto"
→ Documentation Generator carrega
```

**Reporting**: "relatório", "report", "dashboard", "metrics", "allure", "resultado"
```
Você: "Criar dashboard de métricas de teste"
→ Reporting Designer carrega
```

**DevOps**: "ci/cd", "pipeline", "github actions", "deploy", "workflow", "automação"
```
Você: "Criar GitHub Actions workflow para testes"
→ CI/CD Validator carrega
```

---

## 📊 Statistics

| Métrica | Valor |
|---------|-------|
| **Total Agents** | 9 |
| **Categories** | 4 (Code Review, Documentation, Reporting, DevOps) |
| **Auto-Activation Keywords** | 35+ |
| **Audience** | QA + Dev + DevOps |
| **Status** | ✅ Production Ready |

---

## 👥 Audience

- **QA Engineers**: Code Review (4), Documentation (1), Reporting (1)
- **Developers**: Code Review (4), Documentation (1), DevOps (3)
- **DevOps/SRE**: All 9 agents
- **Tech Leads**: All 9 agents
- **Security**: Code Review - Security (1)
- **Product Managers**: Documentation (1), Reporting (1)

---

## 🔗 Related Categories

- **🎯 QA Agents**: Test automation, migration
- **💻 Dev Agents**: Code generation, language-specific patterns
- **🏗️ Infrastructure Agents**: Kubernetes, Cloud deployment, IaC
- **🔐 Security Agents**: Secrets, compliance, scanning
- **🤖 System Agents**: Universal Helper, Specification Agent

---

## 📖 Documentation

- **[Universal Helper](../system/universal-helper/agent-prompt.md)** - Semantic intent detection
- **[Specification Agent](../system/specification/agent-prompt.md)** - PRD + Architecture generation
- **[Roadmap](../../../docs/ROADMAP_AGENTS_EXPANSION.md)** - Future agents planning
- **[Examples](../../../docs/EXEMPLOS_USO_CHAT.md)** - Real-world usage examples

---

**Version**: 2.1  
**Category**: Shared (QA+Dev+DevOps)  
**Status**: ✅ Production Ready
