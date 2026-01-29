# 🐹 Go Development Agents (3)

**Status**: ✅ v2.1 - Production Ready  
**Localização**: `.github/agents/dev/go/`  
**Linguagem**: Go 1.19+  
**Auto-Activation**: `go`, `golang`, `goroutine`, `concurrency`, `channel`, `pprof`, `benchmark`

---

## 📋 Agents Disponíveis

### 1. Go Code Generator
**Arquivo**: `code-generator/agent-prompt.md`

**Responsabilidades**:
- Gerar funções, structs, interfaces
- HTTP handlers (net/http, Gin, Echo)
- Goroutines e channels
- Error handling com custom errors
- JSON marshaling/unmarshaling
- Database queries (sql, gorm)

**Triggers**: `"go"`, `"golang"`, `"criar função"`, `"implementar service"`

---

### 2. Go Concurrency Specialist
**Arquivo**: `concurrency-specialist/agent-prompt.md`

**Responsabilidades**:
- Design de goroutines
- Channel patterns (fan-out, fan-in, worker pool)
- Synchronization (mutexes, atomic)
- Race condition detection
- Context handling (cancellation, timeout)
- Graceful shutdown
- Deadlock prevention

**Triggers**: `"concurrency"`, `"goroutine"`, `"channel"`, `"race"`, `"mutex"`

---

### 3. Go Performance Optimizer
**Arquivo**: `performance-optimizer/agent-prompt.md`

**Responsabilidades**:
- CPU profiling (pprof)
- Memory profiling (heap, alloc)
- Benchmarking (testing.B)
- Allocation optimization
- String builders e buffer optimization
- Query optimization
- Caching strategies

**Triggers**: `"performance"`, `"benchmark"`, `"profiling"`, `"memory"`, `"lento"`

---

## 🚀 Como Usar

### Exemplo 1: Implementar Worker Pool

```
User: "Criar um worker pool com goroutines e channels para processar jobs"

Agent: [gera código com worker pool pattern, graceful shutdown]
```

### Exemplo 2: CPU Profiling

```
User: "Analisar performance deste programa Go com CPU profiling"

Agent: [executa pprof, identifica bottlenecks, sugere otimizações]
```

---

## 📊 Recursos

- **Go Version**: 1.19+
- **Frameworks**: Gin, Echo, GORM
- **Tools**: pprof, go test, benchmark
- **Concurrency**: goroutines, channels, sync package
- **Performance Tools**: runtime/trace, pprof, benchstat

---

**Versão**: 2.1  
**Status**: ✅ Production Ready  
**Última Atualização**: 29/01/2026
