# DevOps & CI/CD Helper Agents

## Overview
Agents for automating DevOps tasks, CI/CD pipeline configuration, testing automation, and deployment workflows.

## 🚀 When to Load These Agents

### Detection Keywords
- **Explicit**: "ci/cd", "pipeline", "github actions", "gitlab ci", "jenkins", "deploy", "validation", "workflow"
- **Implicit**: "How to validate code?", "Automate testing", "Setup deploy", "GitHub action"
- **Context Clues**: `.yml` files in `.github/workflows/`, `Jenkinsfile`, `.gitlab-ci.yml`, `terraform/` files

### Suggested Load Command
```
#file .github/agents/devops-helper/AGENTS.md
```

---

## 📦 Available Agents (3 - Planned: +5)

### ✅ CI/CD Validator
- **Purpose**: Generates GitHub Actions, GitLab CI, Jenkins pipelines with validation rules
- **Handles**: 
  - `.github/workflows/validate.yml` - Link validation, Markdown linting, JSON validation
  - `.github/workflows/test.yml` - Test execution and reporting
  - `.github/workflows/deploy.yml` - Deployment automation
- **Skills**: Linting, code validation, test execution, artifact management
- **Load**: Automatically when user mentions "pipeline", "validate", "workflow"
- **Prompt**: [ci-cd-validator/agent-prompt.md](./ci-cd-validator/agent-prompt.md)

### ✅ Issue Template Designer
- **Purpose**: Creates GitHub Issue templates and Pull Request templates
- **Handles**:
  - `.github/ISSUE_TEMPLATE/bug_report.md` - Bug report structure
  - `.github/ISSUE_TEMPLATE/feature_request.md` - Feature request structure
  - `.github/PULL_REQUEST_TEMPLATE.md` - PR checklist and guidelines
- **Skills**: Template design, checkklist creation, automation
- **Load**: Automatically when user mentions "issue", "template", "bug report"
- **Prompt**: [issue-template-designer/agent-prompt.md](./issue-template-designer/agent-prompt.md)

### ✅ Repository Setup Assistant
- **Purpose**: Configures `.editorconfig`, `.pre-commit-config.yaml`, and other repo configs
- **Handles**:
  - `.editorconfig` - Editor standardization
  - `.pre-commit-config.yaml` - Pre-commit hooks
  - `.github/dependabot.yml` - Dependency updates
  - `.gitignore` - Git ignore rules (enhanced)
- **Skills**: Configuration, standardization, automation
- **Load**: Automatically when user mentions "setup", "config", "standardize"
- **Prompt**: [repo-setup-assistant/agent-prompt.md](./repo-setup-assistant/agent-prompt.md)

### 🚧 Docker & Container Helper (Planned)
- Multi-stage builds, Docker Compose, optimization

### 🚧 Infrastructure as Code (Planned)
- Terraform, Bicep configuration generators

### 🚧 Monitoring & Logging Helper (Planned)
- Prometheus, ELK stack, application insights

### 🚧 Security Scanning (Planned)
- SAST, DAST, container scanning

### 🚧 Release Automation (Planned)
- Semantic versioning, changelog generation, release notes

---

## Usage Examples

### Create GitHub Actions Pipeline
```
"Create a GitHub Actions pipeline that validates links and markdown"
→ DevOps Helper detects "pipeline" + "validate"
→ Loads CI/CD Validator agent
→ Generates: `.github/workflows/validate.yml`
```

### Setup Issue Templates
```
"Generate bug report and feature request templates"
→ DevOps Helper detects "template" + "issue"
→ Loads Issue Template Designer agent
→ Generates:
   - `.github/ISSUE_TEMPLATE/bug_report.md`
   - `.github/ISSUE_TEMPLATE/feature_request.md`
   - `.github/PULL_REQUEST_TEMPLATE.md`
```

### Standardize Repository
```
"Setup .editorconfig and pre-commit hooks"
→ DevOps Helper detects "config" + "setup"
→ Loads Repository Setup Assistant
→ Generates: `.editorconfig`, `.pre-commit-config.yaml`
```

---

## Integration with Main Helpers

### Universal Helper (Always Active)
- Detects DevOps intent → Auto-suggests loading this agent group
- Example: User says "setup validation" → Automatic detection

### Other Agent Groups
- **migration/AGENTS.md** - Can use DevOps agents for CI/CD in migrated projects
- **frameworks/AGENTS.md** - Can use DevOps agents for project scaffolding
- **code_review/AGENTS.md** - Can suggest DevOps validation as part of review

---

## Architecture Pattern

Each agent follows this structure:
```
devops-helper/
├── AGENTS.md                           # This file
├── ci-cd-validator/
│   ├── agent-prompt.md                # Agent instructions
│   └── templates/
│       ├── github-actions-validate.yml
│       ├── github-actions-test.yml
│       └── github-actions-deploy.yml
├── issue-template-designer/
│   ├── agent-prompt.md
│   └── templates/
│       ├── bug_report.md
│       ├── feature_request.md
│       └── pull_request.md
└── repo-setup-assistant/
    ├── agent-prompt.md
    └── templates/
        ├── .editorconfig
        ├── .pre-commit-config.yaml
        └── .gitignore
```

---

## Configuration

In `.vscode/settings.json`:
```json
{
  "github.copilot.chat.codeGeneration.instructions": [
    {
      "file": ".github/agents/devops-helper/AGENTS.md",
      "description": "🚀 DevOps & CI/CD Automation - auto-loaded by Universal Helper"
    }
  ]
}
```

**Activated automatically** by Universal Helper when DevOps keywords detected.

---

## Quick Reference

| Agent | Best For | Keywords |
|-------|----------|----------|
| **CI/CD Validator** | Pipeline setup | "validate", "github actions", "workflow", "ci/cd" |
| **Issue Template Designer** | GitHub management | "template", "issue", "bug report", "pull request" |
| **Repository Setup** | Standardization | "setup", "config", "editorconfig", "pre-commit" |

---

## Related Documentation
- `.github/docs/ROADMAP_AGENTS_EXPANSION.md` - Planned DevOps features
- `.github/agents/frameworks/AGENTS.md` - Uses DevOps agents for scaffolding
- `.github/agents/code_review/AGENTS.md` - Uses validation pipeline

**Version**: 1.0 (Active)  
**Status**: 3/8 agents implemented, 5 planned  
**Last Updated**: January 2026
