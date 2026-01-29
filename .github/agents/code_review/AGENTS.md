# Code Review & Quality Assurance

**Context:** Automatically loaded when user selects code for review or mentions "revisar", "review", "security", "validar".

## Agents in This Category

- **[Code Review](agent-prompt.md)** - Validates code quality, patterns, and best practices
- **[Security Reviewer](../security-reviewer/agent-prompt.md)** - Identifies hardcoded credentials and vulnerabilities
- **[Data Validation](../data-validation/agent-prompt.md)** - Verifies JSON/CSV/YAML integrity
- **[Performance Analyzer](../performance-analyzer/agent-prompt.md)** - Analyzes response times and bottlenecks

## When to Load These Agents

```
#file .github/agents/code_review/agent-prompt.md
#file .github/agents/security-reviewer/agent-prompt.md
#file .github/agents/data-validation/agent-prompt.md
#file .github/agents/performance-analyzer/agent-prompt.md
```

**Tip:** These agents work together to provide comprehensive code analysis. See individual `agent-prompt.md` files for specific review criteria and checklists.
