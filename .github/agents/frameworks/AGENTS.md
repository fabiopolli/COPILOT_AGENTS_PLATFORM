# Framework Template Specialists

**Context:** Loaded when user requests project scaffolding/templates ("gerar template", "create project", "scaffold").

## Agents in This Category

- **[Robot Framework Template Specialist](robot-framework-template/agent-prompt.md)** - Generates complete Robot Framework projects (API/UI/DB)
- **[Karate Framework Template Specialist](karate-framework-template/agent-prompt.md)** - Generates complete Karate DSL projects (REST/GraphQL)

## When to Load These Agents

```
#file .github/agents/frameworks/robot-framework-template/agent-prompt.md
#file .github/agents/frameworks/karate-framework-template/agent-prompt.md
```

**Tip:** Each specialist generates complete project structures with dependencies, configs, CI/CD, and example tests. See individual `agent-prompt.md` files for detailed capabilities.
