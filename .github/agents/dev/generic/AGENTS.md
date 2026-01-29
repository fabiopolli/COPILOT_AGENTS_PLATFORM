# 🔄 Generic Development Agents (2)

**Status**: ✅ v2.1 - Production Ready  
**Localização**: `.github/agents/dev/generic/`  
**Linguagem**: Language-Agnostic  
**Auto-Activation**: `migrar linguagem`, `language migration`, `architecture`, `design pattern`, `refactor`

---

## 📋 Agents Disponíveis

### 1. Language Migration Specialist
**Arquivo**: `language-migration-specialist/agent-prompt.md`

**Responsabilidades**:
- Migrar código entre linguagens (Python ↔ Go ↔ .NET ↔ Java)
- Converter patterns idiomáticos
- Mapear tipos de dados
- Adaptar frameworks equivalentes
- Manter lógica e comportamento
- Preservar performance characteristics

**Triggers**: `"migrar linguagem"`, `"converter de"`, `"passar para"`, `"language migration"`

**Exemplo**:
- Python Flask → Go Gin
- Java Spring Boot → .NET ASP.NET Core
- JavaScript/Node → Go
- C# → Python

---

### 2. Architecture Analyzer
**Arquivo**: `architecture-analyzer/agent-prompt.md`

**Responsabilidades**:
- Analisar arquitetura de projeto
- Sugerir melhorias (modularização, layering)
- Implementar design patterns (MVC, MVVM, Clean, Hexagonal)
- Documentar arquitetura
- Avaliar escalabilidade
- Propor refatorações estruturais

**Triggers**: `"arquitetura"`, `"architecture"`, `"design pattern"`, `"estrutura"`

**Exemplo**:
- Monolith → Microservices
- Layered → Clean Architecture
- Spaghetti Code → Domain-Driven Design

---

## 🚀 Como Usar

### Exemplo 1: Migrar Código Python para Go

```
User: "Migrar este código Python para Go, mantendo funcionalidade"

Agent: [analisa Python, mapeia para Go idiomático, retorna código equivalente]
```

### Exemplo 2: Analisar Arquitetura

```
User: "Analisar arquitetura do projeto e sugerir melhorias"

Agent: [mapeia módulos, identifica issues, sugere padrões, fornece roadmap]
```

---

## 📊 Recursos

- **Linguagens Suportadas**: Python, Go, .NET, Java, JavaScript/TypeScript, Rust
- **Design Patterns**: SOLID, GRASP, Gang of Four
- **Architectures**: Layered, Hexagonal, Clean, Microservices, Event-Driven
- **Tools**: Dependency analyzers, code mappers

---

**Versão**: 2.1  
**Status**: ✅ Production Ready  
**Última Atualização**: 29/01/2026
