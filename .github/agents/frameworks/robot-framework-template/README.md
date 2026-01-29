# Robot Framework + Python - Project Template

Template completo para projetos de teste com Robot Framework e Python.

## 📋 Estrutura do Template

```
tests/robot/
├── produto/                    # Testes por domínio de negócio
│   ├── autenticacao/
│   ├── cadastro/
│   └── integracao/
├── keywords/                   # Keywords customizadas por contexto
│   ├── auth-keywords.robot
│   └── api-keywords.robot
├── resources/                  # Recursos compartilhados
│   ├── keywords.resource       # Keywords genéricas reutilizáveis
│   └── variables.robot         # Variáveis globais
├── libs/                       # Bibliotecas Python customizadas
│   └── CustomLibrary.py
├── data/                       # Dados de teste
│   ├── users.json
│   └── test-data.csv
├── config/                     # Configurações por ambiente
│   ├── dev.robot
│   ├── staging.robot
│   └── prod.robot
├── requirements.txt            # Dependências Python
├── README.md                   # Documentação do projeto
└── SUMMARY.md                  # Progresso e cobertura
```

---

## 🔧 Dependências Padrão

### requirements.txt
```
robotframework>=7.0
robotframework-requests>=0.9.5
robotframework-jsonlibrary>=0.5
robotframework-seleniumlibrary>=6.0.0  # Para testes UI
requests>=2.31.0
jsonschema>=4.20.0
cryptography>=41.0.0
allure-robotframework>=2.13.2  # Relatórios avançados
```

### Instalação
```bash
pip install -r requirements.txt
```

---

## 📦 Keywords Padrão (resources/keywords.resource)

### Session Management
- `Create API Session` - Cria sessão HTTP reutilizável
- `Close All Sessions` - Fecha todas as sessões

### Authentication
- `Auth Header` - Cria header com Bearer token
- `Create Auth Header With API Key` - Header com API Key
- `Set Default Headers` - Define headers padrão

### HTTP Requests
- `GET Request With Auth` - GET com autenticação
- `POST Request With Auth` - POST com body e auth
- `PUT Request With Auth` - PUT com body e auth
- `DELETE Request With Auth` - DELETE com auth
- `PATCH Request With Auth` - PATCH com body e auth

### Validations
- `Status Code Should Be` - Valida status code
- `Response Should Contain` - Valida campo no JSON
- `Response Should Match Schema` - Valida JSON Schema
- `Response Time Should Be Less Than` - Valida performance

### Data Manipulation
- `Load Test Data` - Carrega dados de arquivo JSON/CSV
- `Generate Random String` - Gera string aleatória
- `Get Current Timestamp` - Timestamp atual
- `Format Date` - Formata data

---

## 🎯 Estrutura de Teste Padrão

```robot
*** Settings ***
Documentation    Suite de testes de autenticação
Resource         ../../resources/keywords.resource
Library          Collections
Test Setup       Create API Session
Test Teardown    Close All Sessions
Suite Setup      Load Environment Variables
Suite Teardown   Generate Test Report

*** Variables ***
${BASE_URL}      https://api.example.com
${API_KEY}       ${ENV_API_KEY}

*** Test Cases ***
TC001 - Autenticação com credenciais válidas
    [Documentation]    Valida login com usuário e senha corretos
    [Tags]    auth    smoke    critical
    
    # Arrange
    ${credentials}=    Create Dictionary    username=user1    password=pass123
    ${headers}=        Create Auth Header With API Key    ${API_KEY}
    
    # Act
    ${response}=    POST Request With Auth    /auth/login    ${credentials}    ${headers}    200
    
    # Assert
    Status Code Should Be    ${response}    200
    Response Should Contain    ${response}    token
    ${token}=    Get From Dictionary    ${response.json()}    token
    Should Not Be Empty    ${token}

TC002 - Autenticação com credenciais inválidas
    [Documentation]    Valida rejeição de login com senha errada
    [Tags]    auth    negative
    
    ${credentials}=    Create Dictionary    username=user1    password=wrongpass
    ${headers}=        Create Auth Header With API Key    ${API_KEY}
    
    ${response}=    POST Request With Auth    /auth/login    ${credentials}    ${headers}    401
    
    Status Code Should Be    ${response}    401
    Response Should Contain    ${response}    error
```

---

## ⚙️ Configuração por Ambiente

### config/dev.robot
```robot
*** Variables ***
${ENV_BASE_URL}     https://dev-api.example.com
${ENV_TIMEOUT}      30
${ENV_VERIFY_SSL}   False
${ENV_LOG_LEVEL}    DEBUG
```

### config/staging.robot
```robot
*** Variables ***
${ENV_BASE_URL}     https://staging-api.example.com
${ENV_TIMEOUT}      10
${ENV_VERIFY_SSL}   True
${ENV_LOG_LEVEL}    INFO
```

### config/prod.robot
```robot
*** Variables ***
${ENV_BASE_URL}     https://api.example.com
${ENV_TIMEOUT}      5
${ENV_VERIFY_SSL}   True
${ENV_LOG_LEVEL}    WARN
```

---

## 🚀 Execução

### Executar todos os testes
```bash
robot --outputdir results tests/robot/
```

### Executar por tag
```bash
robot --include smoke --outputdir results tests/robot/
robot --include critical --outputdir results tests/robot/
```

### Executar com ambiente específico
```bash
robot --variablefile config/dev.robot --outputdir results tests/robot/
robot --variablefile config/staging.robot --outputdir results tests/robot/
```

### Executar testes específicos
```bash
robot --test "TC001*" --outputdir results tests/robot/produto/autenticacao/
```

### Execução paralela
```bash
pabot --processes 4 --outputdir results tests/robot/
```

---

## 📊 Relatórios

### HTML Padrão
Gerado automaticamente em `results/`:
- `report.html` - Relatório visual
- `log.html` - Log detalhado
- `output.xml` - XML para CI/CD

### Allure Reports
```bash
# Executar com Allure
robot --listener allure_robotframework --outputdir output/allure tests/robot/

# Gerar relatório
allure generate output/allure --clean -o allure-report

# Abrir relatório
allure open allure-report
```

---

## 🏷️ Tags Recomendadas

| Tag | Uso |
|-----|-----|
| `smoke` | Testes críticos para smoke test |
| `critical` | Testes de funcionalidades críticas |
| `regression` | Suite completa de regressão |
| `positive` | Casos de sucesso |
| `negative` | Casos de erro/falha |
| `auth` | Testes de autenticação |
| `api` | Testes de API REST |
| `ui` | Testes de interface |
| `integration` | Testes de integração |
| `performance` | Testes de performance |
| `wip` | Work in Progress (não executar em CI) |

---

## 🔐 Boas Práticas

### 1. Estrutura
- ✅ Organize por domínio de negócio, não por tipo de teste
- ✅ Keywords genéricas em `resources/`, específicas em `keywords/`
- ✅ Use bibliotecas Python para lógica complexa

### 2. Nomenclatura
- ✅ Testes: `TC001 - Descrição clara`
- ✅ Keywords: `Verbo + Substantivo` (ex: `Create User`, `Validate Response`)
- ✅ Variáveis: `${UPPER_CASE}` para globais, `${snake_case}` para locais

### 3. Dados Sensíveis
- ❌ NUNCA commitar credenciais
- ✅ Use variáveis de ambiente: `${ENV_API_KEY}`
- ✅ Use arquivos .env (gitignored)

### 4. Validações
- ✅ Valide status code SEMPRE
- ✅ Valide estrutura de resposta (JSON Schema)
- ✅ Valide dados críticos de negócio
- ✅ Use assertions claras e específicas

### 5. Manutenibilidade
- ✅ DRY: Reutilize keywords
- ✅ Documentação clara em cada teste
- ✅ Tags para fácil seleção
- ✅ Teardown para limpeza

---

## 🔄 CI/CD Integration

### GitHub Actions
```yaml
name: Robot Framework Tests

on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-python@v4
        with:
          python-version: '3.11'
      - run: pip install -r tests/robot/requirements.txt
      - run: robot --outputdir results tests/robot/
      - uses: actions/upload-artifact@v3
        if: always()
        with:
          name: robot-results
          path: results/
```

### GitLab CI
```yaml
robot-tests:
  stage: test
  image: python:3.11
  before_script:
    - pip install -r tests/robot/requirements.txt
  script:
    - robot --outputdir results tests/robot/
  artifacts:
    when: always
    paths:
      - results/
    reports:
      junit: results/output.xml
```

---

## 📚 Recursos Adicionais

- [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [RequestsLibrary Docs](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html)
- [Allure Reports](https://docs.qameta.io/allure/)

---

**Última atualização:** 27/11/2025  
**Versão:** 1.0  
**Base:** Projeto `examples/score/tests/robot/`
