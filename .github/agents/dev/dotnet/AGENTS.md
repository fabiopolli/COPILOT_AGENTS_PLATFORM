# 🔷 .NET Development Agents (3)

**Status**: ✅ v2.1 - Production Ready  
**Localização**: `.github/agents/dev/dotnet/`  
**Linguagem**: C# 11+, .NET 6.0+, ASP.NET Core 6+  
**Auto-Activation**: `c#`, `.net`, `csharp`, `entity framework`, `ef core`, `aspnet`, `controller`, `middleware`

---

## 📋 Agents Disponíveis

### 1. .NET Code Generator
**Arquivo**: `code-generator/agent-prompt.md`

**Responsabilidades**:
- Gerar classes, interfaces, structs, records
- Criar ASP.NET Core controllers com async patterns
- Implementar services com dependency injection
- LINQ queries e transformações
- Entity Framework relationships
- Nullable reference types (C# 8+)

**Triggers**: `"c#"`, `"criar classe"`, `"implementar service"`, `"controller"`

---

### 2. .NET EF Core Specialist
**Arquivo**: `ef-core-specialist/agent-prompt.md`

**Responsabilidades**:
- Design de schemas com Fluent API
- Configurar relationships (1:1, 1:N, N:N)
- Criar e atualizar migrations
- Otimizar queries (Include, Select, AsNoTracking)
- Data seeding e shadow properties
- Performance optimization

**Triggers**: `"entity framework"`, `"ef core"`, `"migration"`, `"dbcontext"`

---

### 3. .NET ASP.NET Patterns
**Arquivo**: `aspnet-patterns/agent-prompt.md`

**Responsabilidades**:
- Criar middlewares, filters, policies
- Autenticação e autorização (JWT, OAuth2)
- Error handling global
- Minimal APIs e endpoint routing
- Health checks e configuration
- Dependency injection setup

**Triggers**: `"aspnet"`, `"middleware"`, `"auth"`, `"policy"`

---

## 🚀 Como Usar

### Exemplo 1: Gerar Classe com EF Core

```
User: "Criar classe de usuário para ASP.NET Core com EF Core"

Agent: [gera classe User, DbContext, migrations]
```

### Exemplo 2: Configurar Autenticação JWT

```
User: "Implementar autenticação JWT no ASP.NET"

Agent: [cria controller, middleware, políticas]
```

---

## 📊 Recursos

- **.NET Versions**: 6.0+, 7.0, 8.0
- **ASP.NET Core**: 6.0+
- **Entity Framework**: Core 6.0+
- **Authentication**: JWT, OAuth2, IdentityServer
- **Tools**: EF CLI, dotnet CLI

---

**Versão**: 2.1  
**Status**: ✅ Production Ready  
**Última Atualização**: 29/01/2026
