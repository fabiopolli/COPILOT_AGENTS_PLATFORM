# Quick Start Example

This folder is empty by default. Here's how to use it:

## Option 1: Copy Your Existing Project

```bash
# Copy your project
cp -r ~/my-karate-tests examples/karate-example

# OR for Robot Framework
cp -r ~/my-robot-tests examples/robot-example

# OR for Selenium
cp -r ~/my-selenium-suite examples/selenium-example
```

## Option 2: Generate a Template

In Copilot chat:
```
"Generate a complete Robot Framework template for API testing in examples/robot-template/"
```

## Option 3: Use as Staging Area

```bash
# Work on a copy before migrating
cp -r ~/source-project examples/work-in-progress

# In Copilot: analyze and work on examples/work-in-progress
# Once done, compare with original or copy back to source
```

---

## Common Setups

### Testing Migration (Karate → Robot)
```
examples/
└── karate-score-api/
    ├── README.md
    ├── pom.xml
    ├── karate-config.js
    └── src/test/resources/features/
        ├── auth.feature
        ├── scoring.feature
        └── payment.feature
```

### Code Review
```
examples/
└── selenium-tests/
    ├── requirements.txt
    ├── tests/
    │   ├── test_login.py
    │   └── test_checkout.py
    └── pages/
        └── login_page.py
```

### Fresh Template
```
examples/
└── robot-api-template/
    ├── config/
    ├── resources/
    ├── tests/
    └── requirements.txt
```

---

**See `examples/README.md` for complete documentation.**
