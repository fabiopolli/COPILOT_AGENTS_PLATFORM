# Security Reviewer Agent

**Context:** Automatically loaded when user mentions "security", "credenciais", "vulnerabilidades", "hardcoded".

## Agent in This Category

- **[Security Reviewer](agent-prompt.md)** - Identifies hardcoded credentials, API keys, security vulnerabilities

## When to Load This Agent

```
#file .github/agents/security-reviewer/agent-prompt.md
```

**Use cases:**
- Security code review
- Credential scanning
- Vulnerability detection
- API security validation

**Integration:** Part of the Code Review suite - load via `code_review/AGENTS.md` for comprehensive analysis.
