# 📁 Examples Folder

## Purpose
The **`examples/`** folder is where you place **projects you want the agents to analyze or modify**.

This folder serves as a **staging area** for your work:
- 📂 Copy your test project here
- 🎯 Select it as context in the Copilot chat
- 🤖 Let agents analyze, migrate, or improve your code

## How to Use

### Step 1: Prepare Your Project
```bash
# Copy your project to examples/
cp -r ~/my-karate-project examples/Karate_Example
# or
cp -r ~/my-robot-project examples/Robot_Example
```

### Step 2: Reference in Chat
```
"Migrate the Karate tests in examples/Karate_Example to Robot Framework"

or with context:

"Analyze examples/Selenium_Tests for security issues"
#Folder examples/Selenium_Tests
```

### Step 3: Agents Process & Generate
- Agents read from `examples/`
- Create output in the project folder
- Generate documentation and migration reports

---

## Project Structure

```
examples/
├── README.md                          # This file
├── Karate_Example/                    # Your Karate project
│   ├── src/
│   ├── test/features/
│   ├── pom.xml
│   └── karate-config.js
├── Robot_Example/                     # Your Robot project
│   ├── tests/
│   ├── resources/
│   └── requirements.txt
├── Selenium_Tests/                    # Your Selenium tests
│   ├── tests/
│   ├── pages/
│   └── requirements.txt
└── Your_API_Project/                  # Any project for analysis/review
    └── [your structure]
```

---

## Supported Project Types

### QA/Testing Projects
- ✅ **Karate DSL** - BDD API testing (`*.feature` files)
- ✅ **Robot Framework** - Test automation (`.robot` files)
- ✅ **Selenium** - Web automation (Java/Python)
- ✅ **Cypress** - JavaScript E2E testing
- ✅ **Playwright** - Modern web testing
- ✅ **Jest** - JavaScript testing
- ✅ **Postman Collections** - API testing exports
- ✅ **REST API projects** - Any project with API tests

### Development Projects
- ✅ **Python projects** - Code analysis, refactoring
- ✅ **JavaScript/TypeScript** - Code review, migration
- ✅ **Java projects** - Analysis, modernization

---

## Common Examples

### Migration Example: Karate → Robot
```
examples/karate-score-tests/
├── src/test/java/
├── src/test/resources/features/
├── karate-config.js
└── pom.xml
```

**In Chat:**
```
"Migrate the entire project in examples/karate-score-tests/ from Karate DSL to Robot Framework"

#Folder examples/karate-score-tests
```

### Code Review Example
```
examples/my-selenium-tests/
├── tests/
│   ├── test_login.py
│   ├── test_checkout.py
│   └── test_payments.py
├── pages/
│   └── login_page.py
└── requirements.txt
```

**In Chat:**
```
"Review examples/my-selenium-tests/ for security vulnerabilities and performance issues"

#Folder examples/my-selenium-tests
```

### Template Generation Example
```
# No folder needed - just ask!
"Generate a complete Robot Framework project structure for API testing in examples/"
```

---

## Best Practices

### 1. Keep Examples Clean
- ✅ Include `README.md` with each example explaining what it is
- ✅ Use meaningful folder names (e.g., `karate-score-tests`, not `my-project`)
- ✅ Include necessary config files (pom.xml, requirements.txt, etc.)
- ❌ Don't include large artifacts (target/, node_modules/, __pycache__/)

### 2. Provide Context
When referencing in chat:
```
# Good - clear context
"Migrate examples/karate-score-api/ to Robot Framework.
This is a financial scoring API with 65 feature files and complex fixtures"

# Less helpful - vague
"Migrate the project in examples/"
```

### 3. Structure Matters
```
# Good structure - agents can understand better
examples/score-karate/
├── README.md
├── pom.xml
├── karate-config.js
└── src/test/resources/features/
    ├── auth/
    ├── scoring/
    └── payment/

# Confusing - agents need to search
examples/score-karate/
├── [many loose files]
└── no clear structure
```

### 4. Use `#Folder` in Chat
```
"Analyze #Folder examples/my-tests for issues"
```

This tells Copilot to include the entire folder as context, helping agents understand the project structure.

---

## Tips

### Creating Fresh Examples
```bash
# For testing agents locally
mkdir examples/fresh-project
cd examples/fresh-project

# Ask Copilot to generate
"Create a complete Robot Framework template for API testing in examples/fresh-project/"
```

### Temporary Analysis
```bash
# Copy a project, analyze it, then optionally delete
cp -r ~/Downloads/client-tests examples/temp-analysis
# [run agents]
# rm -rf examples/temp-analysis
```

### Backup Working Version
```bash
# Before migration, keep a copy
cp -r examples/karate-project examples/karate-project-backup
# [run migration agents]
# Compare results between backup and migrated version
```

---

## Storage Guidelines

| Scenario | Location | Notes |
|----------|----------|-------|
| **Testing new agents** | `examples/test-project/` | Safe playground, can delete after |
| **Migration projects** | `examples/karate-to-robot/` | Keep original, have agents create output |
| **Code review samples** | `examples/review-sample/` | Extract key files only |
| **Template references** | `examples/robot-api-template/` | Keep generated templates as reference |

---

## Workflow Example

### Step 1: Copy Project
```bash
cp -r ~/my-karate-tests examples/karate-migration-test
cd examples/karate-migration-test
# Verify structure
ls -la
```

### Step 2: Chat with Copilot
```
"I want to migrate this Karate project to Robot Framework.

Here's the project:
#Folder examples/karate-migration-test

Analysis:
- ~50 API tests
- Multiple environments (dev, staging, prod)
- Custom fixtures and helpers
- Maven-based

Can you analyze it first and tell me what we'll need to do?"
```

### Step 3: Review Analysis
Agent (Universal Helper) responds with:
```
"Analyzing project...

✅ Found:
- 50 .feature files
- 3 environment configs
- Custom Java fixtures
- Maven dependencies

📋 Migration Plan:
1. Dependency mapping (Maven → pip)
2. Environment config conversion
3. Fixture conversion to Python
4. Feature → Robot conversion

Start with step 1?"
```

### Step 4: Execute Migration
```
"Yes, proceed with step 1. Map the dependencies and create requirements.txt"
```

### Step 5: Review & Iterate
Agents generate files, you review in `examples/karate-migration-test/`, ask for adjustments, continue.

---

## Integration with Agents

### Which Agents Use This Folder?

- ✅ **Universal Helper** - Detects project type and suggests agents
- ✅ **Migration Agents** - Convert between frameworks
- ✅ **Code Review Agents** - Analyze code quality and security
- ✅ **Frameworks** - Generate templates in this folder
- ✅ **DevOps** - Setup CI/CD for projects here
- ✅ **Scaffold** - Create project structures

---

## Cleanup

### Remove Temporary Examples
```bash
# After testing/analysis
rm -rf examples/temp-*
rm -rf examples/*-backup
```

### Keep Useful References
```bash
# Preserve working templates
# Keep successful migrations as reference
# Document interesting use cases
```

---

## Questions?

See `docs/EXEMPLOS_USO_CHAT.md` for detailed chat examples.

See `README.md` root for full project documentation.

---

**Version**: 1.0  
**Last Updated**: January 29, 2026  
**Folder Purpose**: Staging area for project analysis and modification by agents
