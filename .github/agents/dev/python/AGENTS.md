# 🐍 Python Development Agents (4)

**Status**: ✅ v2.1 - Em Desenvolvimento  
**Localização**: `.github/agents/dev/python/`  
**Linguagem**: Python (3.9+, FastAPI, Django, Async/Await)  
**Auto-Activation**: `python`, `refactor`, `refatorar`, `django`, `fastapi`, `async`

---

## 📋 Agents Disponíveis

### 1. Python Code Generator (Code Gen)
**Arquivo**: `code-generator/agent-prompt.md`

**Responsabilidades**:
- Gerar funções, classes, APIs REST seguindo best practices Python
- Implementar patterns: Repository, Factory, Strategy, Observer
- Criar código async/await para I/O operations
- Integração com FastAPI, Django, SQLAlchemy
- Type hints completos (PEP 484)
- Docstrings em formato Google/NumPy

**Triggers**: `"criar função", "implementar classe", "gerar api", "criar endpoint"`

**Output**: 
- Python module com código production-ready
- Unit tests (pytest)
- Type checking (mypy compatible)

---

### 2. Python Refactoring Specialist (Refactor)
**Arquivo**: `refactoring-specialist/agent-prompt.md`

**Responsabilidades**:
- Refatorar código Python para seguir PEP 8, PEP 20 (Zen of Python)
- Converter callbacks para async/await
- Melhorar performance (list comprehensions, generators, etc)
- Extrair funções, reduzir complexidade ciclomática
- Aplicar design patterns apropriados
- Otimizar imports e estrutura

**Triggers**: `"refatorar", "melhorar código", "otimizar", "simplificar"`

**Output**:
- Código refatorado
- Notas de mudanças (o que mudou e por quê)
- Before/after comparison

---

### 3. Python Migration Specialist (Migrate)
**Arquivo**: `migration-specialist/agent-prompt.md`

**Responsabilidades**:
- Migrar entre versões Python (3.9 → 3.10+, 3.11, 3.12)
- Converter código sync para async
- Migrar frameworks (Flask → FastAPI, Django 3 → 4+)
- Atualizar dependencies e quebra de compatibilidade
- Migrar de requirements.txt para pyproject.toml
- Converter testes (unittest → pytest)

**Triggers**: `"migrar python", "atualizar versão", "converter para async", "upgrade framework"`

**Output**:
- Código migrado
- Updated requirements/dependencies
- Migration guide com breaking changes

---

### 4. Python Linter & Type Checker (Quality)
**Arquivo**: `linter-type-checker/agent-prompt.md`

**Responsabilidades**:
- Executar linting (pylint, flake8, black)
- Type checking (mypy, pyright)
- Segurança (bandit, safety)
- Cobertura de testes (pytest-cov)
- Docstrings validation
- Import sorting (isort)

**Triggers**: `"validar", "type check", "segurança", "qualidade", "linting"`

**Output**:
- Report com erros/warnings
- Auto-fix suggestions (quando aplicável)
- Recommendations para melhorias

---

## 🚀 Como Usar

### Exemplo 1: Gerar Função Async

```
User: "Criar função async que busca dados de uma API e cachea resultado por 1 hora"

Agent: "Vou criar uma função async com cache ttl...

```python
from functools import lru_cache
from datetime import datetime, timedelta

class APIClient:
    def __init__(self):
        self.cache = {}
        self.cache_ttl = {}
    
    async def fetch_data(self, endpoint: str) -> dict:
        \"\"\"Busca dados da API com cache TTL de 1 hora.
        
        Args:
            endpoint: Caminho do endpoint
            
        Returns:
            Dados da API em formato dict
            
        Raises:
            HTTPException: Se falhar requisição
        \"\"\"
        # Check cache
        if endpoint in self.cache:
            if datetime.now() < self.cache_ttl.get(endpoint, datetime.min):
                return self.cache[endpoint]
        
        # Fetch new data
        async with aiohttp.ClientSession() as session:
            async with session.get(f"https://api.example.com/{endpoint}") as resp:
                data = await resp.json()
                
        # Update cache
        self.cache[endpoint] = data
        self.cache_ttl[endpoint] = datetime.now() + timedelta(hours=1)
        
        return data
```

✓ Type hints completos
✓ Async/await
✓ Caching com TTL
✓ Docstring Google style
✓ Error handling"
```

### Exemplo 2: Refatorar Código Síncrono

```
User: "Refatorar este código para ser async"

Agent: [converte callbacks para async/await, otimiza performance]
```

### Exemplo 3: Validar Qualidade

```
User: "Validar qualidade deste módulo"

Agent: [roda linting, type check, segurança, retorna relatório]
```

---

## 📊 Recursos

- **Python Versions**: 3.9, 3.10, 3.11, 3.12+
- **Popular Frameworks**: FastAPI, Django, Flask, Starlette
- **Async**: asyncio, aiohttp, ASGI
- **Testing**: pytest, pytest-asyncio, pytest-cov
- **Type Checking**: mypy, pyright
- **Linting**: pylint, flake8, black, isort
- **Security**: bandit, safety

---

## 🔗 Categoria Parent

- **Category**: `dev/`
- **Group**: Development Agents
- **Auto-Triggers**: `python`, `refactor`, `async`

---

**Versão**: 2.1  
**Status**: Production Ready (v2.1)  
**Última Atualização**: 29/01/2026
