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
- Gerar classes, interfaces, annotations
- Spring Boot services, controllers, repositories
- Async patterns (CompletableFuture, Reactor)
- Dependency injection com Spring
- Stream API e functional programming
- Record types (Java 16+)

**Triggers**: `"java"`, `"spring"`, `"criar classe"`, `"implementar service"`

---

### 2. Java Spring Patterns
**Arquivo**: `spring-patterns/agent-prompt.md`

**Responsabilidades**:
- Spring Boot application setup
- REST controller design
- Service layer patterns
- Repository pattern com Spring Data
- Transaction management
- Security (Spring Security, JWT)
- Configuration management

**Triggers**: `"spring boot"`, `"spring"`, `"controller"`, `"repository"`

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
