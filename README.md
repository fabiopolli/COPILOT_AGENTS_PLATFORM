# **🤖 Copilot Agents Platform**

## **Multi-Agent System for Professional Development, QA, and DevOps**

⚠️ **THIS IS A DRAFT** \> This is not a final product. It's a starting point. A conversation. We need you to criticize it harshly.

All controls are open for discussion. We want disagreement. We want edge cases we haven't considered.

This is not our standard. It's meant to be the community standard, built by the people who actually implement these things.

A comprehensive platform with **49 specialized AI agents** (37 implemented \+ 12 in active roadmap) for **software development, QA automation, DevOps, Infrastructure, Security, and professional workflows** \- all controlled via natural language conversation in your IDE.

Built to make GitHub Copilot in VSCode more powerful and accessible for daily development tasks without documentation lookup or complex prompts.

* **🎯 Smart Token Management**: Only 2 agents (System) active by default (90%+ token savings). 37 agents load automatically via AGENTS.md by context and semantic detection.  
* **⚡ Native Integration**: Uses Microsoft's standard chat.useAgentsMdFile for zero-config activation.

**Version 2.1**: 6-category architecture (QA, Dev, Shared, Infrastructure, Security, System) \- **ALL LIVE** **For**: Developers, QA Engineers, DevOps, DevSecOps, Architects, SRE

**Languages**: Python, Java, JavaScript/TypeScript, Go, .NET, and QA test frameworks

**Status**: ✅ 37 agents production-ready (v2.1 complete, all 6 categories active)

## **🎯 Vision**

Transform your **QA \+ Development workflow** with intelligent agents that handle:

* **Test Migration** (ANY→ANY framework: Karate↔Robot, Selenium→Playwright, Cypress→Playwright, Jest→Vitest, Postman→Robot/Karate, etc.)  
* **Test Generation** (API, UI, Performance, Smoke)  
* **Code Quality** (Reviews, Security, Data Validation, Performance Analysis)  
* **CI/CD Integration** (Jenkins, GitHub Actions, GitLab CI)  
* **Documentation** (Reports, Dashboards, Guides)  
* **Framework Templates** (Robot, Karate, Cypress, Playwright)

### **Key Features**

* **🤖 49 Specialized Agents**: Multi-language support across the entire SDLC (37 active \+ 12 roadmap).  
* **💬 Chat-Based Control**: Execute via natural language in VSCode.  
* **🧠 Semantic Detection**: Universal Helper understands intent beyond keywords ("analisar código" → auto-loads code review).  
* **⚡ Auto-Activation**: All agents activate automatically when you mention relevant keywords (no manual loading needed).  
* **🔄 ANY→ANY Migration**: Intelligent mapping and conversion between ANY QA frameworks.  
* **💰 Token Optimization**: 90%+ savings via semantic routing and AGENTS.md system.  
* **📊 Auto-Partitioning**: SUMMARY.md manages history automatically (500 lines threshold).  
* **🔄 Flexible Workflows**: Run individually or orchestrated.  
* **✅ Checkpoint System**: Review and approve at key phases.  
* **🔁 Error Recovery**: Resume from any interruption point.  
* **📚 Auto Documentation**: Complete docs generation (README, Guides, API Docs).  
* **🎨 Framework Agnostic**: Works with Robot, Karate, Cypress, Playwright, Selenium, Jest, Postman.

## **📦 Agent Categories (49 Total \- v2.1 FINAL)**

### **📍 System Agents (2 \- Always Active)**

**Status**: ✅ v2.1 Production Ready

* **🤖 Universal Helper**: Semantic intent detection \+ category-based routing.  
* **📋 Specification Agent**: Interactive 5-phase PRD \+ Architecture generator.  
  **Location**: .github/agents/system/

### **🎯 QA Agents (12)**

**Status**: ✅ v2.1 Production Ready

* **🔄 Migration (7)**: Orchestrator, Core, Dependency Mapper, Environment Config, API Mapper, Keyword Designer, Assertion Converter.  
* **🧪 Test Strategy (2)**: Organization, analysis, tagging, coverage.  
* **🤖 Frameworks (2)**: Robot Framework, Karate DSL templates.  
* **🏗️ Scaffold (1)**: Project structure and directory generator.  
  **Location**: .github/agents/qa/

### **💻 Dev Agents (17)**

**Status**: ✅ v2.1 Production Ready

* **🐍 Python (4)**: Code Generator, Linter/Type Checker, Migration, Refactoring.  
* **🐹 Go (3)**: Code Generator, Concurrency Specialist, Performance Optimizer.  
* **🔷 .NET (3)**: Code Generator, EF Core Specialist, ASP.NET Patterns.  
* **🟨 JS/TS (3)**: Code Generator, TypeScript Specialist, Performance.  
* **☕ Java (2)**: Code Generator, Spring Patterns.  
* **🔄 Generic (2)**: Architecture Analyzer, Language Migration Specialist.  
  **Location**: .github/agents/dev/

### **🔄 Shared Agents (9)**

**Status**: ✅ v2.1 Production Ready

* **👁️ Code Review (4)**: Quality, Security, Data Validation, Performance Analyzer.  
* **📖 Documentation (1)**: README, Guides, API Docs.  
* **📊 Reporting (1)**: Dashboards, Metrics, Allure Integration.  
* **🚀 DevOps (3)**: CI/CD Validator, Issue Templates, Repo Setup Assistant.  
  **Location**: .github/agents/shared/

### **🏗️ Infrastructure Agents (6)**

**Status**: ✅ v2.1 Production Ready

* **📋 IaC (2)**: Terraform Specialist, Bicep Specialist.  
* **🐳 Kubernetes (2)**: Manifest Generator, Helm Specialist.  
* **🌩️ Cloud (2)**: Azure Deployment, AWS Deployment.  
  **Location**: .github/agents/infrastructure/

### **🔐 Security Agents (3)**

**Status**: ✅ v2.1 Production Ready

* **🔐 Specialists**: Vault/Secrets Management, Compliance Auditor, Vulnerability Scanner.  
  **Location**: .github/agents/security/

## **📚 Documentação**

Toda a documentação está organizada em /docs/:

### **🚀 Para Começar**

* [**Sistema Auto-Ativação** (5 min)](https://www.google.com/search?q=docs/SISTEMA_AUTO_ATIVACAO.md) \- Como os agents funcionam automaticamente.  
* [**QUICK\_REFERENCE**](https://www.google.com/search?q=docs/SISTEMA_AUTO_ATIVACAO.md%23-keywords-de-auto-ativa%C3%A7%C3%A3o) \- Guia rápido de keywords.

### **📖 Documentação Técnica**

* [**Análise Completa**](https://www.google.com/search?q=docs/ANALISE_COMPLETA_AGENTS.md) \- Arquitetura detalhada dos 49 agentes.  
* [**Exemplos de Uso**](https://www.google.com/search?q=docs/EXEMPLOS_USO_CHAT.md) \- Casos práticos com exemplos (Português).  
* [**Roadmap de Expansão**](https://www.google.com/search?q=docs/ROADMAP_AGENTS_EXPANSION.md) \- Futuros agents (50+), MCPs e Mobile.

### **🔗 MCPs (Model Context Protocol)**

* [**MCP Overview**](https://www.google.com/search?q=.mcp/README.md) \- Integração com serviços externos (Jenkins, GitLab CI, Cloud).

## **🎯 Quick Start (5 min)**

### **1\. Instalação**

git clone \[https://github.com/fabiopolli/COPILOT\_AGENTS\_PLATFORM.git\](https://github.com/fabiopolli/COPILOT\_AGENTS\_PLATFORM.git)  
cd COPILOT\_AGENTS\_PLATFORM  
code .

### **2\. VSCode Configuration**

Habilite o suporte nativo no seu .vscode/settings.json:

{  
  "chat.useAgentsMdFile": true,  
  "chat.useNestedAgentsMdFiles": true  
}

### **3\. Escolha sua tarefa no Chat do Copilot:**

| Tarefa | Digite | Agents Carregados |
| :---- | :---- | :---- |
| **Migrar testes** | "migrar de X para Y" | migration (7) |
| **Revisar código** | "revisar código" | code-review (4) |
| **Criar pipeline** | "pipeline github actions" | devops (3) |
| **Análise testes** | "cobertura de testes" | test-strategy (2) |
| **Geração Infra** | "manifesto kubernetes" | infrastructure (2) |

## **🧠 Deep Dive: Advanced Features**

### **Semantic Intent Detection & Auto-Activation**

* **Universal Helper upgraded**: Understands intent beyond exact keywords.  
* Say "revisar código" → Auto-loads code review agents.  
* Mention "performance", "timeout", "lento" → Auto-loads performance analyzer.  
* Context-aware: Uses file types, git status, and project structure as clues.

### **ANY→ANY Framework Migration**

* **Universal migration support**: Karate ↔ Robot, Selenium → Playwright, Cypress → Playwright, Jest → Vitest, Postman → Robot/Karate.  
* **Intelligent detection**: System auto-detects source/target frameworks from file types.  
* **Customization**: Support for internal frameworks via agent prompting.

### **AGENTS.md Auto-Loading System**

* **Zero manual config**: All agents load via category-based AGENTS.md files.  
* **Semantic routing**: Helper analyzes requests and triggers \#file loads automatically.

### **MR/PR Workflow Integration**

* **Auto Template**: Generated after each batch commit.  
* **Complete checklist**: Code review results, test coverage, documentation status.  
* **Next steps**: Automated flow until merge.

### **Scaffold Generator**

* **Production-ready**: Expanded to 200+ lines of structural instructions.  
* **3 scaffold types**: API, UI, and Hybrid testing structures.

## **🏗️ Generated Project Structure**

Robot\_Framework\_Project/  
├── config/                 \# Environment configurations  
├── data/                   \# Test data  
├── docs/                   \# Generated documentation  
├── libraries/              \# Python helper libraries  
├── resources/              \# Reusable Robot Framework keywords  
├── tests/                  \# Robot Framework test files  
├── requirements.txt        \# Python dependencies  
└── README.md              \# Project documentation

## **🔄 Execution Modes**

* **Full Workflow**: Executes all agents in suggested order (orchestrated).  
* **Custom Workflow**: Execute specific agents in any order you choose.  
* **Single Agent**: Execute one agent independently.  
* **Interactive**: Execute with checkpoints for review after each phase.

## **🔁 Error Recovery**

Se algo correr mal:

1. O sistema guarda automaticamente o estado.  
2. Podes retomar exatamente de onde paraste.  
3. Opções: **RETRY**, **SKIP**, **MANUAL fix**, ou **ABORT**.

## **💬 Example Conversation**

**User**: "Migrate my Selenium project to Playwright. Files: \#Folder examples/selenium-tests"

**QA Helper**: "Detectei migração Selenium → Playwright\!

⚠️ CARREGANDO AGENTS DE MIGRAÇÃO AUTOMATICAMENTE:

\#file .github/agents/migration/AGENTS.md"

**Orchestrator**: "Analyzing project... Found: 35 test files, WebDriver setup, PageObjects.

Default workflow (7 agents adapted):

1. Dependency Mapper  
2. Environment Configuration  
3. API Endpoint Mapper  
   ...  
   Execute complete workflow? (yes/no/customize)"

## **📝 Changelog & Roadmap**

### **v1.0 (✅ DONE \- Sept 2025\)**

* Multi-agent system core (23 agents).  
* ANY→ANY framework migration engine.

### **v2.1 (✅ LIVE \- Jan 2026\)**

* **Expansion to 49 Agents**: All 6 categories fully operational.  
* **Infrastructure & Security**: Terraform, Kubernetes, and Vault agents LIVE.  
* **System Agents**: Advanced PRD \+ Architecture generation.

### **v3.0 (⏳ PLANNED \- Q4 2026\)**

* **Advanced Testing**: Mobile Testing (Appium) and Visual Regression.  
* **MCP Expansion**: Phase 2 Cloud & Collaboration integrations.

## **🛡️ Security & Contributing**

**Security**: If you discover a vulnerability, please do NOT open a public issue.

Contact privately: **fabiopolli@outlook.com** or via [LinkedIn](https://www.linkedin.com/in/fábio-polli/).

**Contributing**: Quer adicionar novos agents? Expandir CI/CD, Frameworks ou MCPs?

[📖 Leia CONTRIBUTING.md](https://github.com/fabiopolli/COPILOT_AGENTS_PLATFORM/blob/main/CONTRIBUTING.md) para templates e padrões de PR.

**Version**: 2.1 Final | **Author**: Fábio Polli | **Year**: 2026
