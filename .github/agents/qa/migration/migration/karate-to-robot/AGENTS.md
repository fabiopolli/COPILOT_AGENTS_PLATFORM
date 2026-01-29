# Migration: Karate → Robot Framework

**Context:** Automatically loaded when working with Karate projects (`.feature` files, `karate-config.js`) or when user requests migration.

## Agents in This Category

All agents below work together for complete Karate → Robot Framework migration:

- **[Orchestrator](orchestrator/agent-prompt.md)** - Coordinates 4-phase migration workflow
- **[Core](core/agent-prompt.md)** - Converts Karate scenarios to Robot test cases  
- **[Dependency Mapper](dependency-mapper/agent-prompt.md)** - Maps Maven/Gradle → Python deps
- **[Environment Config](environment-config/agent-prompt.md)** - Converts karate-config.js → Robot variables
- **[API Endpoint Mapper](api-endpoint-mapper/agent-prompt.md)** - Catalogs and documents APIs
- **[Keyword Designer](keyword-designer/agent-prompt.md)** - Designs reusable keyword libraries
- **[Assertion Converter](assertion-converter/agent-prompt.md)** - Converts Karate assertions → Robot validations

## When to Load These Agents

Use `#file` to load specific agents as needed, or load all for complete migration:

```
#file .github/agents/migration/karate-to-robot/orchestrator/agent-prompt.md
#file .github/agents/migration/karate-to-robot/core/agent-prompt.md
#file .github/agents/migration/karate-to-robot/dependency-mapper/agent-prompt.md
#file .github/agents/migration/karate-to-robot/environment-config/agent-prompt.md
#file .github/agents/migration/karate-to-robot/api-endpoint-mapper/agent-prompt.md
#file .github/agents/migration/karate-to-robot/keyword-designer/agent-prompt.md
#file .github/agents/migration/karate-to-robot/assertion-converter/agent-prompt.md
```

**Tip:** For full details on each agent's responsibilities, input/output formats, and validation rules, see the individual `agent-prompt.md` files.
