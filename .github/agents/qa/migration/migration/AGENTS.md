# Framework Migration Agents

**Context:** Automatically loaded when user mentions "migrar", "migration", "convert", "transform", "adaptar", "portar", "reescrever" or when opening `.feature`, `.robot`, `.spec.js`, `.test.py` files.

## 🔄 Supported Migration Paths

- Karate DSL ↔ Robot Framework
- Selenium (Java/Python) → Robot Framework / Playwright
- Cypress → Playwright
- Jest → Vitest
- Postman Collections → Robot Framework / Karate
- **Any QA Framework → Any QA Framework**

## Agents in This Category

- **[Orchestrator](karate-to-robot/orchestrator/agent-prompt.md)** - Coordinates multi-phase migration workflow + auto-partitions history
- **[Migration Core](karate-to-robot/core/agent-prompt.md)** - Converts tests and syntax (framework-agnostic)
- **[Dependency Mapper](karate-to-robot/dependency-mapper/agent-prompt.md)** - Translates dependencies between package managers
- **[Environment Config](karate-to-robot/environment-config/agent-prompt.md)** - Converts environment configurations
- **[API Endpoint Mapper](karate-to-robot/api-mapper/agent-prompt.md)** - Catalogs and documents APIs
- **[Keyword Designer](karate-to-robot/keyword-designer/agent-prompt.md)** - Creates reusable keyword libraries
- **[Assertion Converter](karate-to-robot/assertion-converter/agent-prompt.md)** - Translates assertion styles

## When to Load These Agents

```
#file .github/agents/migration/karate-to-robot/orchestrator/agent-prompt.md
#file .github/agents/migration/karate-to-robot/core/agent-prompt.md
#file .github/agents/migration/karate-to-robot/dependency-mapper/agent-prompt.md
#file .github/agents/migration/karate-to-robot/environment-config/agent-prompt.md
#file .github/agents/migration/karate-to-robot/api-mapper/agent-prompt.md
#file .github/agents/migration/karate-to-robot/keyword-designer/agent-prompt.md
#file .github/agents/migration/karate-to-robot/assertion-converter/agent-prompt.md
```

**Tip:** The Orchestrator manages the workflow and coordinates other agents. Start with it for large migrations. For individual file conversions, use specific agents (Core, Assertion Converter, etc.). See individual `agent-prompt.md` files for detailed conversion rules.
