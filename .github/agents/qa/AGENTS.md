# 🎯 QA Agents - Quality Assurance & Testing

**Categoria**: QA-Only (Testers, QA Engineers, Test Architects)  
**Agents**: 11 total  
**Status**: ✅ v1.0 Production Ready

---

## 📋 QA Agents Disponíveis

### 🔄 Migration Agents (7)
Framework migration support for ANY→ANY conversions

- **[Orchestrator](./migration/karate-to-robot/orchestrator/agent-prompt.md)** - Coordena migração completa (4 fases + auto-partition)
- **[Migration Core](./migration/karate-to-robot/core/agent-prompt.md)** - Converte testes (framework-agnostic)
- **[Dependency Mapper](./migration/karate-to-robot/dependency-mapper/agent-prompt.md)** - Traduz dependências entre PMs
- **[Environment Config](./migration/karate-to-robot/environment-config/agent-prompt.md)** - Converte configurações
- **[API Endpoint Mapper](./migration/karate-to-robot/api-mapper/agent-prompt.md)** - Cataloga e documenta APIs
- **[Keyword Designer](./migration/karate-to-robot/keyword-designer/agent-prompt.md)** - Cria keyword libraries reutilizáveis
- **[Assertion Converter](./migration/karate-to-robot/assertion-converter/agent-prompt.md)** - Traduz assertion styles

### 🧪 Test Strategy Agents (2)
Organize, analyze, and optimize testing approaches

- **[Test Strategy](./test-strategy/strategy/agent-prompt.md)** - Define organização, tagging, execução de testes
- **[Test Analysis](./test-strategy/analysis/agent-prompt.md)** - Analisa cobertura e métricas de qualidade

### 🤖 Framework Agents (2)
Generate complete test automation project templates

- **[Robot Framework Specialist](./frameworks/robot/agent-prompt.md)** - Gera projetos Robot Framework (API/UI/DB)
- **[Karate Framework Specialist](./frameworks/karate/agent-prompt.md)** - Gera projetos Karate DSL (REST/GraphQL)

### 🏗️ Scaffold Agent (1)
Complete project structure generation

- **[Scaffold Generator](./scaffold/agent-prompt.md)** - Cria estruturas de projetos de teste (API, UI, Hybrid)

---

## 🚀 Quick Start

### Detectar Agents Automaticamente

Os agents desta categoria ativam quando você menciona:

**Migration**: "migrar", "migration", "converter", "transform", "adaptar", "portar"
```
Você: "Migrar testes de Karate para Robot Framework"
→ Migration agents auto-carregam
```

**Test Strategy**: "estratégia", "strategy", "cobertura", "coverage", "analysis", "organizar"
```
Você: "Analisar cobertura de testes"
→ Test Strategy agents auto-carregam
```

**Frameworks**: "template", "scaffold", "novo projeto", "create project"
```
Você: "Gerar novo projeto Robot Framework"
→ Framework agents auto-carregam
```

**Scaffold**: "estrutura", "boilerplate", "projeto novo"
```
Você: "Criar estrutura de projetos de teste"
→ Scaffold agent carrega
```

---

## 📊 Statistics

| Métrica | Valor |
|---------|-------|
| **Total Agents** | 11 |
| **Categories** | 4 (Migration, Strategy, Frameworks, Scaffold) |
| **Framework Support** | 6+ (Karate, Robot, Selenium, Cypress, Jest, Postman) |
| **Auto-Activation Keywords** | 25+ |
| **Status** | ✅ Production Ready |

---

## 🔗 Related Categories

- **🔄 Shared Agents**: Code Review, Documentation, Reporting, DevOps (available to QA+Dev)
- **💻 Dev Agents**: For development features implementation
- **🤖 System Agents**: Universal Helper + Specification Agent

---

## 📖 Documentation

- **[Universal Helper](../system/universal-helper/agent-prompt.md)** - Semantic intent detection
- **[Roadmap](../../../docs/ROADMAP_AGENTS_EXPANSION.md)** - Future agents planning
- **[Examples](../../../docs/EXEMPLOS_USO_CHAT.md)** - Real-world usage examples

---

**Version**: 2.1  
**Category**: QA-Only  
**Status**: ✅ Active
