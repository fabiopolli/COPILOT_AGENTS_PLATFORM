# 🤖 System Agents - Core Platform & Semantic Detection

**Categoria**: System (Always Active)  
**Agents**: 2 total (Universal Helper + Specification)  
**Status**: ✅ v1.0 Production Ready

---

## 📋 System Agents

### 🎯 Universal Helper (ALWAYS ACTIVE)
**File**: `universal-helper/agent-prompt.md`

Semantic intent detection engine that automatically routes to correct agents.

**Features**:
- 100+ keywords (Portuguese + English)
- Intent understanding beyond exact matches
- Automatic agent activation
- Multi-category support
- Fallback to general assistance

**When Active**: Always (loaded by default in VS Code settings)

**Triggers**:
- Any mention of development, testing, QA, DevOps, security
- File type detection (.feature, .robot, .py, .go, .cs, .ts, etc)
- Implicit patterns (code problems, performance issues, security concerns)

---

### 📋 Specification Agent (NEW!)
**File**: `specification/agent-prompt.md`

Interactive PRD + Architecture Design Document generator for new projects.

**Features**:
- 5-phase questionário structure
- Generates PRD (Product Requirements Document)
- Generates ADD (Architecture Design Document)
- Generates TEST_SPEC (Test Strategy)
- Generates IMPLEMENTATION_PLAN (Sprint breakdown)
- Suggests dev agents for implementation

**When Activated**: When user mentions:
```
- "novo projeto"
- "novo desenvolvimento"
- "criar uma app"
- "especificar isso"
- "preciso de especificação"
- "help me structure a software"
```

**Output Example**:
```
✅ PRD.md           (15-20 pages) - What to build
✅ ADD.md           (10-15 pages) - How to build  
✅ TEST_SPEC.md     (8-10 pages)  - How to test
✅ IMPLEMENTATION_PLAN.md (5-8 pages) - Sprint breakdown
```

**Philosophy**:
> "Se você souber fazer uma especificação detalhada... os agentes de IA são capazes de fazer a implementação com nenhum ou quase nenhum erro."

The Specification Agent ensures this complete specification, enabling dev agents to implement with near-zero errors.

---

## 🚀 Quick Start

### Universal Helper

Works automatically - no action needed. Simply mention any task and it detects:

```
Você: "Revisar código"
→ Universal Helper detecta e oferece Code Review agents

Você: "Migrar de Karate para Robot"
→ Universal Helper detecta e oferece Migration agents

Você: "Criar novo projeto"
→ Universal Helper detecta e oferece Specification Agent
```

### Specification Agent

Activated automatically or manually:

```
Você: "Preciso de um novo microserviço de vendas"
→ Specification Agent inicia questionário interativo

Resultado: PRD + ADD + TEST_SPEC + IMPLEMENTATION_PLAN
```

---

## 📊 Statistics

| Métrica | Valor |
|---------|-------|
| **System Agents** | 2 |
| **Status** | ✅ Active |
| **Universal Helper Keywords** | 100+ |
| **Auto-Load** | Yes (Always) |
| **Manual Activation** | Optional (usually automatic) |

---

## 🔄 Integration

Both system agents work together:

```
User Input
    ↓
Universal Helper (Intent Detection)
    ↓
If "novo projeto" → Specification Agent
    ↓
Generate PRD + ADD + TEST_SPEC + IMPLEMENTATION_PLAN
    ↓
Universal Helper suggests Dev agents for implementation
```

---

## 🔗 Ecosystem

- **🎯 QA Agents**: Test automation, migration
- **💻 Dev Agents**: Code generation, language-specific
- **🔄 Shared Agents**: Code Review, Documentation, DevOps
- **🏗️ Infrastructure Agents**: Cloud, Kubernetes, IaC
- **🔐 Security Agents**: Secrets, compliance, scanning

---

## 📖 Documentation

- **[Universal Helper Details](./universal-helper/agent-prompt.md)** - Full specification and keywords
- **[Specification Agent Details](./specification/agent-prompt.md)** - Questionnaire flow and outputs
- **[Roadmap](../../../docs/ROADMAP_AGENTS_EXPANSION.md)** - Future enhancements

---

**Version**: 2.1  
**Category**: System (Always Active)  
**Status**: ✅ Production Ready
