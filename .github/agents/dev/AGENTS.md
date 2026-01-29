# 💻 Development Agents - Code Generation & Migration

**Categoria**: Dev-Only (Developers, Software Engineers, Architects)  
**Agents**: 16+ total (1 per language + generics)  
**Status**: 🔜 v1.5 Q2 2026 (In Development)

---

## 📋 Dev Agents Disponíveis

### 🐍 Python Agents (4)
Backend, data science, automation development

- **[Code Generator](./python/code-generator/agent-prompt.md)** - Gera funções, classes, tipos (Python 3.9+)
- **[Refactoring Specialist](./python/refactoring-specialist/agent-prompt.md)** - Identifica code smells, sugere patterns
- **[Migration Specialist](./python/migration-specialist/agent-prompt.md)** - Python 2→3, Django→FastAPI, Requests→httpx
- **[Linter & Type Checker](./python/linter-type-checker/agent-prompt.md)** - pylint, mypy, black integration

### 🐹 Go Agents (3)
High-performance, concurrent systems development

- **[Code Generator](./go/code-generator/agent-prompt.md)** - Gera funções, interfaces, goroutines
- **[Concurrency Specialist](./go/concurrency-specialist/agent-prompt.md)** - Goroutines, channels, mutexes, sync patterns
- **[Performance Optimizer](./go/performance-optimizer/agent-prompt.md)** - Profiling, allocation, CPU optimization

### 🔷 .NET Agents (3)
C#, ASP.NET, enterprise development

- **[Code Generator](./dotnet/code-generator/agent-prompt.md)** - Gera C# classes, async/await, LINQ queries
- **[EF Core Specialist](./dotnet/ef-core-specialist/agent-prompt.md)** - Entity Framework patterns, migrations, relationships
- **[ASP.NET Patterns](./dotnet/aspnet-patterns/agent-prompt.md)** - Dependency injection, middleware, controllers, controllers

### 🟨 JavaScript/TypeScript Agents (3)
Frontend, Node.js, full-stack development

- **[Code Generator](./javascript-typescript/code-generator/agent-prompt.md)** - React, Vue, Node.js patterns e componentes
- **[Type Safety Specialist](./javascript-typescript/type-safety/agent-prompt.md)** - TypeScript advanced types, generics, utilities
- **[Performance Optimizer](./javascript-typescript/performance-optimizer/agent-prompt.md)** - Bundle size, React optimization, lazy loading

### ☕ Java Agents (2)
Spring, enterprise, microservices development

- **[Spring Patterns](./java/spring-patterns/agent-prompt.md)** - Spring Boot, Spring Data, annotations, beans
- **[Maven/Gradle Expert](./java/maven-gradle/agent-prompt.md)** - Dependency management, build profiles, plugins

### 🔄 Generic Dev Agents (2)
Cross-language development tools

- **[Code Migration Specialist](./generic/code-migration/agent-prompt.md)** - Migra entre qualquer linguagem/framework
- **[Architecture Analyzer](./generic/architecture-analyzer/agent-prompt.md)** - Microservices, design patterns, SOLID principles

---

## 🚀 Quick Start

### Detectar Agents Automaticamente

Dev agents ativam quando você menciona:

**Python**: "python", "django", "fastapi", "refactor python", "gerar código python"
```
Você: "Gerar função Python para validar email"
→ Python Code Generator carrega
```

**Go**: "go", "golang", "goroutine", "concorrência", "performance go"
```
Você: "Otimizar performance desta goroutine"
→ Go Performance Optimizer carrega
```

**.NET**: ".net", "c#", "csharp", "entity framework", "asp.net", "async"
```
Você: "Gerar controller ASP.NET para API"
→ .NET Code Generator carrega
```

**JavaScript/TypeScript**: "javascript", "typescript", "react", "node", "ts", "frontend"
```
Você: "Converter JavaScript para TypeScript com tipos"
→ TypeScript Type Safety Specialist carrega
```

**Java**: "java", "spring", "maven", "gradle", "microservice"
```
Você: "Spring Boot patterns para API REST"
→ Spring Patterns agent carrega
```

**Generic**: "migrar", "architecture", "design pattern", "language migration"
```
Você: "Migrar código Python para Go mantendo lógica"
→ Code Migration Specialist carrega
```

---

## 📊 Statistics

| Métrica | Valor |
|---------|-------|
| **Total Agents** | 16+ |
| **Languages** | 5 (Python, Go, .NET, JS/TS, Java) + Generic |
| **Auto-Activation Keywords** | 40+ |
| **Status** | 🔜 v1.5 In Development |
| **Expected Release** | Q2 2026 |

---

## 🆕 Roadmap (v1.5 Q2 2026)

### Prioridade Alta
- [x] Structure defined
- [ ] Python agents (Code Gen, Refactoring, Migration, Linter)
- [ ] .NET agents (Code Gen, EF Core, ASP.NET)
- [ ] JS/TS agents (Code Gen, TypeScript, Performance)
- [ ] Go agents (Code Gen, Concurrency, Performance)

### Prioridade Média
- [ ] Java agents (Spring, Maven/Gradle)
- [ ] Generic agents (Migration, Architecture)
- [ ] Refactoring specialists por language
- [ ] Performance profilers

### Prioridade Baixa
- [ ] Mobile development (Swift, Kotlin)
- [ ] Rust agents
- [ ] Ruby/Rails agents
- [ ] PHP agents

---

## 🔗 Related Categories

- **🎯 QA Agents**: Test automation, migration
- **🔄 Shared Agents**: Code Review, Documentation, DevOps (available to Dev+QA)
- **🤖 System Agents**: Universal Helper, Specification Agent

---

## 📖 Documentation

- **[Universal Helper](../system/universal-helper/agent-prompt.md)** - Semantic intent detection
- **[Specification Agent](../system/specification/agent-prompt.md)** - PRD + Architecture generation
- **[Roadmap](../../../docs/ROADMAP_AGENTS_EXPANSION.md)** - Future agents planning
- **[Examples](../../../docs/EXEMPLOS_USO_CHAT.md)** - Real-world usage examples

---

**Version**: 2.1  
**Category**: Dev-Only  
**Status**: 🔜 Under Development (v1.5 Q2 2026)
