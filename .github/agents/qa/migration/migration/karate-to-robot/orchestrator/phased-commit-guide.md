# Guia de Commits Faseados - Migração Karate → Robot Framework

## 🎯 Objetivo

Este guia garante que **cada lote de cenários migrados seja commitado individualmente**, mantendo um histórico limpo e rastreável da migração.

---

## ⚠️ REGRA CRÍTICA

**NUNCA migre um novo lote sem antes commitar o lote anterior!**

Cada lote deve ter:
1. ✅ Testes migrados e salvos
2. ✅ SUMMARY.md atualizado
3. ✅ Script de commit gerado
4. ✅ Commit executado (ou agendado)
5. ✅ Confirmação do usuário

---

## 📋 Checklist por Lote (Execute SEMPRE)

### 1. Após Migrar Cenários

```markdown
✓ Arquivos .robot criados e salvos
✓ Keywords utilizadas existem
✓ Validações implementadas
✓ Tags aplicadas
✓ Testes executáveis (sintaxe válida)
```

### 2. Atualizar Documentação

#### SUMMARY.md
Adicione ao final da seção correspondente:

```markdown
#### Lote X - [Nome do Domínio] (N cenários)
| ID | Descrição | Status Esperado | Status |
|----|-----------|-----------------|--------|
| CTxxxx | [Descrição do teste] | 200 | ✅ Migrado |
| CTxxxx | [Descrição do teste] | 422 | ✅ Migrado |
...

**Arquivos Criados/Atualizados** (Lote X):
- `nome_arquivo.robot` (N cenários)
- `outro_arquivo.robot` (M cenários)
```

Atualize também:
```markdown
**Última atualização**: DD/MM/YYYY
**Lotes completos**: X de ~Y
**Cenários migrados**: N de M
**Progresso**: Z%
**Cenários restantes**: R
```

#### MIGRATION_LOG.md (se existir)
Adicione entrada do lote:
```markdown
### Lote X - DD/MM/YYYY

**Objetivo**: [Descrever objetivo do lote]

**Cenários Migrados**: N
- CTxxxx: [Descrição]
- CTxxxx: [Descrição]

**Arquivos Criados**:
- `tests/robot/[path]/arquivo.robot`

**Decisões Técnicas**:
- [Qualquer decisão importante tomada]

**Problemas Encontrados**:
- [Se houver]

**Status**: ✅ Completo
```

### 3. Gerar Script de Commit

**Nome**: `commit-migration-lote-X.ps1` (Windows) ou `commit-migration-lote-X.sh` (Linux)

**Template PowerShell**:

```powershell
# Commit Lote X - [Domínio] Migration
# Data: DD/MM/YYYY
# Cenários: N scenarios

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Lote X - Commit Migration" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Navegar para o diretório (ajustar caminho conforme necessário)
cd C:\path\to\project

# Adicionar arquivos do lote
Write-Host "[Lote X] Adicionando arquivos..." -ForegroundColor Yellow

git add tests/robot/produto/[domain]/arquivo1.robot
git add tests/robot/produto/[domain]/arquivo2.robot
# ... adicionar todos os arquivos do lote

git add tests/robot/SUMMARY.md
git add tests/robot/MIGRATION_LOG.md

# Verificar status
Write-Host ""
Write-Host "Arquivos adicionados:" -ForegroundColor Green
git status --short

# Criar commit
Write-Host ""
Write-Host "[Lote X] Criando commit..." -ForegroundColor Yellow

$commitMsg = @"
feat(migration): Lote X - N cenários [Domínio]

- arquivo1.robot: CTxxxx-CTxxxx - Descrição breve
- arquivo2.robot: CTxxxx-CTxxxx - Descrição breve
- Updated SUMMARY.md: Progresso Y/Z (W%)
- Updated MIGRATION_LOG.md: Lote X detalhes

Domínios: [Auth/Score/Cadastral/etc]
Total migrado: Y cenários (W%)
Restante: R cenários
"@

git commit -m $commitMsg

Write-Host ""
Write-Host "✓ Commit criado com sucesso!" -ForegroundColor Green
Write-Host ""

# Mostrar commit
git log --oneline -1
Write-Host ""

# Perguntar sobre push
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Fazer PUSH para o repositório remoto?" -ForegroundColor Yellow
Write-Host "Digite 'S' para fazer push, 'N' para pular:" -ForegroundColor Yellow
$response = Read-Host

if ($response -eq 'S' -or $response -eq 's') {
    Write-Host ""
    Write-Host "Fazendo push..." -ForegroundColor Magenta
    git push origin main
    Write-Host ""
    Write-Host "✓ Push concluído!" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "Push cancelado. Execute manualmente:" -ForegroundColor Yellow
    Write-Host "  git push origin main" -ForegroundColor White
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Lote X - Commit Completo!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
```

**Template Bash** (para Linux/Mac):

```bash
#!/bin/bash
# Commit Lote X - [Domínio] Migration
# Data: DD/MM/YYYY
# Cenários: N scenarios

echo "========================================"
echo "  Lote X - Commit Migration"
echo "========================================"
echo ""

# Navegar para o diretório
cd /path/to/project

# Adicionar arquivos do lote
echo "[Lote X] Adicionando arquivos..."

git add tests/robot/produto/[domain]/arquivo1.robot
git add tests/robot/produto/[domain]/arquivo2.robot
git add tests/robot/SUMMARY.md
git add tests/robot/MIGRATION_LOG.md

# Verificar status
echo ""
echo "Arquivos adicionados:"
git status --short

# Criar commit
echo ""
echo "[Lote X] Criando commit..."

git commit -m "feat(migration): Lote X - N cenários [Domínio]

- arquivo1.robot: CTxxxx-CTxxxx - Descrição
- arquivo2.robot: CTxxxx-CTxxxx - Descrição
- Updated SUMMARY.md: Progresso Y/Z (W%)

Total migrado: Y cenários (W%)
Restante: R cenários"

echo ""
echo "✓ Commit criado com sucesso!"
echo ""

git log --oneline -1

# Perguntar sobre push
echo ""
echo "========================================"
echo "Fazer PUSH para o repositório remoto? (S/N):"
read -r response

if [ "$response" = "S" ] || [ "$response" = "s" ]; then
    echo ""
    echo "Fazendo push..."
    git push origin main
    echo ""
    echo "✓ Push concluído!"
else
    echo ""
    echo "Push cancelado. Execute manualmente:"
    echo "  git push origin main"
fi

echo ""
echo "========================================"
echo "  Lote X - Commit Completo!"
echo "========================================"
```

### 4. Validar Antes do Commit

Executar checklist:

```bash
# Verificar arquivos adicionados
git status

# Verificar diff
git diff --cached

# Verificar se SUMMARY.md foi atualizado
git diff tests/robot/SUMMARY.md

# Verificar se não há arquivos não rastreados importantes
git status --untracked-files=all
```

### 5. Executar Commit

Opções:

**A) Via Script:**
```powershell
# PowerShell
.\commit-migration-lote-X.ps1

# Bash
chmod +x commit-migration-lote-X.sh
./commit-migration-lote-X.sh
```

**B) Manual:**
```bash
# Adicionar arquivos
git add tests/robot/produto/domain/*.robot
git add tests/robot/SUMMARY.md
git add tests/robot/MIGRATION_LOG.md

# Commitar
git commit -m "feat(migration): Lote X - N cenários [Domínio]"

# Push
git push origin main
```

### 6. Confirmar Sucesso

```bash
# Verificar último commit
git log --oneline -1

# Verificar se está no remoto
git log origin/main --oneline -1

# Status limpo
git status
```

---

## 🔄 Fluxo Completo por Lote

```
┌─────────────────────────────────────────┐
│ 1. Migrar N cenários do Karate         │
│    - Criar arquivos .robot              │
│    - Implementar keywords               │
│    - Aplicar validações                 │
└────────────┬────────────────────────────┘
             │
             ▼
┌─────────────────────────────────────────┐
│ 2. Atualizar Documentação               │
│    - SUMMARY.md (progresso)             │
│    - MIGRATION_LOG.md (detalhes)        │
└────────────┬────────────────────────────┘
             │
             ▼
┌─────────────────────────────────────────┐
│ 3. Gerar Script de Commit               │
│    - commit-migration-lote-X.ps1        │
│    - Incluir todos os arquivos          │
│    - Mensagem descritiva                │
└────────────┬────────────────────────────┘
             │
             ▼
┌─────────────────────────────────────────┐
│ 4. Validar Arquivos                     │
│    - git status                         │
│    - git diff --cached                  │
│    - Revisar SUMMARY.md                 │
└────────────┬────────────────────────────┘
             │
             ▼
┌─────────────────────────────────────────┐
│ 5. Executar Commit                      │
│    - Via script ou manual               │
│    - Push para remoto                   │
└────────────┬────────────────────────────┘
             │
             ▼
┌─────────────────────────────────────────┐
│ 6. Confirmar Sucesso                    │
│    - Verificar log                      │
│    - Status limpo                       │
└────────────┬────────────────────────────┘
             │
             ▼
┌─────────────────────────────────────────┐
│ 7. Continuar Próximo Lote               │
│    ⚠️  SÓ APÓS COMMIT DO LOTE ATUAL     │
└─────────────────────────────────────────┘
```

---

## 📝 Exemplo Prático - Lote 4

### Contexto
- **Lote**: 4
- **Cenários**: 30
- **Domínio**: Autenticação + Acesso a Dados
- **Arquivos**: 6 arquivos .robot

### 1. Arquivos Migrados
```
✓ auth_online_modelo_nao_autorizado.robot (3 cenários)
✓ auth_online_produto_versao.robot (2 cenários)
✓ auth_online_doc_nao_disponivel.robot (2 cenários)
✓ auth_online_acesso_restricoes.robot (8 cenários)
✓ score_consultar_score.robot (8 cenários - novo)
✓ score_consultar_valor.robot (7 cenários - novo)
```

### 2. SUMMARY.md Atualizado

```markdown
**Última atualização**: 26/11/2025
**Lotes completos**: 4 de ~11
**Cenários migrados**: 60 de 535
**Progresso**: 11.2%
**Cenários restantes**: 475

#### Lote 4 - Autenticação/Autorização + Acesso a Dados (30 cenários)
[... tabela com 30 cenários ...]
```

### 3. Script Gerado

Arquivo: `commit-migration-lote-4.ps1`

```powershell
# [Conteúdo do template acima preenchido com dados do Lote 4]

$commitMsg = @"
feat(migration): Lote 4 - 30 cenários auth + acesso dados

- auth_online_modelo_nao_autorizado.robot: CT0011-CT0013
- auth_online_produto_versao.robot: CT0009, CT0580
- auth_online_doc_nao_disponivel.robot: CT0587, CT0594
- auth_online_acesso_restricoes.robot: CT0006-CT0008, CT0031, CT0578-CT0579, CT0640
- score_consultar_score.robot: CT0052-CT0060 (Score PF/PJ ranges)
- score_consultar_valor.robot: CT0062-CT0066 (Renda PF ranges)
- Updated SUMMARY.md: Progresso 60/535 (11.2%)

Domínios: Auth, Score
Total migrado: 60 cenários (11.2%)
Restante: 475 cenários
"@
```

### 4. Execução

```powershell
PS> .\commit-migration-lote-4.ps1

========================================
  Lote 4 - Commit Migration
========================================

[Lote 4] Adicionando arquivos...

Arquivos adicionados:
M  tests/robot/SUMMARY.md
M  tests/robot/MIGRATION_LOG.md
A  tests/robot/produto/autenticacao_autorizacao/auth_online_modelo_nao_autorizado.robot
...

[Lote 4] Criando commit...

✓ Commit criado com sucesso!

b128935 feat(migration): Lote 4 - 30 cenários auth + acesso dados

========================================
Fazer PUSH para o repositório remoto?
Digite 'S' para fazer push, 'N' para pular:
> S

Fazendo push...
✓ Push concluído!

========================================
  Lote 4 - Commit Completo!
========================================
```

---

## 🚨 Tratamento de Erros

### Erro: "nothing to commit"

**Causa**: Nenhum arquivo foi modificado ou adicionado.

**Solução**:
```bash
# Verificar status
git status

# Se arquivos estão no working directory mas não staged:
git add tests/robot/SUMMARY.md
git add tests/robot/produto/domain/*.robot

# Tentar commit novamente
```

### Erro: "remote rejected"

**Causa**: Branch protegida ou conflito no remoto.

**Solução**:
```bash
# Fazer pull primeiro
git pull --rebase origin main

# Resolver conflitos se houver
# Depois tentar push novamente
git push origin main
```

### Erro: SUMMARY.md não atualizado

**Causa**: Esqueceu de atualizar documentação.

**Solução**:
```bash
# Editar SUMMARY.md manualmente
# Adicionar ao commit anterior
git add tests/robot/SUMMARY.md
git commit --amend --no-edit

# Se já fez push, fazer novo commit
git add tests/robot/SUMMARY.md
git commit -m "docs: atualizar SUMMARY.md com Lote X"
git push origin main
```

---

## 📊 Boas Práticas

### 1. Tamanho do Lote
- ✅ **Recomendado**: 30-50 cenários
- ⚠️ **Evitar**: Lotes muito grandes (>100)
- ❌ **Nunca**: Múltiplos lotes em um único commit

### 2. Mensagem de Commit
- ✅ Descritiva e estruturada
- ✅ Inclui IDs dos casos de teste
- ✅ Indica progresso total
- ❌ Mensagens genéricas ("update tests")

### 3. Frequência
- ✅ Commit após cada lote completo
- ✅ Push pelo menos 1x por dia
- ⚠️ Se trabalhar offline, empilhar commits e fazer push ao final

### 4. Documentação
- ✅ SUMMARY.md sempre atualizado
- ✅ MIGRATION_LOG.md com detalhes
- ✅ Scripts de commit versionados
- ✅ README atualizado periodicamente

---

## 🎯 Checklist Rápido (Copie e Use)

```markdown
Lote X - Commit Checklist

□ Arquivos .robot criados e salvos
□ SUMMARY.md atualizado (progresso, tabela de cenários)
□ MIGRATION_LOG.md atualizado (detalhes do lote)
□ Script de commit gerado (commit-migration-lote-X.ps1)
□ Validação: git status (verificar arquivos)
□ Validação: git diff (revisar mudanças)
□ Commit executado (manual ou via script)
□ Push realizado (git push origin main)
□ Confirmação: git log (verificar último commit)
□ Status limpo: git status (nothing to commit)
□ Notificação ao usuário: "Lote X commitado com sucesso"

✅ Lote X commitado! Pode prosseguir para Lote X+1
```

---

## 🔗 Referências

- [SUMMARY.md](../../examples/score/tests/robot/SUMMARY.md) - Exemplo real
- [commit-migration.ps1](../../examples/score/commit-migration.ps1) - Script exemplo
- [git-commit-migration.ps1](../../examples/score/git-commit-migration.ps1) - Script completo
- [MIGRATION_LOG.md](../../examples/score/tests/robot/MIGRATION_LOG.md) - Log exemplo

---

**Lembrete Final**: 🚨 **Commits faseados são CRÍTICOS para rastreabilidade e recuperação. Nunca pule esta etapa!**
