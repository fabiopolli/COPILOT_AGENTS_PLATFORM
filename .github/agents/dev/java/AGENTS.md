# ☕ Java Development Agents (2)

**Status**: ✅ v2.1 - Production Ready  
**Localização**: `.github/agents/dev/java/`  
**Linguagem**: Java 17+, Maven/Gradle  
**Auto-Activation**: `java`, `spring`, `maven`, `gradle`, `microservice`, `spring boot`

---

## 📋 Agents Disponíveis

### 1. Java Code Generator
**Arquivo**: `code-generator/agent-prompt.md`

**Responsabilidades**:
- Gerar classes, interfaces, DTOs com validação
- Spring Boot services, controllers, repositories
- Padrões de design (Builder, Factory, Singleton)
- Builder pattern com validações
- Documentação JavaDoc completa
- Exemplos de testes unitários

**Triggers**: `"java"`, `"gerar classe"`, `"criar dto"`, `"builder pattern"`

---

### 2. Spring Boot Patterns Specialist
**Arquivo**: `spring-patterns/agent-prompt.md`

**Responsabilidades**:
- Arquitetura Spring Boot completa
- REST controller design com validação
- Service layer com transações
- Repository pattern com Spring Data JPA
- Spring Security e JWT
- Exception handling global
- Configuração de application.yml

**Triggers**: `"spring boot"`, `"rest api"`, `"spring security"`, `"jwt"`

---

## 🚀 Como Usar

### Exemplo 1: Gerar Serviço Spring Boot

```
User: "Criar serviço de usuários com Spring Boot, JPA e repositório"

Agent: [gera controller, service, repository, entities]
```

### Exemplo 2: Implementar Autenticação JWT

```
User: "Adicionar autenticação JWT ao projeto Spring Boot"

Agent: [configura Spring Security, filtros, providers]
```

---

## 📊 Recursos

- **Java Version**: 17+, 20+, 21 LTS
- **Spring Boot**: 3.0+
- **Build Tools**: Maven 3.9+, Gradle 7.6+
- **Database**: Spring Data JPA, Hibernate
- **Security**: Spring Security, JWT

---

**Versão**: 2.1  
**Status**: ✅ Production Ready  
**Última Atualização**: 29/01/2026
