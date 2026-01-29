# Karate Framework + Java - Project Template

Template completo para projetos de teste com Karate Framework e Java.

## 📋 Estrutura do Template

```
src/
├── test/
│   ├── java/
│   │   ├── runners/              # Test runners
│   │   │   ├── AllTestsRunner.java
│   │   │   ├── SmokeTestsRunner.java
│   │   │   └── RegressionRunner.java
│   │   ├── utils/                # Utilitários Java
│   │   │   ├── DataGenerator.java
│   │   │   └── CustomFunctions.java
│   │   └── karate-config.js      # Configuração global
│   │
│   └── resources/
│       ├── features/             # Feature files por domínio
│       │   ├── auth/
│       │   │   ├── login.feature
│       │   │   └── register.feature
│       │   ├── users/
│       │   └── products/
│       ├── data/                 # Dados de teste
│       │   ├── users.json
│       │   └── test-data.csv
│       ├── schemas/              # JSON Schemas
│       │   └── user-schema.json
│       └── common.feature        # Features reutilizáveis
│
├── pom.xml                       # Dependências Maven
└── README.md                     # Documentação
```

---

## 🔧 Dependências Maven (pom.xml)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
         http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.example</groupId>
    <artifactId>karate-tests</artifactId>
    <version>1.0.0</version>

    <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <java.version>11</java.version>
        <maven.compiler.version>3.11.0</maven.compiler.version>
        <karate.version>1.4.1</karate.version>
    </properties>

    <dependencies>
        <!-- Karate -->
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-junit5</artifactId>
            <version>${karate.version}</version>
            <scope>test</scope>
        </dependency>
        
        <!-- Allure Reports -->
        <dependency>
            <groupId>io.qameta.allure</groupId>
            <artifactId>allure-karate</artifactId>
            <version>2.24.0</version>
            <scope>test</scope>
        </dependency>
    </dependencies>

    <build>
        <testResources>
            <testResource>
                <directory>src/test/resources</directory>
                <excludes>
                    <exclude>**/*.java</exclude>
                </excludes>
            </testResource>
        </testResources>
        
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>${maven.compiler.version}</version>
                <configuration>
                    <encoding>UTF-8</encoding>
                    <source>${java.version}</source>
                    <target>${java.version}</target>
                </configuration>
            </plugin>
            
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>3.1.2</version>
                <configuration>
                    <argLine>-Dfile.encoding=UTF-8</argLine>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
```

---

## ⚙️ Configuração Global (karate-config.js)

```javascript
function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  
  if (!env) {
    env = 'dev';
  }
  
  var config = {
    env: env,
    baseUrl: 'https://api.example.com',
    timeout: 30000,
    retry: 3
  }
  
  // Environment-specific configuration
  if (env == 'dev') {
    config.baseUrl = 'https://dev-api.example.com';
    config.apiKey = karate.properties['dev.api.key'];
  } else if (env == 'staging') {
    config.baseUrl = 'https://staging-api.example.com';
    config.apiKey = karate.properties['staging.api.key'];
  } else if (env == 'prod') {
    config.baseUrl = 'https://api.example.com';
    config.apiKey = karate.properties['prod.api.key'];
  }
  
  // Common headers
  config.headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  };
  
  return config;
}
```

---

## 🎯 Estrutura de Feature Padrão

### login.feature
```gherkin
Feature: User Authentication

Background:
  * url baseUrl
  * def authHeaders = { 'X-API-Key': '#(apiKey)' }

@smoke @critical
Scenario: TC001 - Successful login with valid credentials
  Given path '/auth/login'
  And request { username: 'user1', password: 'pass123' }
  And headers authHeaders
  When method POST
  Then status 200
  And match response.token == '#present'
  And match response.token == '#string'
  And match response.expiresIn == '#number'
  * def authToken = response.token

@negative
Scenario: TC002 - Login fails with invalid credentials
  Given path '/auth/login'
  And request { username: 'user1', password: 'wrongpass' }
  And headers authHeaders
  When method POST
  Then status 401
  And match response.error == '#present'
  And match response.error == 'Invalid credentials'

@negative
Scenario: TC003 - Login fails with missing username
  Given path '/auth/login'
  And request { password: 'pass123' }
  And headers authHeaders
  When method POST
  Then status 400
  And match response.error == '#present'
  And match response.message contains 'username'
```

---

## 🏃 Test Runners

### AllTestsRunner.java
```java
package runners;

import com.intuit.karate.junit5.Karate;

public class AllTestsRunner {
    
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:features")
                .relativeTo(getClass());
    }
}
```

### SmokeTestsRunner.java
```java
package runners;

import com.intuit.karate.junit5.Karate;

public class SmokeTestsRunner {
    
    @Karate.Test
    Karate testSmoke() {
        return Karate.run("classpath:features")
                .tags("@smoke")
                .relativeTo(getClass());
    }
}
```

### RegressionRunner.java (com reports paralelos)
```java
package runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class RegressionRunner {
    
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:features")
                .tags("~@ignore")
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
```

---

## 🔍 Matchers e Validações Comuns

### JSON Matching
```gherkin
# Exact match
And match response == { id: 1, name: 'John' }

# Partial match
And match response contains { name: 'John' }

# Type checking
And match response.id == '#number'
And match response.name == '#string'
And match response.active == '#boolean'
And match response.token == '#uuid'

# Array matching
And match response.users == '#[3]'  # exactly 3 items
And match response.users == '#[]'   # non-empty array
And match response.users[0].name == '#string'

# Presence check
And match response.token == '#present'
And match response.error == '#notpresent'

# Regex matching
And match response.email == '#regex .+@.+\\..+'

# Fuzzy matching (within range)
And match response.age == '#? _ >= 18 && _ <= 65'
```

### Schema Validation
```gherkin
* def schema = read('classpath:schemas/user-schema.json')
And match response == schema
```

### Response Time Validation
```gherkin
And assert responseTime < 1000
```

---

## 🚀 Execução

### Executar todos os testes
```bash
mvn test
```

### Executar por tags
```bash
mvn test -Dkarate.options="--tags @smoke"
mvn test -Dkarate.options="--tags @critical"
mvn test -Dkarate.options="--tags ~@ignore"
```

### Executar com ambiente específico
```bash
mvn test -Dkarate.env=dev
mvn test -Dkarate.env=staging
mvn test -Dkarate.env=prod
```

### Executar feature específica
```bash
mvn test -Dkarate.options="classpath:features/auth/login.feature"
```

### Execução paralela
```bash
mvn test -Dtest=RegressionRunner
```

---

## 📊 Relatórios

### HTML Padrão
Gerado automaticamente em `target/karate-reports/`:
- `karate-summary.html` - Resumo de execução
- `karate-timeline.html` - Timeline de execução
- Pasta com resultados detalhados por feature

### Allure Reports
```bash
# Executar com Allure
mvn test -Dallure.results.directory=target/allure-results

# Gerar relatório
allure generate target/allure-results --clean -o target/allure-report

# Abrir relatório
allure open target/allure-report
```

---

## 🏷️ Tags Recomendadas

| Tag | Uso |
|-----|-----|
| `@smoke` | Testes críticos para smoke test |
| `@critical` | Funcionalidades críticas |
| `@regression` | Suite completa de regressão |
| `@positive` | Casos de sucesso |
| `@negative` | Casos de erro/falha |
| `@auth` | Testes de autenticação |
| `@api` | Testes de API REST |
| `@integration` | Testes de integração |
| `@performance` | Testes de performance |
| `@ignore` | Testes a ignorar temporariamente |

---

## 🔐 Boas Práticas

### 1. Estrutura
- ✅ Organize features por domínio de negócio
- ✅ Use Background para setup comum
- ✅ Reutilize features com `call read()`

### 2. Dados Sensíveis
- ❌ NUNCA commitar credenciais em features
- ✅ Use `karate.properties` (gitignored)
- ✅ Use variáveis de ambiente
- ✅ Use cofres de secrets (Vault, AWS Secrets Manager)

### 3. Validações
- ✅ Sempre valide status code
- ✅ Use JSON Schema para validações complexas
- ✅ Valide tipos com fuzzy matchers (`#number`, `#string`)
- ✅ Valide response time quando crítico

### 4. Reutilização
```gherkin
# Ler feature reutilizável
* def login = call read('classpath:common/login.feature')
* def authToken = login.token

# Ler dados de arquivo
* def users = read('classpath:data/users.json')
* def user = users[0]
```

### 5. Debugging
```gherkin
# Print no console
* print 'Response:', response

# Print formatado
* karate.pretty(response)

# Pause para debug (abre browser)
* karate.embed('Screenshot', 'image/png')
```

---

## 🔄 CI/CD Integration

### GitHub Actions
```yaml
name: Karate Tests

on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-java@v3
        with:
          distribution: 'temurin'
          java-version: '11'
      - run: mvn test -Dkarate.env=staging
      - uses: actions/upload-artifact@v3
        if: always()
        with:
          name: karate-results
          path: target/karate-reports/
```

### GitLab CI
```yaml
karate-tests:
  stage: test
  image: maven:3.8-openjdk-11
  script:
    - mvn test -Dkarate.env=staging
  artifacts:
    when: always
    paths:
      - target/karate-reports/
    reports:
      junit: target/surefire-reports/TEST-*.xml
```

---

## 📚 Recursos Adicionais

- [Karate Documentation](https://github.com/karatelabs/karate)
- [Karate Examples](https://github.com/karatelabs/karate/tree/master/karate-demo)
- [API Testing Best Practices](https://github.com/karatelabs/karate#best-practices)

---

**Última atualização:** 27/11/2025  
**Versão:** 1.0  
**Base:** Estrutura padrão Karate + experiência do projeto
