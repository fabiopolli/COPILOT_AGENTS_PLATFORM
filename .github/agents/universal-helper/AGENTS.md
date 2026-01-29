# QA Helper Agent (System Core)

**Context:** Always active - detects user intent and loads appropriate specialized agents.

## Agent in This Category

- **[QA Helper](agent-prompt.md)** - Intent detection, agent recommendation, workflow routing

## System Role

This agent is **permanently active** via `copilot-instructions.md` and acts as the system's traffic controller:

1. Detects keywords in user requests
2. Loads appropriate specialized agents automatically
3. Provides context-aware assistance
4. Avoids loading heavy agents for simple queries

**DO NOT load this agent manually** - it's already in your context.

## Covered Workflows

- 🔄 Migration detection → Loads migration agents
- 🤖 Template generation → Loads framework specialists
- 👁️ Code review → Loads review agents suite
- 🧪 Test strategy → Loads strategy agents
- 📖 Documentation → Loads doc generator

**See:** `.github/copilot-instructions.md` for complete detection rules.
