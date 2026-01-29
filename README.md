# 🤖 Copilot Agents Platform
## Multi-Agent System for Professional Development, QA, and DevOps

> ⚠️ **THIS IS A DRAFT**  
> This is not a final product. It's a starting point. A conversation. We need you to criticize it harshly.  
> All controls are open for discussion. We want disagreement. We want edge cases we haven't considered.  
> This is not our standard. It's meant to be the community standard, built by the people who actually implement these things.

A comprehensive platform with **48 specialized AI agents** for **software development, QA automation, DevOps, Infrastructure, Security, and professional workflows** - all controlled via natural language conversation in your IDE.

Built to make GitHub Copilot in VSCode more powerful and accessible for daily development tasks without documentation lookup or complex prompts.

- **🎯 Smart Token Management**: Only 2 agents active by default (90%+ token savings). 37 agents load automatically via AGENTS.md by context and semantic detection.

**Version 2.1**: 6-category architecture (QA, Dev, Shared, Infrastructure, Security, System) - **ALL LIVE**  

**For**: Developers, QA Engineers, DevOps, DevSecOps, Architects, SRE  
**Languages**: Python, Java, JavaScript/TypeScript, Go, .NET, and QA test frameworks  
**Status**: ✅ 37 agents production-ready (v2.1 complete, all categories active)

## 🎯 Vision

Transform your **QA + Development workflow** with intelligent agents that handle:
- **Test Migration** (ANY framework → ANY framework: Karate↔Robot, Selenium→Playwright, Cypress→Playwright, Jest→Vitest, Postman→Robot/Karate, etc.)
- **Test Generation** (API, UI, Performance, Smoke)
- **Code Quality** (Reviews, Security, Data Validation, Performance Analysis)
- **CI/CD Integration** (Jenkins, GitHub Actions, GitLab CI)
- **Documentation** (Reports, Dashboards, Guides)
- **Framework Templates** (Robot, Karate - Cypress + Playwright planned)

### Key Features

- **🤖 35 Specialized Agents**: Multi-language support (QA, Dev, Shared, System)
- **💬 Chat-Based Control**: Execute via natural language in VSCode
- **🧠 Semantic Detection**: Universal Helper understands intent beyond keywords ("analisar código" → auto-loads code review)
- **⚡ Auto-Activation**: All agents activate automatically when you mention relevant keywords (no manual loading needed)
- **🔄 ANY→ANY Migration**: Convert between ANY QA frameworks (Karate↔Robot, Selenium→Playwright, Cypress→Playwright, Jest→Vitest, Postman→Robot/Karate)
- **💰 Token Optimization**: 90%+ savings (23 agents, 2 active by default) + 57% instruction reduction
- **📊 Auto-Partitioning**: SUMMARY.md manages history automatically (500 lines threshold)
- **🔄 Flexible Workflows**: Run individually or orchestrated
- **✅ Checkpoint System**: Review and approve at key phases
- **🔁 Error Recovery**: Resume from any interruption point
- **📚 Auto Documentation**: Complete docs generation
- **🎨 Framework Agnostic**: Works with Robot, Karate, Cypress, Playwright, Selenium, Jest, Postman

---

## 📦 Agent Categories (39 Total - v2.1)

### 🎯 QA Agents (9 - QA Only)
**Status**: ✅ v1.0 Production Ready

- **🔄 Migration** (5): Karate↔Robot core conversion engine
- **🧪 Test Strategy** (2): Organization, analysis, tagging, coverage
- **🤖 Frameworks** (2): Robot Framework, Karate DSL templates

**Location**: `.github/agents/qa/` (9 agents)

### 💻 Dev Agents (14 - Dev Only)
**Status**: ✅ v2.1 Production Ready

- **🐍 Python** (4): Code Generator, Refactoring, Migration, Linter/Type Checker
- **🐹 Go** (3): Code Generator, Concurrency, Performance
- **🔷 .NET** (3): Code Generator, EF Core, ASP.NET Patterns
- **🟨 JavaScript/TypeScript** (3): Code Generator, TypeScript, Performance
- **🔄 Generic** (2): Language Migration, Architecture Analyzer

**Location**: `.github/agents/dev/` (14 agents)

### 🔄 Shared Agents (8 - QA + Dev)
**Status**: ✅ v1.0 Production Ready

- **👁️ Code Review** (4): Quality, Security, Data Validation, Performance
- **📖 Documentation** (1): README, Guides, API Docs, Reports
- **📊 Reporting** (1): Dashboards, Metrics, Allure Integration
- **🚀 DevOps** (2): CI/CD Validator, Repo Setup

**Location**: `.github/agents/shared/` (8 agents)

### 🏗️ Infrastructure Agents (6 - LIVE)
**Status**: ✅ v2.1 Production Ready

- **📋 Infrastructure as Code** (2): Terraform, Bicep/ARM
- **🐳 Kubernetes** (2): Manifests, Helm Charts
- **🌩️ Cloud Deployment** (2): Azure, AWS

**Location**: `.github/agents/infrastructure/`

### 🔐 Security Agents (3 - LIVE)
**Status**: ✅ v2.1 Production Ready

- **🔐 Secrets Management** (1): Key Vault, Azure Secrets, HashiCorp Vault
- **✅ Compliance** (1): GDPR, SOC2, PCI-DSS
- **🔍 Vulnerability Scanning** (1): SAST, CVEs, Secrets Detection

**Location**: `.github/agents/security/`

### 📍 System Agents (2 - Always Active)
**Status**: ✅ v2.1 Production Ready (NEW!)

- **🤖 Universal Helper**: Semantic intent detection + category-based routing
- **📋 Specification Agent**: Interactive 5-phase PRD + Architecture generator

**Location**: `.github/agents/system/` (2 agents)

---

## 📚 Documentação

Toda a documentação está organizada em `/docs/`:

### 🚀 Para Começar
- [**Sistema Auto-Ativação** (5 min)](docs/SISTEMA_AUTO_ATIVACAO.md) - Como os agents funcionam automaticamente
- [**QUICK_REFERENCE** (PDF link em docs/)](docs/SISTEMA_AUTO_ATIVACAO.md#-keywords-de-auto-ativação) - Guia rápido de keywords

### 📖 Documentação Técnica
- [**Análise Completa**](docs/ANALISE_COMPLETA_AGENTS.md) - Arquitetura detalhada (18+ agents)
- [**Exemplos de Uso**](docs/EXEMPLOS_USO_CHAT.md) - Casos de uso práticos com exemplos
- [**Roadmap de Expansão**](docs/ROADMAP_AGENTS_EXPANSION.md) - Futuros agents (50+), Development Features, MCPs

### 🔗 MCPs (Model Context Protocol)
- [**MCP Overview**](.mcp/README.md) - Integração com serviços externos
- **Planejado**: CI/CD, Cloud, Colaboração

### 🎯 Quick Links
- **Agents Atualmente Ativos**: 37 (2 always active by default)
- **Auto-Activation Keywords**: 200+
- **Token Savings**: 90%+ vs. all agents active
- **Status**: ✅ v2.1 Production Ready (All 6 Categories Live)

---

## 🎯 Quick Start (5 min)

### 1. Abra VS Code neste projeto

### 2. Escolha sua tarefa:

| Tarefa | Digite | Agents Carregam |
|--------|--------|---|
| **Migrar testes** | "migrar de X para Y" | migration (7) |
| **Revisar código** | "revisar código" | code-review (4) |
| **Criar pipeline** | "pipeline github actions" | devops (3) |
| **Análise testes** | "cobertura de testes" | test-strategy (2) |
| **Gerar template** | "novo projeto robot" | frameworks (2) |

### 3. Agents auto-carregam automaticamente!

---

## 📚 Documentação Completa

### 🧠 Semantic Intent Detection & Auto-Activation (NEW!)
- **Universal Helper upgraded**: Understands intent beyond exact keywords AND auto-loads agents automatically
- **Auto-activation patterns**:
  - Say "revisar código" → Auto-loads all code review agents (no manual #file needed)
  - Say "migrar de Cypress" → Auto-loads migration agents (no "migrate" keyword needed)
  - Mention "performance", "timeout", "lento" → Auto-loads performance analyzer
  - Say "criar dashboard" → Auto-loads reporting designer
- **Context-aware**: Uses file types, git status, project structure as additional clues
- **All 23 agents auto-load**: Every agent has keyword triggers for automatic activation

### 🔄 ANY→ANY Framework Migration (NEW!)
- **Universal migration support**: Not limited to Karate→Robot (supports ANY QA framework)
- **Supported conversions**:
  - Karate DSL ↔ Robot Framework
  - Selenium (Java/Python) → Robot Framework / Playwright
  - Cypress → Playwright
  - Jest → Vitest
  - Postman Collections → Robot / Karate
  - Custom frameworks supported via agent customization
- **Intelligent detection**: System auto-detects source/target frameworks from file types
- **Auto-activates**: Simply mention "migrate" or "convert" + framework names

### 🚀 AGENTS.md Auto-Loading System
- **Zero manual config**: All 23 agents load via AGENTS.md (no registration needed)
- **13 AGENTS.md files**: One per category for smart loading
- **VS Code native**: `chat.useAgentsMdFile` + `chat.useNestedAgentsMdFiles` (Microsoft standard)
- **Semantic routing**: Universal Helper analyzes requests + loads agents via `#file` automatically
- **Context clues**: File extensions, keywords, user intent all trigger auto-load
- **Example workflows**:
  - Edit `.feature` file + mention "convert" → `migration/AGENTS.md` loads automatically
  - Select code + say "revisar" → `code_review/AGENTS.md` loads automatically
  - Type "ci/cd pipeline" → `devops-helper/AGENTS.md` loads automatically

### 🔄 MR/PR Workflow Integration
- **Auto MR/PR template**: Generated after each batch commit
- **Complete checklist**: Code review, tests, documentation
- **Reviewer suggestions**: QA Lead + Robot/Karate specialist
- **GitLab/GitHub instructions**: Pre-filled URLs to create MR
- **Next steps**: Complete flow until merge

### ⚡ Token Optimization (90%+ Agent Reduction)
- **copilot-instructions.md**: Only base instructions (2 agents always active)
- **AGENTS.md system**: 21 agents load only when needed (via semantic detection)
- **Result**: 90%+ fewer tokens in base instructions vs. loading all 23 agents
- **MCP optimization**: Universal Helper replaces complex nested decision trees with semantic detection

### 📊 Auto-Partitioning History
- **SUMMARY.md** auto-partitions at 500 lines
- Keeps last 2 batches inline, archives older ones to `summary-history/`
- Prevents token overload during long migrations
- Complete history preserved with links

### 🏗️ Scaffold Generator Expanded
- **Production-ready**: Expanded from 9 to 200+ lines
- **3 scaffold types**: API, UI, Hybrid testing structures
- **Complete examples**: Folder structures, config files, CI/CD integration

---

## Quick Start

### 1. Installation
```bash
git clone https://github.com//AI_PLATFORM_WITH_TOOLS_AND_RULES_FOR_QA.git
cd AI_PLATFORM_WITH_TOOLS_AND_RULES_FOR_QA
code .
```

### 2. Activate Agents (Optional)
By default, only QA Helper is active. For advanced features:

1. Open `.vscode/settings.json`
2. Uncomment the agent section you need (Ctrl+/)
3. Reload VS Code: `Ctrl+Shift+P` → "Developer: Reload Window"

**For most tasks, activation is automatic** - QA Helper detects intent and loads agents via `#file`!

### 3. Usage Examples

#### Simple Question (No activation needed)
```
"How to create a for loop in Python?"
→ QA Helper responds directly
```

#### Framework Migration (Automatic detection)
```
"Migrate my Selenium tests to Playwright"
→ QA Helper detects migration intent → Auto-loads migration agents
```

#### Code Review (Semantic detection)
```
"Analisar este código para segurança"
→ QA Helper detects review intent → Auto-loads code_review + security-reviewer
```

#### Generate Template (Framework specialist auto-loaded)
```
"Create Robot Framework template for API testing"
→ Complete project structure with 25+ keywords
```

### 4. Review at Checkpoints
For migration workflows, the system pauses after each phase for your review.

---

## Usage Examples

### Complete Migration (ANY framework)
```
"Convert my Cypress tests to Playwright"
"Migrate Karate project to Robot Framework"
"Transform Selenium Java tests to Robot"
```

### Custom Workflow
```
"Run only agents 1, 2, 6, and 8"
or
"Skip API Endpoint Mapper and Test Strategy"
```

### Single Agent
```
"Execute only the Migration agent"
```

### Interactive Mode
```
"Run with checkpoints so I can review each phase"
```

### Resume Interrupted Migration
```
"Resume the migration from where we stopped"
```

---

## Documentation

- **[docs/](./docs/)** - Full documentation folder
  - **ANALISE_COMPLETA_AGENTS.md** - Complete architecture analysis (500+ lines)
  - **EXEMPLOS_USO_CHAT.md** - Practical usage examples (Portuguese)
  - **ROADMAP_AGENTS_EXPANSION.md** - Future development (Q1-Q4 2025)
- **[.github/agents/](`.github/agents/)** - Individual agent documentation
  - ***/agent-prompt.md** - Individual agent instructions
  - ***/AGENTS.md** - Agent index and categorization
- **.github/copilot-instructions.md** - System configuration and detection rules
- **.vscode/settings.json** - VS Code configuration (agents loading)

---

## Generated Project Structure

```
Robot_Framework_Project/
├── config/                 # Environment configurations
├── data/                   # Test data
├── docs/                   # Generated documentation
├── libraries/              # Python helper libraries
├── resources/              # Reusable Robot Framework keywords
├── tests/                  # Robot Framework test files
├── requirements.txt        # Python dependencies
└── README.md              # Project documentation
```

---

## Execution Modes

### Full Workflow
Executes all agents in suggested order (orchestrated).

### Custom Workflow
Execute specific agents in any order you choose.

### Single Agent
Execute one agent independently.

### Interactive
Execute with checkpoints for review after each phase.

---

## Error Recovery

If something goes wrong:
1. System automatically saves state
2. You can resume from where you stopped
3. Options: RETRY, SKIP, MANUAL fix, or ABORT

---

## Example Conversation

```
User: "Migrate my Selenium project to Playwright. Files: #Folder examples/selenium-tests"

QA Helper: "Detectei migração Selenium → Playwright!
⚠️ CARREGANDO AGENTS DE MIGRAÇÃO AUTOMATICAMENTE:
#file .github/agents/migration/AGENTS.md"

Orchestrator: "Analyzing project...
Found: 35 test files, WebDriver setup, PageObjects

Default workflow (7 agents adapted for Selenium→Playwright):
1. Dependency Mapper (selenium packages → playwright)
2. Environment Configuration (WebDriver config → playwright.config)
3. API Endpoint Mapper (if REST calls present)
4. Keyword Library Designer (PageObjects → Playwright pages)
5. Test Strategy (test organization)
6. Migration Core (Selenium syntax → Playwright)
7. Assertion Converter (JUnit/TestNG → Playwright expect)

Execute complete workflow? (yes/no/customize)"

User: "yes"

Orchestrator: "Starting migration...
[Executes Phase 1]
CHECKPOINT 1: Foundation setup complete. Review files. Continue? (yes/no)"

User: "yes"

Orchestrator: [Continues with Phase 2...]
```

---

## Requirements

- **VSCode** with GitHub Copilot
- **Git** for version control
- **Python 3.11+** (for Robot Framework projects)
- **Java 17+** + **Maven** (for Karate Framework projects)
- **Node.js 18+** (for Playwright/Cypress projects)

---

## Configuration

All agents are configured in `.vscode/settings.json`:

```json
{
  "github.copilot.chat.codeGeneration.instructions": [
    // QA Helper (always active - semantic detection)
    // Migration agents (commented - auto-loaded by QA Helper)
    // Template agents (commented - auto-loaded by QA Helper)
  ],
  "github.copilot.chat.reviewSelection.instructions": [
    // Quality agents (commented - auto-loaded by QA Helper)
  ],
  "github.copilot.chat.testGeneration.instructions": [
    // Test management agents (commented - auto-loaded by QA Helper)
  ],
  "github.copilot.chat.documentation.instructions": [
    // Documentation agents (commented - auto-loaded by QA Helper)
  ]
}
```

**Most agents auto-load** via QA Helper's semantic detection. Manual activation only needed for edge cases.

---

## Status

**Current Implementation**: 21/38 agents (55%)

| Category | Status |
|----------|--------|
| System | ✅ 1/1 (Universal Helper with semantic detection) |
| Migration | ✅ 7/7 (100% - ANY→ANY framework support) |
| Quality | ✅ 4/4 (100%) |
| Test Management | ✅ 3/3 (100% - Scaffold expanded to 200+ lines) |
| Documentation | ✅ 2/2 (100%) |
| Templates | ✅ 2/2 (100% - Robot + Karate) |
| DevOps & CI/CD | ✅ 3/3 (100% - GitHub Actions, Templates, Setup) |
| Cypress Template | ❌ 0/1 (planned) |
| Playwright Template | ❌ 0/1 (planned) |
| Test Generation | ❌ 0/4 (planned) |
| Data Management | ❌ 0/4 (planned) |
| Container & IaC | ❌ 0/4 (planned) |
| Monitoring & Logging | ❌ 0/4 (planned) |
| Release Automation | ❌ 0/1 (planned) |

---

## Repository

**GitHub**: https://github.com/fabiopolli/AI_PLATFORM_WITH_TOOLS_AND_RULES_FOR_QA

---

## Contributing

Contributions are welcome! Please:
1. Read `.github/docs/ANALISE_COMPLETA_AGENTS.md` for architecture details
2. Check `.github/docs/ROADMAP_AGENTS_EXPANSION.md` for planned features
3. Follow the agent structure pattern in `.github/agents/`

---

---

## 📋 License

This project is licensed under the **MIT License** - see LICENSE file for details.

**In short:**
- ✅ Use commercially
- ✅ Modify the code
- ✅ Distribute it
- ✅ Use privately
- ⚠️ Liability and warranty disclaimers apply

---

## 🤝 Contributing

**We want your feedback!** This is a community project. 

### How to Contribute
1. **Report issues** - Found a bug? Missing feature? Open an issue.
2. **Suggest improvements** - Have ideas? Create a discussion.
3. **Add agents** - Want to build a new agent? Follow the pattern in `.github/agents/`
4. **Documentation** - Improve docs or add examples
5. **Feedback** - Tell us what you'd change. Disagree with us. Challenge assumptions.

### Guidelines
- Read `.github/docs/ANALISE_COMPLETA_AGENTS.md` for architecture
- Check `.github/docs/ROADMAP_AGENTS_EXPANSION.md` for planned work
- Follow existing agent structure patterns in `.github/agents/`
- Use semantic versioning (MAJOR.MINOR.PATCH)

**Most importantly**: This is meant to evolve based on real-world use. If something doesn't work for your workflow, tell us.

---

## 🛡️ Security

If you discover a security vulnerability:
- **DO NOT** open a public GitHub issue (exposes the vulnerability)
- **Email privately** to fabiopolli@outlook.com
- Include: description, steps to reproduce, potential impact

We take security seriously and will respond within 48 hours.

---

## 🤝 Contributing

Quer adicionar novos agents? Expandir CI/CD, Frameworks, Development Features ou MCPs?

**[📖 Leia CONTRIBUTING.md](CONTRIBUTING.md)** para:
- ✅ Template de novo agent
- ✅ Como registrar no Universal Helper
- ✅ Padrões de documentação
- ✅ Áreas prioritárias para v1.5+ (Cypress, Playwright, Jenkins, Azure, MCPs)
- ✅ Fluxo de PR

**Areas Prioritárias:**
- 🔴 **Frameworks**: Cypress Template, Playwright Template
- 🔴 **CI/CD**: Jenkins, GitLab CI, Azure DevOps, AWS CodePipeline, GCP
- 🔴 **Dev Features**: Refactoring, Performance, Security, Dependencies, Documentation
- 🟢 **MCPs**: Phase 1 CI/CD integrations (Q2 2026)

---

## 📝 Changelog

### v1.0 - Initial Public Release (January 2026)
- ✅ **Multi-agent system**: 23 specialized agents (7 migration + 16 specialized)
- ✅ **Semantic intent detection**: Universal Helper with 100+ keywords
- ✅ **Auto-activation**: All agents auto-load on relevant keywords
- ✅ **ANY→ANY framework migration**: Karate↔Robot, Selenium→Playwright, Cypress→Playwright, Jest→Vitest, Postman→Robot/Karate, etc.
- ✅ **Token optimization**: 90%+ savings (2 active agents default)
- ✅ **Framework templates**: Robot + Karate specialists
- ✅ **Quality assurance**: Code review, security, data validation, performance
- ✅ **Test management**: Strategy, analysis, scaffold generator
- ✅ **DevOps**: CI/CD Validator (GitHub Actions), Issue Templates, Repo Setup
- ✅ **Documentation**: Complete system + roadmap + examples
- ✅ **AGENTS.md system**: Auto-loading with zero configuration
- ✅ **MCP Structure**: Ready for Phase 1 (Q2 2026)
- ✅ **Project Organization**: Clean structure (docs/ + .mcp/)
- ✅ **Contributing Guide**: Ready for community contributions

### v1.5 - PLANNED (Q2 2026)
- 🔜 **Frameworks**: Cypress Template, Playwright Template
- 🔜 **CI/CD Expansion**: Jenkins, GitLab CI, Azure DevOps
- 🔜 **Dev Features**: Refactoring, Performance, Security, Dependencies, Documentation agents
- 🔜 **MCPs Phase 1**: CI/CD platform integrations

### v2.0 - PLANNED (Q3 2026)
- 🔜 **Cloud Agents**: AWS, GCP, Azure integrations
- 🔜 **Advanced MCPs**: Test Frameworks, Collaboration
- 🔜 **Test Data Management**: Faker, Database agents

### v3.0 - PLANNED (Q4 2026)
- 🔜 **Ecosystem**: 50+ agents total
- 🔜 **Mobile Testing**: iOS/Android agents
- 🔜 **Visual Regression**: Percy, Applitools integrations

---


