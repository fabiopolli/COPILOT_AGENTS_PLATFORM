# 🟨 JavaScript/TypeScript Development Agents (3)

**Status**: ✅ v2.1 - Production Ready  
**Localização**: `.github/agents/dev/javascript-typescript/`  
**Linguagem**: TypeScript 4.9+, JavaScript (ES2022+)  
**Auto-Activation**: `javascript`, `typescript`, `react`, `node`, `ts`, `frontend`, `vue`, `next.js`, `nestjs`

---

## 📋 Agents Disponíveis

### 1. JS/TS Code Generator
**Arquivo**: `code-generator/agent-prompt.md`

**Responsabilidades**:
- Gerar funções, classes, React components
- TypeScript interfaces e tipos
- Async operations (Promise, async/await)
- Error handling e validação
- Express/Fastify routes e middlewares
- React hooks, custom hooks

**Triggers**: `"javascript"`, `"typescript"`, `"react"`, `"criar função"`, `"implementar api"`

---

### 2. TypeScript Type Safety Specialist
**Arquivo**: `typescript-specialist/agent-prompt.md`

**Responsabilidades**:
- Converter JavaScript para TypeScript
- Criar interfaces e tipos robustos
- Generics avançados e utility types
- Type guards e type assertions
- Strict null checks
- Module augmentation

**Triggers**: `"typescript"`, `"type safety"`, `"converter js para ts"`, `"generics"`

---

### 3. JS/TS Performance Optimizer
**Arquivo**: `performance-optimizer/agent-prompt.md`

**Responsabilidades**:
- CPU e memory profiling
- Bundle size optimization
- React render performance
- Caching e memoization
- Web Vitals optimization (LCP, FID, CLS)
- Memory leak detection

**Triggers**: `"performance"`, `"lento"`, `"bundle"`, `"memory leak"`, `"otimizar"`

---

## 🚀 Como Usar

### Exemplo 1: Gerar React Component

```
User: "Criar componente React com hooks para lista de usuários"

Agent: [gera component com useState, useEffect, TypeScript types]
```

### Exemplo 2: Otimizar Performance

```
User: "Analisar e otimizar performance deste componente React"

Agent: [analisa renders, sugere memo, useMemo, code splitting]
```

---

## 📊 Recursos

- **TypeScript**: 4.9+
- **React**: 18.0+
- **Node.js**: 16.0+
- **Frameworks**: Next.js, Fastify, Express
- **Meta-frameworks**: Next.js, Remix, Nuxt
- **Testing**: Jest, Vitest, Testing Library

---

**Versão**: 2.1  
**Status**: ✅ Production Ready  
**Última Atualização**: 29/01/2026
