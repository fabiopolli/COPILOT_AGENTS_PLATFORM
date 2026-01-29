# Roadmap: Copilot Agents Platform - Expansão dos Agents

## 🎯 Visão Geral

Transformar o **Workflow-Agents** de um sistema de migração Karate→Robot para uma **plataforma completa multi-propósito** com agents especializados para QA, desenvolvimento (Python, .NET, JS/TS, Java, Go), DevOps e segurança.

## ✅ Status Atual (29/01/2026) - v2.1

### Implementado (v1.0 Release)
- ✅ **39 Agents Integrados** (QA + Dev + Shared, reorganizados em 6 categorias)
- ✅ **Reorganização Profissional** (qa/, dev/, shared/, infrastructure/, security/, system/)
- ✅ **Specification Agent** (NEW! - PRD + ADD + TEST_SPEC + IMPLEMENTATION_PLAN)
- ✅ **Universal Helper Reescrito** (roteamento semântico para todas 6 categorias)
- ✅ **Sistema de Auto-Ativação Semântica** (200+ keywords, multi-linguagem)
- ✅ **11 QA Agents** (Migração, Estratégia, Frameworks, Scaffold)
- ✅ **16+ Dev Agents** (Python 4, Go 3, .NET 3, JS/TS 3, Java 2, Generic 2)
- ✅ **9 Shared Agents** (Review, Security, Data, Performance, Docs, DevOps)
- ✅ **2 System Agents** (Universal Helper, Specification)
- ✅ **Estrutura folder criada** (21 diretórios para nova organização)

### Em Planejamento (v1.5 - Q2 2026)
- 🔜 **Mover 23 agents** para nova estrutura (qa/, dev/, shared/)
- 🔜 **Dev Agents** (16+ planejados: Python 4, Go 3, .NET 3, JS/TS 3, Java 2, Generic 2)
- 🔜 **CI/CD Expansion** (Jenkins, GitLab CI, Azure DevOps, AWS CodePipeline, GCP Cloud Build)
- 🔜 **Framework Templates Expansion** (Cypress, Playwright)
- 🔜 **Test Generation Agents** (API, UI, Performance, Smoke)
- 🔜 **Test Management** (User Story Validator, BDD Generator, Zephyr)
- 🔜 **Test Data Agents** (Generator, Validator, DB Seeder)

### Em Descoberta (v2.0 - H2 2026)
- 🔍 **Infrastructure Agents** (Terraform, Bicep, Kubernetes, Azure, AWS - awaiting approval)
- 🔍 **Security Agents** (Secrets, Compliance, Scanning - awaiting approval)
- 🔍 **Advanced Cloud Integration** (Azure App Service, AWS Lambda, GCP Cloud Run)
- 🔍 **Enterprise Features** (audit logs, compliance, security scanning)

---

## 📊 Progresso Geral (v1.0 - 29/01/2026)

| Categoria | Planejado | Implementado | % Completo | Status |
|-----------|-----------|--------------|------------|--------|
| Migration | 7 | 7 | 100% | ✅ |
| Quality Assurance | 4 | 4 | 100% | ✅ |
| Test Management | 2 | 2 | 100% | ✅ |
| Documentation | 2 | 2 | 100% | ✅ |
| Framework Templates | 4 | 2 | 50% | 🔄 |
| DevOps & CI/CD | 6+ | 3 | 50% | 🔄 |
| Test Generation | 5 | 0 | 0% | ⏳ |
| Test Data Management | 4 | 0 | 0% | ⏳ |
| Development Features | 5+ | 0 | 0% | 🔍 |
| MCP Ecosystem | 6+ | 0 (structure ready) | 0% | 🔍 |
| **TOTAL** | **50+** | **23** | **46%** | 🚀 |

---

## 🏗️ Arquitetura Proposta (v2.1)

### Estrutura de Diretórios

```
.github/agents/
├── system/                       ← SEMPRE ATIVOS (2)
│   ├── universal-helper/         ← Detecta intenção + roteia
│   └── specification/            ← PRD/Architecture generation
│
├── qa/                           ← QA-Only (11)
│   ├── migration/
│   │   └── karate-to-robot/
│   ├── test-strategy/
│   ├── frameworks/
│   └── scaffold/
│
├── dev/                          ← Dev-Only (16+)
│   ├── python/
│   ├── go/
│   ├── dotnet/
│   ├── javascript-typescript/
│   ├── java/
│   └── generic/
│
├── shared/                       ← QA + Dev (9)
│   ├── code-review/
│   ├── documentation/
│   ├── reporting/
│   └── devops/
│
├── infrastructure/               ← Planejado (6)
│   ├── infrastructure-as-code/
│   ├── kubernetes/
│   └── cloud-deployment/
│
└── security/                     ← Planejado (3)
    ├── secrets-management/
    ├── compliance/
    └── vulnerability-scanning/
```

---

## 📦 Categorias de Agents

### 1. **CI/CD Pipeline Agents**

#### 1.1 Jenkins Agent
**Arquivo**: `.github/agents/ci-cd/jenkins/agent-prompt.md`

**Responsabilidades**:
- Gerar `Jenkinsfile` para projetos de teste
- Configurar stages (build, test, report, deploy)
- Integrar com Allure Reports, JUnit, TestNG
- Configurar triggers (schedule, webhook, manual)
- Parametrizar builds (environment, branch, tags)

**Input**: Estrutura do projeto de teste (Karate/Robot/Cypress)
**Output**: `Jenkinsfile`, scripts de configuração

**Exemplo de Uso**:
```
"Crie um Jenkinsfile para meu projeto Robot Framework
- Stages: Install, Lint, Test, Report
- Integrar com Allure
- Rodar testes diariamente às 2am
- Parametrizar ambiente (staging/prod)"
```

---

#### 1.2 GitHub Actions Agent
**Arquivo**: `.github/agents/ci-cd/github-actions/agent-prompt.md`

**Responsabilidades**:
- Gerar workflows `.github/workflows/*.yml`
- Configurar jobs paralelos (matrix strategy)
- Integrar com GitHub Pages para reports
- Configurar secrets e environments
- Setup de cache para dependências

**Input**: Framework de teste, linguagem, requisitos
**Output**: `.github/workflows/test.yml`, workflows de deploy

**Exemplo de Uso**:
```
"Crie workflow GitHub Actions para Cypress
- Matrix: Node 18, 20
- Browsers: Chrome, Firefox, Edge
- Upload screenshots on failure
- Deploy reports to GitHub Pages"
```

---

#### 1.3 GitLab CI Agent
**Arquivo**: `.github/agents/ci-cd/gitlab-ci/agent-prompt.md`

**Responsabilidades**:
- Gerar `.gitlab-ci.yml`
- Configurar stages e jobs
- Integrar com GitLab Container Registry
- Configurar artifacts e cache
- Setup de environments (staging, prod)

**Input**: Tipo de projeto, requisitos de pipeline
**Output**: `.gitlab-ci.yml`, scripts auxiliares

**Exemplo de Uso**:
```
"Crie pipeline GitLab CI para Karate + Robot
- Stage 1: Karate API tests
- Stage 2: Robot UI tests
- Stage 3: Merge reports
- Artifacts: Allure reports (30 days)"
```

---

### 2. **Test Generation Agents**

#### 2.1 API Test Generator
**Arquivo**: `.github/agents/test-generation/api-tests/agent-prompt.md`

**Responsabilidades**:
- Gerar testes de API a partir de Swagger/OpenAPI
- Criar cenários CRUD completos
- Gerar assertions de schema validation
- Criar data-driven tests
- Suportar múltiplos frameworks (Karate, RestAssured, Postman)

**Input**: Swagger/OpenAPI spec, framework escolhido
**Output**: Test files completos com assertions

**Exemplo de Uso**:
```
"Gere testes Karate a partir do Swagger
- Endpoint: /api/users
- Cenários: GET, POST, PUT, DELETE
- Validar schema JSON
- Testes de erro (400, 401, 404)"
```

---

#### 2.2 UI Test Generator
**Arquivo**: `.github/agents/test-generation/ui-tests/agent-prompt.md`

**Responsabilidades**:
- Gerar Page Objects a partir de HTML
- Criar testes de fluxos principais
- Gerar seletores robustos (data-testid, aria-label)
- Criar assertions visuais
- Suportar frameworks (Selenium, Playwright, Cypress)

**Input**: URLs, fluxos a testar, framework
**Output**: Page Objects + Test Suites

---

#### 2.3 Performance Test Generator
**Arquivo**: `.github/agents/test-generation/performance-tests/agent-prompt.md`

**Responsabilidades**:
- Gerar scripts JMeter a partir de APIs
- Criar cenários Gatling (Scala)
- Configurar load profiles (ramp-up, steady, spike)
- Definir SLAs e thresholds
- Integrar com InfluxDB/Grafana

**Input**: APIs a testar, carga esperada, SLAs
**Output**: Scripts JMeter/Gatling, dashboards

---

#### 2.4 Smoke Test Generator
**Arquivo**: `.github/agents/test-generation/smoke-tests/agent-prompt.md`

**Responsabilidades**:
- Identificar cenários críticos (health checks)
- Gerar testes rápidos (<5min)
- Validar endpoints principais
- Verificar autenticação
- Criar suite de deployment validation

**Input**: Aplicação, endpoints críticos
**Output**: Suite de smoke tests

---

### 3. **Test Management Agents**

#### 3.1 User Story Validator
**Arquivo**: `.github/agents/test-management/user-story-validator/agent-prompt.md`

**Responsabilidades**:
- Validar formato de User Stories (INVEST)
- Verificar critérios de aceitação
- Sugerir melhorias
- Gerar checklist de testabilidade
- Identificar casos de teste faltantes

**Input**: User Story (texto ou Jira ID)
**Output**: Relatório de validação, sugestões

**Exemplo de Uso**:
```
"Valide esta User Story:
Como usuário, quero fazer login para acessar o sistema.

Critérios:
- Login com email/senha
- Redirecionamento ao dashboard"
```

**Output Esperado**:
```
✅ User Story válida
⚠️ Sugestões:
- Adicionar critério: 'Mensagem de erro para credenciais inválidas'
- Adicionar critério: 'Lembrar senha (checkbox)'
- Falta caso de teste: 'Login com conta bloqueada'
```

---

#### 3.2 BDD Scenario Generator
**Arquivo**: `.github/agents/test-management/bdd-scenario-generator/agent-prompt.md`

**Responsabilidades**:
- Converter User Stories em cenários Gherkin
- Gerar cenários positivos e negativos
- Criar Scenario Outlines (data-driven)
- Validar sintaxe Gherkin
- Compatibilizar com Zephyr/Jira

**Input**: User Story, AC (Acceptance Criteria)
**Output**: Feature file completo (Gherkin)

**Exemplo de Uso**:
```
"Converta em Gherkin:
User Story: Login no sistema
AC:
- Login válido redireciona ao dashboard
- Login inválido exibe erro"
```

**Output Esperado**:
```gherkin
Feature: Login no Sistema

  @smoke @auth
  Scenario: Login com credenciais válidas
    Given o usuário está na página de login
    When o usuário preenche email "user@test.com"
    And o usuário preenche senha "Pass@123"
    And o usuário clica em "Entrar"
    Then o usuário é redirecionado ao dashboard
    And o usuário vê a mensagem "Bem-vindo"

  @negative @auth
  Scenario Outline: Login com credenciais inválidas
    Given o usuário está na página de login
    When o usuário preenche email "<email>"
    And o usuário preenche senha "<senha>"
    And o usuário clica em "Entrar"
    Then o usuário vê a mensagem de erro "<erro>"
    
    Examples:
      | email          | senha    | erro                        |
      | invalid@test   | Pass@123 | Credenciais inválidas       |
      | user@test.com  | wrong    | Credenciais inválidas       |
      | @test.com      | Pass@123 | Email em formato inválido   |
```

---

#### 3.3 Zephyr Integration Agent
**Arquivo**: `.github/agents/test-management/zephyr-integration/agent-prompt.md`

**Responsabilidades**:
- Sincronizar cenários Gherkin com Zephyr
- Criar test cases no Jira
- Atualizar status de execução
- Gerar traceability matrix
- Exportar relatórios de cobertura

**Input**: Feature files, credenciais Jira/Zephyr
**Output**: Test cases criados, relatórios

---

### 4. **Test Data Agents**

#### 4.1 Data Generator Agent
**Arquivo**: `.github/agents/test-data/data-generator/agent-prompt.md`

**Responsabilidades**:
- Gerar dados de teste realistas
- Suportar múltiplos tipos (CPF, CNPJ, email, phone, address)
- Gerar dados em massa (CSV, JSON, SQL)
- Respeitar regras de negócio
- Integrar com Faker.js/JavaFaker

**Input**: Schema de dados, quantidade, formato
**Output**: Arquivo de dados (CSV/JSON/SQL)

**Exemplo de Uso**:
```
"Gere 100 usuários de teste
- Campos: nome, email, CPF, telefone, endereço
- Formato: JSON
- CPF válido (com dígito verificador)
- Email único"
```

---

#### 4.2 JSON Validator Agent
**Arquivo**: `.github/agents/test-data/json-validator/agent-prompt.md`

**Responsabilidades**:
- Validar JSON contra JSON Schema
- Gerar JSON Schema a partir de exemplos
- Identificar campos obrigatórios faltantes
- Validar tipos de dados
- Sugerir correções

**Input**: JSON payload, JSON Schema (opcional)
**Output**: Relatório de validação, schema gerado

---

#### 4.3 Database Seeder Agent
**Arquivo**: `.github/agents/test-data/database-seeder/agent-prompt.md`

**Responsabilidades**:
- Gerar scripts SQL de seed
- Criar fixtures para bancos de teste
- Resetar estado do banco entre testes
- Suportar múltiplos DBs (MySQL, PostgreSQL, MongoDB)
- Gerar dados relacionais consistentes

**Input**: Schema do banco, quantidade de dados
**Output**: Scripts SQL/NoSQL de seed

---

### 5. **Framework Template Agents**

#### 5.1 Karate Template Agent
**Arquivo**: `.github/agents/framework-templates/karate-java/agent-prompt.md`

**Responsabilidades**:
- Gerar estrutura completa de projeto Karate
- Configurar pom.xml/build.gradle
- Criar karate-config.js
- Setup de ambientes (dev, staging, prod)
- Configurar Allure/Cucumber reports
- Adicionar helpers customizados

**Input**: Nome do projeto, APIs a testar
**Output**: Projeto Karate completo

---

#### 5.2 Robot Framework Template Agent
**Arquivo**: `.github/agents/framework-templates/robot-python/agent-prompt.md`

**Responsabilidades**:
- Gerar estrutura Robot Framework
- Criar requirements.txt
- Setup de keywords customizadas
- Configurar variáveis por ambiente
- Integrar com Selenium/Playwright
- Configurar Allure reports

---

#### 5.3 Cypress Template Agent
**Arquivo**: `.github/agents/framework-templates/cypress-javascript/agent-prompt.md`

**Responsabilidades**:
- Gerar projeto Cypress completo
- Configurar cypress.config.js
- Setup de plugins (Allure, Mochawesome)
- Criar custom commands
- Configurar CI/CD (GitHub Actions)

---

#### 5.4 Playwright Template Agent
**Arquivo**: `.github/agents/framework-templates/playwright-typescript/agent-prompt.md`

**Responsabilidades**:
- Gerar projeto Playwright + TypeScript
- Configurar playwright.config.ts
- Setup de Page Object Model
- Configurar testes paralelos
- Integrar com Allure

---

## 🎯 Arquivo Principal de Instruções

### Arquivo: `.github/copilot-instructions-catalog.md`

```markdown
# Catálogo de Agents - Workflow Agents System

## Como Usar Este Catálogo

Este arquivo serve como **índice de referência** para você escolher quais agents incluir no contexto do chat do VS Code Copilot.

### Workflow de Uso

1. **Identifique sua necessidade** (migração, CI/CD, geração de testes, etc.)
2. **Escolha os agents relevantes** na seção correspondente abaixo
3. **Adicione ao contexto do chat** usando `#file` ou configure no `.vscode/settings.json`
4. **Interaja com os agents** via comandos de chat

---

## 📂 Categorias de Agents

### 🔄 Migração (Migration Agents)

**Quando usar**: Você precisa migrar testes entre frameworks

| Agent | Arquivo | Uso |
|-------|---------|-----|
| Karate → Robot | `.github/agents/migration/karate-to-robot/orchestrator/agent-prompt.md` | `#file .github/agents/migration/karate-to-robot/orchestrator/agent-prompt.md` |
| Selenium → Playwright | `.github/agents/migration/selenium-to-playwright/agent-prompt.md` | `#file .github/agents/migration/selenium-to-playwright/agent-prompt.md` |
| Postman → Karate | `.github/agents/migration/postman-to-karate/agent-prompt.md` | `#file .github/agents/migration/postman-to-karate/agent-prompt.md` |

**Exemplo de comando**:
```
#file .github/agents/migration/karate-to-robot/orchestrator/agent-prompt.md
#folder examples/meu-projeto-karate

"Migre este projeto Karate para Robot Framework"
```

---

### 🔧 CI/CD (Pipeline Agents)

**Quando usar**: Você precisa configurar pipelines de CI/CD

| Agent | Arquivo | Uso |
|-------|---------|-----|
| Jenkins | `.github/agents/ci-cd/jenkins/agent-prompt.md` | `#file .github/agents/ci-cd/jenkins/agent-prompt.md` |
| GitHub Actions | `.github/agents/ci-cd/github-actions/agent-prompt.md` | `#file .github/agents/ci-cd/github-actions/agent-prompt.md` |
| GitLab CI | `.github/agents/ci-cd/gitlab-ci/agent-prompt.md` | `#file .github/agents/ci-cd/gitlab-ci/agent-prompt.md` |
| Azure DevOps | `.github/agents/ci-cd/azure-devops/agent-prompt.md` | `#file .github/agents/ci-cd/azure-devops/agent-prompt.md` |

**Exemplo de comando**:
```
#file .github/agents/ci-cd/jenkins/agent-prompt.md
#folder meu-projeto-teste

"Crie um Jenkinsfile para este projeto Robot Framework
- Stages: Install, Test, Report
- Integrar Allure
- Rodar daily às 2am"
```

---

### 🧪 Geração de Testes (Test Generation Agents)

**Quando usar**: Você precisa gerar testes automaticamente

| Agent | Arquivo | Uso |
|-------|---------|-----|
| API Tests | `.github/agents/test-generation/api-tests/agent-prompt.md` | `#file .github/agents/test-generation/api-tests/agent-prompt.md` |
| UI Tests | `.github/agents/test-generation/ui-tests/agent-prompt.md` | `#file .github/agents/test-generation/ui-tests/agent-prompt.md` |
| Performance Tests | `.github/agents/test-generation/performance-tests/agent-prompt.md` | `#file .github/agents/test-generation/performance-tests/agent-prompt.md` |
| Smoke Tests | `.github/agents/test-generation/smoke-tests/agent-prompt.md` | `#file .github/agents/test-generation/smoke-tests/agent-prompt.md` |

**Exemplo de comando**:
```
#file .github/agents/test-generation/api-tests/agent-prompt.md
#file swagger.json

"Gere testes Karate a partir deste Swagger
- Todos os endpoints
- Cenários positivos e negativos
- Validar schemas"
```

---

### 📋 Gestão de Testes (Test Management Agents)

**Quando usar**: Você precisa trabalhar com User Stories, BDD, Zephyr

| Agent | Arquivo | Uso |
|-------|---------|-----|
| User Story Validator | `.github/agents/test-management/user-story-validator/agent-prompt.md` | `#file .github/agents/test-management/user-story-validator/agent-prompt.md` |
| BDD Scenario Generator | `.github/agents/test-management/bdd-scenario-generator/agent-prompt.md` | `#file .github/agents/test-management/bdd-scenario-generator/agent-prompt.md` |
| Zephyr Integration | `.github/agents/test-management/zephyr-integration/agent-prompt.md` | `#file .github/agents/test-management/zephyr-integration/agent-prompt.md` |

**Exemplo de comando**:
```
#file .github/agents/test-management/bdd-scenario-generator/agent-prompt.md

"Converta esta User Story em Gherkin:
Como usuário, quero fazer login para acessar o sistema

Critérios de Aceitação:
- Login válido redireciona ao dashboard
- Login inválido exibe mensagem de erro"
```

---

### 📊 Dados de Teste (Test Data Agents)

**Quando usar**: Você precisa gerar ou validar dados de teste

| Agent | Arquivo | Uso |
|-------|---------|-----|
| Data Generator | `.github/agents/test-data/data-generator/agent-prompt.md` | `#file .github/agents/test-data/data-generator/agent-prompt.md` |
| JSON Validator | `.github/agents/test-data/json-validator/agent-prompt.md` | `#file .github/agents/test-data/json-validator/agent-prompt.md` |
| Database Seeder | `.github/agents/test-data/database-seeder/agent-prompt.md` | `#file .github/agents/test-data/database-seeder/agent-prompt.md` |

**Exemplo de comando**:
```
#file .github/agents/test-data/data-generator/agent-prompt.md

"Gere 100 usuários de teste
- Campos: nome, email, CPF, telefone
- Formato: JSON
- CPF válido"
```

---

### 🏗️ Templates de Framework (Framework Template Agents)

**Quando usar**: Você quer iniciar um novo projeto de testes do zero

| Agent | Arquivo | Uso |
|-------|---------|-----|
| Karate Java | `.github/agents/framework-templates/karate-java/agent-prompt.md` | `#file .github/agents/framework-templates/karate-java/agent-prompt.md` |
| Robot Python | `.github/agents/framework-templates/robot-python/agent-prompt.md` | `#file .github/agents/framework-templates/robot-python/agent-prompt.md` |
| Cypress JS | `.github/agents/framework-templates/cypress-javascript/agent-prompt.md` | `#file .github/agents/framework-templates/cypress-javascript/agent-prompt.md` |
| Playwright TS | `.github/agents/framework-templates/playwright-typescript/agent-prompt.md` | `#file .github/agents/framework-templates/playwright-typescript/agent-prompt.md` |

**Exemplo de comando**:
```
#file .github/agents/framework-templates/karate-java/agent-prompt.md

"Crie projeto Karate completo
- Nome: api-tests
- APIs: User Service, Auth Service
- Ambientes: dev, staging, prod
- Reports: Allure"
```

---

## 🎯 Combinando Múltiplos Agents

Você pode usar múltiplos agents ao mesmo tempo para tarefas complexas:

### Exemplo 1: Novo Projeto + CI/CD
```
#file .github/agents/framework-templates/robot-python/agent-prompt.md
#file .github/agents/ci-cd/github-actions/agent-prompt.md

"Crie projeto Robot Framework com pipeline GitHub Actions
- Framework: Robot + Selenium
- CI/CD: GitHub Actions
- Reports: Allure"
```

### Exemplo 2: User Story → BDD → Testes
```
#file .github/agents/test-management/user-story-validator/agent-prompt.md
#file .github/agents/test-management/bdd-scenario-generator/agent-prompt.md
#file .github/agents/test-generation/api-tests/agent-prompt.md

"1. Valide esta User Story
2. Converta para Gherkin
3. Gere testes Karate"
```

---

## ⚙️ Configuração Automática (Recomendado)

Para evitar adicionar arquivos manualmente, configure no `.vscode/settings.json`:

```json
{
  "github.copilot.chat.codeGeneration.instructions": [
    { "file": ".github/copilot-instructions.md" },
    { "file": ".github/copilot-instructions-catalog.md" }
  ]
}
```

Depois, basta referenciar os agents diretamente nos comandos!

---

## 📚 Documentação Adicional

- **Arquitetura**: `ARCHITECTURE.md`
- **Visão Geral**: `AGENTS_OVERVIEW.md`
- **Exemplos Práticos**: `EXEMPLOS_USO_CHAT.md`
- **Roadmap**: `ROADMAP_AGENTS_EXPANSION.md`
```

---

## 🚀 Fases de Implementação

### Fase 1 (Imediato) - CI/CD Agents
- [ ] Jenkins Agent
- [ ] GitHub Actions Agent
- [ ] GitLab CI Agent

**Prioridade**: Alta (necessidade comum)

---

### Fase 2 (Curto Prazo) - Test Generation
- [ ] API Test Generator (Karate/RestAssured)
- [ ] Smoke Test Generator
- [ ] BDD Scenario Generator

**Prioridade**: Alta (alto valor agregado)

---

### Fase 3 (Médio Prazo) - Test Management
- [ ] User Story Validator (usar agent do Gemini como base)
- [ ] Zephyr Integration
- [ ] Data Generator

**Prioridade**: Média (valor para organização)

---

### Fase 4 (Longo Prazo) - Advanced
- [ ] Performance Test Generator
- [ ] UI Test Generator
- [ ] Database Seeder
- [ ] Todas as Template Agents

**Prioridade**: Baixa (pode ser feito gradualmente)

---

## 📝 Template de Agent Prompt

Use este template ao criar novos agents:

```markdown
# [Nome do Agent] Agent

## Role
[Descrição do papel do agent]

## Responsibilities
- [Responsabilidade 1]
- [Responsabilidade 2]
- [...]

## Input
- [Input 1]: Descrição
- [Input 2]: Descrição

## Output
- [Output 1]: Descrição
- [Output 2]: Descrição

## Actions
1. [Passo 1]
2. [Passo 2]
3. [...]

## Validation
- [ ] [Critério de validação 1]
- [ ] [Critério de validação 2]

## Examples

### Example 1: [Cenário]
**Input**:
```
[Exemplo de input]
```

**Expected Output**:
```
[Exemplo de output]
```

### Example 2: [Outro cenário]
...

## Error Handling
- **Error 1**: [Solução]
- **Error 2**: [Solução]

## Dependencies
- [Dependência 1]
- [Dependência 2]

## Related Agents
- [Agent relacionado 1]: [Como se relaciona]
- [Agent relacionado 2]: [Como se relaciona]
```

---

## � Agents para Development (NEW - v1.5)

### Problema
Atualmente o sistema é focado em QA. Precisamos expandir para **Development Features**.

### Solução: Development Agent Pack

#### Dev Agent 1: Code Refactoring
**Arquivo**: `.github/agents/development/code-refactoring/agent-prompt.md`

**Responsabilidades**:
- Identificar código duplicado
- Sugerir refactorings (Extract Method, Extract Class)
- Melhorar readability
- Aplicar design patterns
- Gerar pull requests com mudanças

**Exemplo de Uso**:
```
"Refatore este código Python
- Remove duplicação
- Melhore names de variáveis  
- Aplique design patterns"
```

---

#### Dev Agent 2: Performance Optimization
**Arquivo**: `.github/agents/development/performance-optimization/agent-prompt.md`

**Responsabilidades**:
- Analisar gargalos de performance
- Sugerir otimizações (cache, async, lazy loading)
- Gerar benchmarks
- Comparar antes/depois

---

#### Dev Agent 3: Security Hardening
**Arquivo**: `.github/agents/development/security-hardening/agent-prompt.md`

**Responsabilidades**:
- Identificar vulnerabilidades
- Sugerir patches
- Validar certificados/secrets
- Gerar security reports

---

#### Dev Agent 4: Dependency Management
**Arquivo**: `.github/agents/development/dependency-management/agent-prompt.md`

**Responsabilidades**:
- Analisar dependências desatualizadas
- Sugerir atualizações seguras
- Detectar conflitos de versão
- Remover dependências não usadas

---

#### Dev Agent 5: Documentation Generator
**Arquivo**: `.github/agents/development/documentation-generator/agent-prompt.md`

**Responsabilidades**:
- Gerar API docs (OpenAPI/Swagger)
- Gerar README automaticamente
- Criar guias de setup
- Documentar código com docstrings

---

### Fases de Implementação (Dev Agents)

| Fase | Agents | Timeline |
|------|--------|----------|
| **Phase 1** | Code Refactoring, Security Hardening | Q2 2026 |
| **Phase 2** | Performance Optimization, Dependency Management | Q3 2026 |
| **Phase 3** | Documentation, Advanced patterns | Q4 2026 |

---

## 🔗 MCPs (Model Context Protocol) - NEW

### Estrutura de MCPs

Localização: `.mcp/`

```
.mcp/
├── README.md ......................... Visão geral dos MCPs
├── ci-cd-platforms/
│   ├── jenkins.mcp.json
│   ├── gitlab-ci.mcp.json
│   ├── azure-devops.mcp.json
│   ├── github-actions.mcp.json
│   ├── gcp-cloud-build.mcp.json
│   └── aws-codepipeline.mcp.json
├── test-frameworks/
│   ├── robot-framework.mcp.json
│   ├── karate.mcp.json
│   ├── playwright.mcp.json
│   ├── cypress.mcp.json
│   ├── selenium.mcp.json
│   └── pytest.mcp.json
├── cloud-platforms/
│   ├── azure.mcp.json
│   ├── aws.mcp.json
│   ├── gcp.mcp.json
│   └── kubernetes.mcp.json
├── test-data/
│   ├── faker.mcp.json
│   ├── databases.mcp.json
│   └── storage-services.mcp.json
└── collaboration/
    ├── github.mcp.json
    ├── gitlab.mcp.json
    ├── slack.mcp.json
    └── jira.mcp.json
```

### MCPs Planejados

| MCP Category | MCPs | Timeline | Priority |
|--------------|------|----------|----------|
| **CI/CD Platforms** | GitHub Actions, GitLab CI, Jenkins, Azure DevOps, GCP, AWS | Q2 2026 | 🔴 High |
| **Test Frameworks** | Robot, Karate, Playwright, Cypress, Selenium, pytest | Q2-Q3 2026 | 🔴 High |
| **Cloud Platforms** | Azure, AWS, GCP, Kubernetes | Q3 2026 | 🟡 Medium |
| **Test Data** | Faker, Databases, Storage | Q3 2026 | 🟡 Medium |
| **Collaboration** | GitHub, GitLab, Slack, Jira | Q4 2026 | 🟢 Low |

### Benefícios dos MCPs

1. **Extensibilidade**: Novos serviços sem modificar agents
2. **Reutilização**: MCPs usáveis por múltiplos agents
3. **Padronização**: Interface consistente
4. **Segurança**: Controle centralizado de credenciais
5. **Performance**: Cache e otimizações

### Como os MCPs Funcionam com Agents

```
Agent (ex: CI/CD Agent)
    ↓
MCP Interface (ex: Jenkins.mcp.json)
    ↓
Serviço Externo (ex: Jenkins Server)
```

**Exemplo**:
- User solicita: "Crie Jenkinsfile"
- CI/CD Agent processa
- MCP Jenkins valida sintaxe com Jenkins Server
- Retorna feedback + sugestões

---

## 🎯 Timeline Consolidado

### v1.0 (✅ DONE - 29/01/2026)
- ✅ 23 Agents Core
- ✅ Auto-Ativation System
- ✅ MCP Structure Ready
- ✅ Documentation

### v1.5 (🔄 Q2 2026)
- 🔄 Framework Templates: Cypress, Playwright
- 🔄 CI/CD Expansion: Jenkins, GitLab, Azure
- 🔄 Development Agents: Refactoring, Security
- 🔄 Test Generation: API, BDD
- 🔄 MCPs Phase 1: CI/CD Platforms

### v2.0 (⏳ Q3 2026)
- ⏳ Test Management: User Story, Zephyr
- ⏳ Test Data: Generator, Validator, Seeder
- ⏳ Performance: Load testing, profiling
- ⏳ Cloud: Azure, AWS, GCP integration
- ⏳ MCPs Phase 2: Cloud Platforms

### v3.0 (🔍 Q4 2026)
- 🔍 Advanced Development Agents
- 🔍 Mobile Testing: Appium, Espresso
- 🔍 Visual Regression: Percy, Applitools
- 🔍 API Mocking: WireMock, MockServer
- 🔍 MCPs Phase 3: Enterprise + Community

---

## 📋 Como Contribuir com Novos Agents

### Steps:
1. **Escolha uma categoria** (Development, Test Generation, etc.)
2. **Siga o template** em `docs/ROADMAP_AGENTS_EXPANSION.md`
3. **Implemente o agent** em `.github/agents/[categoria]/`
4. **Adicione ao universal-helper** para auto-ativação
5. **Atualize este roadmap** com status
6. **Submeta PR** para review

### Template de Agent

```markdown
# [Agent Name]

## Role
[Descrição do papel]

## Responsibilities
- [Responsabilidade 1]
- [Responsabilidade 2]

## Input/Output
[Dados que recebe e produz]

## Examples
[Exemplos de uso]

## Validation Checklist
- [ ] Teste com múltiplos casos de uso
- [ ] Valide output com user
- [ ] Documente limitações
- [ ] Integre ao universal-helper
```

---

## 🎓 Próximos Passos

1. ✅ **Revisar este roadmap** - Você aprova a estrutura?
2. 📝 **Priorizar agents** - Quais começar primeiro?
3. 🔧 **Criar primeiro agent** - Sugestão: Cypress Template
4. 📚 **Documentar padrões** - Estabelecer convenções
5. 🧪 **Testar com projeto real** - Validar efetividade
6. 🤝 **Abrir para contribuições** - Community-driven

---

## 💡 Ideias Futuras

- **Agent de Conversão de Reports** (JUnit → Allure, Cucumber → Allure)
- **Agent de Contract Testing** (Pact, Spring Cloud Contract)
- **Agent de Visual Regression** (Percy, Applitools integration)
- **Agent de Accessibility Testing** (axe-core, pa11y)
- **Agent de Mobile Testing** (Appium, Espresso, XCUITest)
- **Agent de API Mocking** (WireMock, MockServer setup)

---

**Versão**: 1.0  
**Criado**: 27/11/2025  
**Status**: 📋 Planejamento  
**Próximo Milestone**: Implementar Fase 1 (CI/CD Agents)
