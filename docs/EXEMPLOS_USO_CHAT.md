# Exemplos de Uso via Chat - Copilot Agents Platform v2.1

Este documento mostra exemplos práticos de como usar a plataforma via chat no VSCode/Copilot com a nova arquitetura v2.1 - uma plataforma multi-propósito para QA, desenvolvimento e DevOps.

## 🎯 O que Você Pode Fazer (v2.1)

### 🧪 QA-Focused (12 Agents)
1. **Migração de Testes** (ANY framework → ANY framework: Karate↔Robot, Selenium→Playwright, Jest→Vitest)
2. **Geração de Templates** (Robot, Karate)
3. **Análise de Testes** (Cobertura, Estratégia, Organização)
4. **Scaffold de Projetos** (Estruturas automáticas)

### 💻 Dev-Focused (17 Agents)
5. **Python Development** (Gen, Refactor, Migrate, Lint, Type Checking)
6. **Go Development** (Gen, Concurrency, Performance)
7. **.NET Development** (Gen, EF Core, ASP.NET Patterns)
8. **JS/TypeScript Development** (Gen, TypeScript, Performance)
9. **Java Development** (Gen, Spring Patterns)
10. **Generic Dev** (Architecture Analysis, Language Migration)

### 🔄 Shared (9 Agents)
11. **Revisão de Código** (Qualidade, Segurança, Data Validation, Performance)
12. **Setup de DevOps** (CI/CD, GitHub Actions, Issue Templates, Repo Setup)
13. **Documentação** (README, Guias, Relatórios, API Docs)

### 🏗️ Infrastructure (6 Agents)
14. **Terraform & Bicep** (IaC generation and refactoring)
15. **Kubernetes** (Manifests, Helm Charts)
16. **Cloud Deployment** (Azure, AWS)

### 🔐 Security (3 Agents)
17. **Secrets Management** (Key Vault, HashiCorp Vault)
18. **Compliance** (GDPR, SOC2, PCI-DSS)
19. **Vulnerability Scanning** (SAST, CVEs, Secrets Detection)

### 📍 System (2 Agents)
20. **Specification Agent** (PRD + Architecture para novo projeto)
21. **Universal Helper** (Detecta intenção + roteia automático)

## 📁 Antes de Começar: Use a Pasta `examples/`

**Importante:** Para que os agents possam analisar seus projetos, coloque-os em `examples/`

```
examples/
├── Karate_Project/          # Seu projeto Karate
├── Robot_Tests/             # Seus testes Robot
├── Selenium_Suite/          # Seus testes Selenium
└── [Seu Projeto]/           # Qualquer projeto para análise
```

**Por quê?** Facilita a seleção de contexto no chat e mantém o repositório organizado.

Leia `examples/README.md` para instruções completas.

---

## 📦 Caso de Uso 1: Migração Completa (ANY Framework)

### Exemplo 1.1: Migração Completa Padrão

```
Usuário: "Quero migrar meu projeto Karate para Robot Framework. 
Arquivos: #Folder examples/Projeto_Karate"

Universal Helper: "Detectei migração Karate → Robot Framework!

⚠️ CARREGANDO AGENTS DE MIGRAÇÃO AUTOMATICAMENTE:
#file .github/agents/migration/AGENTS.md

Analisando projeto..."

Orchestrator: "Analisando projeto...

Encontrado:
- 65 feature files
- 50 Java runners
- 1 pom.xml com dependências
- 1 karate-config.js com 3 ambientes (staging, preprod, prod)
- 5 endpoints principais identificados

Workflow padrão sugerido:
1. Dependency Mapper - Mapear dependências Java para Python
2. Environment Configuration - Converter configurações
3. API Endpoint Mapper - Catalogar endpoints
4. Keyword Library Designer - Criar keywords reutilizáveis
5. Test Strategy - Definir estratégia de testes
6. Migration - Converter testes
7. Assertion Converter - Converter assertions
8. Documentation - Gerar documentação

Deseja:
A) Executar workflow completo (todos os 8 agentes)
B) Customizar quais agentes executar
C) Executar um agente por vez
D) Pular alguns agentes

Sua escolha?"

Usuário: "A"

Orchestrator: "Perfeito! Iniciando migração completa...

=== FASE 1: Foundation Setup ===

Executando Agent 1: Dependency Mapper...
✓ Analisadas 15 dependências do pom.xml
✓ Mapeadas para equivalentes Python
✓ Gerado requirements.txt com 10 pacotes

Executando Agent 2: Environment Configuration...
✓ Parseado karate-config.js
✓ Identificados 3 ambientes
✓ Gerados 4 arquivos de configuração

CHECKPOINT 1: Foundation Setup Complete

Arquivos gerados:
- requirements.txt (10 pacotes Python)
- config/common.robot
- config/staging.robot
- config/preprod.robot
- config/prod.robot

Por favor, revise estes arquivos.

Continuar para Fase 2 (Architecture Design)?
Responda 'sim' para continuar, 'não' para parar, ou 'modificar' para ajustar."

Usuário: "sim"

Orchestrator: [continua com Fase 2...]
```

### Exemplo 1.2: Migração Customizada

```
Usuário: "Migre meu projeto, mas execute apenas os agentes essenciais"

Orchestrator: "Entendido. Agentes essenciais são:
- Agent 1: Dependency Mapper
- Agent 6: Migration
- Agent 8: Documentation

Isso irá:
✓ Mapear dependências
✓ Converter testes
✓ Gerar documentação básica

Mas NÃO irá:
✗ Criar keywords reutilizáveis
✗ Definir estratégia de testes
✗ Catalogar endpoints

Prosseguir com apenas estes 3 agentes?"

Usuário: "Sim, mas adicione o Keyword Library Designer também"

Orchestrator: "Perfeito! Workflow ajustado:
1. Dependency Mapper
2. Keyword Library Designer
3. Migration
4. Documentation

Iniciando..."
```

---

## Exemplo 3: Executar Agente Individual

```
Usuário: "Execute apenas o Migration agent"

Orchestrator: "Vou executar apenas o Migration agent.

Nota: Este agente funciona melhor se você já tiver:
- Keywords criadas (Agent 4: Keyword Library Designer)
- Configurações de ambiente (Agent 2: Environment Configuration)

Você tem estes arquivos? Se não, posso executar esses agentes primeiro."

Usuário: "Não tenho. Execute o que for necessário primeiro"

Orchestrator: "Entendido. Vou executar na ordem:
1. Environment Configuration (necessário para variáveis)
2. Keyword Library Designer (necessário para keywords)
3. Migration (seu objetivo)

Prosseguir?"

Usuário: "Sim"
```

---

## Exemplo 4: Ordem Customizada

```
Usuário: "Execute os agentes nesta ordem: 
Environment Config, Dependency Mapper, Migration, Documentation"

Orchestrator: "Ordem customizada aceita:
1. Agent 2: Environment Configuration
2. Agent 1: Dependency Mapper
3. Agent 6: Migration
4. Agent 8: Documentation

Nota: Esta ordem é diferente da sugerida, mas funciona.

Iniciando com Agent 2..."
```

---

## Exemplo 5: Pular Agentes Específicos

```
Usuário: "Execute o workflow completo, mas pule o API Endpoint Mapper 
e o Test Strategy"

Orchestrator: "Workflow ajustado (pulando agents 3 e 5):
1. Dependency Mapper ✓
2. Environment Configuration ✓
3. API Endpoint Mapper ✗ (pulado)
4. Keyword Library Designer ✓
5. Test Strategy ✗ (pulado)
6. Migration ✓
7. Assertion Converter ✓
8. Documentation ✓

Executarei 6 de 8 agentes. Prosseguir?"

Usuário: "Sim"
```

---

## Exemplo 6: Modo Interativo com Checkpoints

```
Usuário: "Execute a migração completa, mas pause após cada fase 
para eu revisar"

Orchestrator: "Modo interativo ativado. Pausarei após:
- Fase 1 (Foundation Setup)
- Fase 2 (Architecture Design)
- Fase 3 (Test Migration)
- Fase 4 (Documentation)

Iniciando Fase 1...

[executa agents 1 e 2]

CHECKPOINT 1: Fase 1 completa

Arquivos gerados:
- requirements.txt
- config/*.robot (4 arquivos)

Revise estes arquivos. Quando estiver pronto, responda:
- 'continuar' para Fase 2
- 'modificar X' se quiser ajustar algo
- 'parar' para interromper aqui"

Usuário: "continuar"

Orchestrator: "Iniciando Fase 2..."
```

---

## Exemplo 7: Retomar Migração Interrompida (Usando SUMMARY.md)

```
Usuário: "Retome a migração de onde paramos. 
Use #file tests/robot/SUMMARY.md como referência"

Orchestrator: "Carregando progresso do SUMMARY.md...

📊 Status da Migração (extraído do SUMMARY.md):
- Última atualização: 25/11/2025
- Lotes completos: 3
- Cenários migrados: 30 de ~1500
- Progresso: 19.0%

✅ Completado:
  Lote 1 (10 cenários):
  ✓ auth_online_verificar_cpf_cnpj.robot - Validação CPF/CNPJ
  
  Lote 2 (10 cenários):
  ✓ auth_online_validar_tipo_credito.robot - Tipos de crédito
  ✓ Complemento auth_online_verificar_cpf_cnpj.robot (CT0592, CT0593)
  
  Lote 3 (10 cenários):
  ✓ auth_online_validar_ausencia_header.robot - Validação headers
  ✓ auth_online_mixed_tests.robot - Testes mistos

🔧 Componentes Implementados:
  ✓ SignatureGenerator.py com RSA SHA256 real
  ✓ Keywords customizadas (auth-keywords.robot)
  ✓ Validações de status code estritas (200, 400, 401, 422)
  ✓ Reutilização de dados JSON existentes

📋 Próximos Lotes (do SUMMARY.md):
  Lote 4: auth_online_modelo_nao_autorizado.feature
  Lote 5: auth_online_produto_versao_nao_autorizado.feature
  Lote 6: auth_online_doc_nao_disponivel.feature

Deseja:
A) Continuar com Lote 4 (próximos 10 cenários)
B) Re-executar testes dos Lotes 1-3 para validar
C) Atualizar configurações antes de continuar
D) Revisar arquivos migrados

Sua escolha?"

Usuário: "A - continue com Lote 4"

Orchestrator: "Perfeito! Iniciando Lote 4...

Analisando auth_online_modelo_nao_autorizado.feature...
Identificados 10 cenários para migração..."
```

---

## Exemplo 7B: Retomar com Análise Detalhada

```
Usuário: "Analise o SUMMARY.md e me diga o que falta fazer"

Orchestrator: "Analisando SUMMARY.md...

📊 Resumo da Análise:

**O que já está feito:**
✅ 30 cenários migrados (19% do total)
✅ 4 arquivos Robot criados
✅ Biblioteca RSA SHA256 implementada
✅ Keywords reutilizáveis funcionando
✅ Validações estritas de status code

**Decisões Técnicas Documentadas:**
- Dados JSON do Karate reutilizados ✓
- Assinatura RSA real (não mock) ✓
- Estrutura de pastas mantida similar ao Karate ✓
- Validações desligadas em HML (conforme original) ✓

**O que falta fazer:**
⏳ 128 cenários restantes (~81%)
⏳ 14+ feature files não migrados
⏳ Validações de response body (desligadas em HML)
⏳ Suporte para ambientes DEV e PRD
⏳ Relatórios customizados

**Limitações Conhecidas (do SUMMARY.md):**
⚠️ Testes retornando 401 ao invés de 422 em HML
   Causa: Credenciais de teste com limitações de autorização
   Impacto: Assinatura funciona, mas autorização falha antes da validação

**Próximos Arquivos Prioritários:**
1. auth_online_modelo_nao_autorizado.feature (Lote 4)
2. auth_online_produto_versao_nao_autorizado.feature (Lote 5)
3. auth_online_doc_nao_disponivel.feature (Lote 6)

Recomendação:
Continuar migração incremental de 10 em 10 cenários, mantendo a 
qualidade atual. Estratégia de 3 lotes completos está funcionando bem.

Deseja:
1. Continuar com Lote 4
2. Resolver limitação de autorização em HML primeiro
3. Implementar suporte a múltiplos ambientes antes de continuar
4. Outra ação

Sua escolha?"
```

---

## Exemplo 8: Lidar com Erro

```
Orchestrator: "Executando Agent 6: Migration...

Processando feature files:
✓ getRequest.feature -> tests/get_requests.robot
✓ createJobEntry.feature -> tests/post_requests.robot
✗ complexScenario.feature -> ERRO

Erro: Não foi possível parsear o arquivo complexScenario.feature
Linha 45: Sintaxe Karate inválida

Progresso: 5 de 6 arquivos convertidos

Opções:
1. RETRY - Tentar novamente
2. SKIP - Pular este arquivo e continuar
3. MANUAL - Vou corrigir manualmente, depois continue
4. ABORT - Parar aqui, retomo depois

O que deseja fazer?"

Usuário: "3 - vou corrigir"

Orchestrator: "Entendido. Estado salvo.

Quando corrigir o arquivo complexScenario.feature, me avise:
'Arquivo corrigido, continue a migração'

Aguardando..."

[usuário corrige o arquivo]

Usuário: "Arquivo corrigido, continue a migração"

Orchestrator: "Retomando Agent 6: Migration...

Processando arquivo corrigido:
✓ complexScenario.feature -> tests/response_validation.robot

Agent 6 completo! Todos os 6 arquivos convertidos.

Continuando para Agent 7: Assertion Converter..."
```

---

## Exemplo 9: Modificar Durante Checkpoint

```
Orchestrator: "CHECKPOINT 1: Foundation Setup Complete

Arquivos gerados:
- requirements.txt
- config/common.robot
- config/staging.robot

Continuar para Fase 2?"

Usuário: "Espera, preciso adicionar uma dependência extra no requirements.txt"

Orchestrator: "Sem problema! Faça as modificações necessárias.

Quando terminar, me avise:
- 'pronto, continue' para prosseguir
- 'refazer agent 1' se quiser que eu regenere o arquivo

Aguardando..."

Usuário: "pronto, continue"

Orchestrator: "Ótimo! Continuando para Fase 2..."
```

---

## Exemplo 10: Ajuda Durante Migração

```
Usuário: "Não entendi o que o Keyword Library Designer faz"

Orchestrator: "O Keyword Library Designer (Agent 4) analisa seus testes 
Karate e cria keywords reutilizáveis no Robot Framework.

Por exemplo, se você tem este padrão repetido em vários testes:
```
Given url 'http://localhost:9898'
And path '/normal/webapi/all'
When method get
Then status 200
```

O agente cria uma keyword:
```
Get All Jobs
    ${response}=    GET On Session    api    /normal/webapi/all
    Verify Status Code    ${response}    200
```

Isso torna seus testes mais legíveis e fáceis de manter.

Deseja que eu execute este agente agora?"

Usuário: "Sim, execute"
```

---

## Exemplo 7C: Continuar com Contexto do SUMMARY.md

```
Usuário: "Continue a migração. Arquivo de contexto: #file tests/robot/SUMMARY.md"

Orchestrator: "Carregando contexto do SUMMARY.md...

✅ Lidos: 30 cenários já migrados em 3 lotes
✅ Identificado: Padrão de migração de 10 cenários por lote
✅ Reconhecido: Estrutura de keywords e bibliotecas já implementadas
✅ Detectado: Validações estritas de status code ativas

Próximo lote: #4

Feature file: auth_online_modelo_nao_autorizado.feature
Local: src/test/java/api/features/produto/autenticacao_autorizacao/
Destino: tests/robot/produto/autenticacao_autorizacao/

Vou:
1. Analisar o feature file
2. Identificar 10 cenários
3. Converter para Robot Framework
4. Reutilizar keywords existentes (auth-keywords.robot)
5. Aplicar validações estritas de status code
6. Atualizar SUMMARY.md e MIGRATION_LOG.md

Prosseguir com Lote 4?"

Usuário: "Sim"

Orchestrator: "Iniciando migração do Lote 4..."
```

---

## Comandos Úteis

### Verificar Progresso
```
Usuário: "Qual o status da migração?"
Usuário: "Mostre o que já foi feito"
Usuário: "Onde estamos?"
Usuário: "Analise o SUMMARY.md"
Usuário: "Quanto falta para completar?"
```

### Retomar/Continuar
```
Usuário: "Retome a migração usando #file tests/robot/SUMMARY.md"
Usuário: "Continue de onde paramos"
Usuário: "Próximo lote, por favor"
Usuário: "Analisa o arquivo @MIGRATION_LOG e continua a migração"
```

### Commits Faseados (CRÍTICO) ⚠️
```
Usuário: "Gere o script de commit para o lote atual"
Usuário: "Atualize o SUMMARY.md com o progresso do lote X"
Usuário: "Faça commit do lote X antes de continuar"
Usuário: "Execute o commit e depois continue para o próximo lote"
Usuário: "Mostre o que precisa ser commitado"
```

**Nota**: O orchestrator SEMPRE deve gerar commits faseados após cada lote. 
Consulte: `agents/orchestrator/phased-commit-guide.md` para detalhes.

### Modificar Workflow
```
Usuário: "Adicione o agent X ao workflow"
Usuário: "Remova o agent Y"
Usuário: "Mude a ordem: execute Z antes de W"
Usuário: "Migre de 20 em 20 cenários ao invés de 10"
```

### Controle de Execução
```
Usuário: "Pause aqui"
Usuário: "Continue"
Usuário: "Pule este agente"
Usuário: "Volte para o checkpoint anterior"
Usuário: "Pausa - Continue to iterate?"
```

### Validação e Testes
```
Usuário: "Execute os testes migrados"
Usuário: "Valide as alterações"
Usuário: "Verifique erros de sintaxe"
Usuário: "Passou no 422 ou 401?" (verificar status codes)
```

### Ajuda
```
Usuário: "Explique o que este agente faz"
Usuário: "Quais arquivos serão gerados?"
Usuário: "Como funciona o checkpoint?"
Usuário: "Mostre exemplos de uso"
```

---

## 💡 Sugestões de Uso com SUMMARY.md

### 1. Início de Nova Sessão
```
Usuário: "Bom dia! Vamos continuar a migração Karate → Robot Framework.
Contexto: #file tests/robot/SUMMARY.md"
```
**Por quê?** O SUMMARY.md tem todo o histórico e progresso da migração.

**Nota:** Com `.github/copilot-instructions.md`, o Copilot já conhece todos os agents e o workflow. Você só precisa fornecer o SUMMARY.md! 🎯

### 2. Validar Progresso
```
Usuário: "Analise #file tests/robot/SUMMARY.md e me mostre:
- Quantos % já migramos
- O que falta fazer
- Próximos arquivos prioritários"
```
**Por quê?** Obter visão clara do status antes de continuar.

### 3. Retomar Após Interrupção
```
Usuário: "Última vez paramos no Lote 3. 
Analise #file tests/robot/SUMMARY.md e continue de onde paramos"
```
**Por quê?** SUMMARY.md mantém registro de onde parou.

### 4. Ajustar Estratégia
```
Usuário: "Leia #file tests/robot/SUMMARY.md.
Os testes estão falhando com 401. Vamos ajustar as validações?"
```
**Por quê?** SUMMARY.md documenta limitações conhecidas.

### 5. Planejamento de Sprint
```
Usuário: "Baseado em #file tests/robot/SUMMARY.md, 
quantos lotes consigo migrar hoje se trabalhar 4 horas?"
```
**Por quê?** Estimar esforço baseado no histórico documentado.

### 6. Documentar Decisões e Commitar
```
Usuário: "Atualize #file tests/robot/SUMMARY.md com:
- Lote 4 completo
- Nova estratégia de validação implementada
- Problema X resolvido

E gere o script de commit para este lote"
```
**Por quê?** Manter documentação atualizada E commitada para próximas sessões.

### 7. Análise de Bloqueios
```
Usuário: "No #file tests/robot/SUMMARY.md tem uma limitação conhecida 
sobre autorização 401. Como resolver isso?"
```
**Por quê?** SUMMARY.md documenta problemas e contexto técnico.

### 8. Gerar Relatório
```
Usuário: "Use #file tests/robot/SUMMARY.md para gerar um 
relatório executivo do progresso da migração para meu gerente"
```
**Por quê?** SUMMARY.md tem todas as métricas e realizações.

---

## 📋 Template de Comando Completo

**NOTA:** Com `.github/copilot-instructions.md` configurado, você não precisa mais referenciar `#folder agents` - o Copilot já tem acesso a todos os agents automaticamente! ✨

```
Usuário: "Continue a migração Karate → Robot Framework.

Contexto: 
- #file tests/robot/SUMMARY.md
- #file tests/robot/MIGRATION_LOG.md

Requisitos:
- Migre próximos 50 cenários (Lote X)
- Use keywords existentes de #file tests/robot/keywords/auth-keywords.robot
- Mantenha validações estritas de status code
- Atualize SUMMARY.md ao final
- Gere script de commit para o lote

Pause após completar o lote para eu revisar."
```

### Comando Simplificado (com copilot-instructions.md)

```
Usuário: "Continue migração. Contexto: #file tests/robot/SUMMARY.md"
```

O Copilot já sabe:
- ✅ Onde estão os agents (`agents/`)
- ✅ Que deve fazer commits faseados
- ✅ Que deve atualizar SUMMARY.md
- ✅ Workflow completo de migração

---

## Exemplo 11: Migração com Commit Automático (Recomendado)

```
Usuário: "Continue migração do próximo lote (50 cenários).
Contexto: #file tests/robot/SUMMARY.md
Após concluir, atualize SUMMARY.md e gere script de commit."

Orchestrator: "Carregando SUMMARY.md...

📊 Status Atual:
- Lotes completos: 5
- Cenários migrados: 108/535 (20.2%)
- Próximo lote: #6

Iniciando migração do Lote 6 (50 cenários)...

[... executa migração ...]

✅ Lote 6 Completo!

Arquivos criados:
- tests/robot/produto/acesso_dados/pefin_basicos.robot (15 cenários)
- tests/robot/produto/acesso_dados/refin_consultas.robot (18 cenários)
- tests/robot/produto/acesso_dados/dividas_vencidas.robot (17 cenários)

Atualizando SUMMARY.md...
✓ Tabela do Lote 6 adicionada
✓ Progresso atualizado: 158/535 (29.5%)
✓ Data atualizada: 26/11/2025

Gerando script de commit...
✓ Script criado: commit-migration-lote-6.ps1

📝 Script de Commit Gerado:
----------------------------------------
# Commit Lote 6 - Pefin, Refin e Dívidas
Write-Host "[Lote 6] Committing..." -ForegroundColor Cyan

git add tests/robot/produto/acesso_dados/pefin_basicos.robot
git add tests/robot/produto/acesso_dados/refin_consultas.robot
git add tests/robot/produto/acesso_dados/dividas_vencidas.robot
git add tests/robot/SUMMARY.md
git add tests/robot/MIGRATION_LOG.md

git commit -m "feat(migration): Lote 6 - 50 cenários Pefin/Refin/Dívidas

- pefin_basicos.robot: CT0103-CT0117 (15 cenários)
- refin_consultas.robot: CT0118-CT0135 (18 cenários)
- dividas_vencidas.robot: CT0136-CT0152 (17 cenários)
- Updated SUMMARY.md: 158/535 (29.5%)

Domínios: Pefin, Refin, Dívidas Vencidas
Total migrado: 158 cenários (29.5%)
Restante: 377 cenários"

Write-Host "✓ Commit completo!" -ForegroundColor Green
----------------------------------------

Deseja:
A) Executar o script de commit agora
B) Revisar arquivos antes de commitar
C) Editar o script de commit
D) Continuar para próximo lote (commitarei depois)

Sua escolha?"

Usuário: "A"

Orchestrator: "Executando commit...

[Lote 6] Committing...
✓ Arquivos adicionados ao stage
✓ Commit criado: a7f3c21

Fazer push para GitLab? (S/N):
"

Usuário: "S"

Orchestrator: "
Fazendo push...
✓ Push concluído!

Resumo:
✅ Lote 6 migrado (50 cenários)
✅ SUMMARY.md atualizado (158/535 = 29.5%)
✅ Commit criado e enviado ao GitLab
✅ Script salvo: commit-migration-lote-6.ps1

Pronto para próximo lote!

Continuar com Lote 7?"

Usuário: "Sim"

Orchestrator: "Iniciando Lote 7..."
```

---

## Exemplo 12: Usar Script de Commit Existente

```
Usuário: "Acabei de migrar manualmente alguns cenários. 
Preciso atualizar o SUMMARY.md e fazer commit.
Veja o script exemplo: #file examples/score/commit-migration.ps1"

Orchestrator: "Analisando script existente...

Entendi o padrão! Vou:
1. Identificar quais arquivos você modificou
2. Atualizar SUMMARY.md seguindo o formato existente
3. Gerar script de commit seguindo o template de commit-migration.ps1

Verificando arquivos modificados...

Detectado:
- 3 novos arquivos .robot
- SUMMARY.md precisa atualização
- Última entrada: Lote 5

Isso é o Lote 6?
"

Usuário: "Sim, Lote 6"

Orchestrator: "Perfeito! Gerando documentação e script...

✓ SUMMARY.md atualizado com Lote 6
✓ Script criado: commit-migration-lote-6.ps1 (baseado no template)

O script segue o mesmo padrão do commit-migration.ps1:
- Adiciona todos os arquivos do lote
- Mensagem de commit descritiva
- Opção de push interativa
- Formatação colorida

Executar script agora?"

Usuário: "Sim"
```

---

## 🚨 Checklist Rápido - Commits Faseados

**Após cada lote, o Orchestrator DEVE:**

```
□ ✅ Migrar N cenários do lote
□ ✅ Salvar todos os arquivos .robot
□ ✅ Atualizar SUMMARY.md:
    - Adicionar tabela do lote
    - Atualizar progresso (X/Y cenários, Z%)
    - Atualizar "Última atualização"
    - Listar arquivos criados
□ ✅ Atualizar MIGRATION_LOG.md (se existir)
□ ✅ Gerar script de commit:
    - Nome: commit-migration-lote-X.ps1
    - Incluir todos os arquivos do lote
    - Mensagem descritiva com IDs dos testes
    - Indicar progresso total
□ ✅ Apresentar ao usuário:
    - Resumo do lote
    - Arquivos gerados
    - Script de commit
    - Opções: executar/revisar/editar/pular
□ ✅ Executar commit (se usuário autorizar)
□ ✅ Confirmar sucesso antes de próximo lote

⚠️ NUNCA prosseguir para próximo lote sem commitar o atual!
```

---

## 📚 Referências de Commit

### Scripts Existentes
- **Script multi-commit**: `examples/score/commit-migration.ps1`
  - Executa múltiplos commits de uma vez (Lotes 1-5)
  - Útil para commit em lote de trabalho acumulado
  
- **Script detalhado**: `examples/score/git-commit-migration.ps1`
  - Commit individual por lote com detalhes
  - Checkpoint após cada commit
  - Mensagens de commit completas

### Documentação
- **Guia completo**: `agents/orchestrator/phased-commit-guide.md`
  - Passo a passo detalhado
  - Templates de scripts
  - Tratamento de erros
  - Melhores práticas

### Exemplo Real
Veja o histórico de commits do projeto Score:
```bash
git log --oneline
# ec49970 docs(migration): Adicionar documentacao completa (108/535 cenarios, 20.2%)
# 2facd9e feat(migration): Lote 5 - 48 cenarios multi-dominio
# b37574b feat(migration): Lote 4 - 30 cenarios auth + acesso dados
# 9a93b74 feat(migration): Lote 3 - 10 cenarios validacao header
# 0f715fe feat(migration): Lote 1-2 - Estrutura base + 20 cenarios auth
```

---

---

## ⚙️ Configuração do GitHub Copilot

### Arquivo `.github/copilot-instructions.md`

Este projeto está configurado com **instruções automáticas para o Copilot**!

**O que isso significa:**
- ✅ Copilot carrega automaticamente o contexto dos agents
- ✅ Conhece o workflow de migração completo
- ✅ Sabe sobre commits faseados obrigatórios
- ✅ Tem acesso aos comandos rápidos
- ✅ Não precisa referenciar `#folder agents` toda vez

### 📂 Estrutura Atual

```
.github/
└── copilot-instructions.md          ← Instruções auto-carregadas

agents/                               ← Agents especializados
├── orchestrator/
│   ├── agent-prompt.md
│   ├── execution-checklist.md
│   └── phased-commit-guide.md
├── migration/
│   └── agent-prompt.md
├── assertion-converter/
│   └── agent-prompt.md
└── ... (outros agents)

EXEMPLOS_USO_CHAT.md                  ← Este arquivo
```

### 🚀 Como Funciona

1. **Copilot lê automaticamente** `.github/copilot-instructions.md` em toda sessão
2. **Você só precisa fornecer** o contexto específico do projeto (ex: `SUMMARY.md`)
3. **Copilot já sabe** onde estão os agents e como usá-los

### 💡 Antes vs Depois

**Antes (sem copilot-instructions.md):**
```
Continue migração.
Contexto:
- #folder agents                          ← Precisa especificar
- #file agents/orchestrator/agent-prompt.md
- #file agents/orchestrator/phased-commit-guide.md
- #file tests/robot/SUMMARY.md
```

**Depois (com copilot-instructions.md):**
```
Continue migração. 
Contexto: #file tests/robot/SUMMARY.md    ← Só isso!
```

### 🔧 Você NÃO Precisa Configurar Nada!

O arquivo `.github/copilot-instructions.md` é **lido automaticamente** pelo GitHub Copilot. Não há configurações adicionais necessárias.

**Basta:**
1. O arquivo existir em `.github/copilot-instructions.md`
2. Abrir uma conversa no Copilot Chat
3. Pronto! O contexto está carregado ✨

### 📝 Atualizar Instruções

Se precisar modificar as instruções:
1. Edite `.github/copilot-instructions.md`
2. Salve o arquivo

---

## 📦 Caso de Uso 2: Gerar Template de Framework

### Exemplo 2.1: Template Robot Framework

```
Usuário: "Crie um template completo de projeto Robot Framework 
para testes de API REST com Allure Reports"

Framework Generator Agent: "Gerando template Robot Framework...

✓ Estrutura de pastas criada
✓ requirements.txt com 9 dependências
✓ resources/keywords.resource com 25+ keywords
✓ Exemplos de testes incluídos
✓ Configurações de ambiente (dev, staging, prod)
✓ GitHub Actions workflow
✓ Allure Reports configurado
✓ README completo com exemplos

Template gerado em: ./my-robot-project/

Próximos passos:
1. cd my-robot-project
2. pip install -r requirements.txt
3. robot --outputdir results tests/

Deseja que eu ajuste algo no template?"

Usuário: "Adicione suporte para testes paralelos com Pabot"

Framework Generator: "✓ Adicionado pabot>=2.16.0 ao requirements.txt
✓ Atualizado README com exemplo de execução paralela:
  pabot --processes 4 --outputdir results tests/

Template atualizado!"
```

### Exemplo 2.2: Template Karate Framework

```
Usuário: "Preciso de um template Karate para projeto Maven 
com testes de integração e Allure"

Framework Generator: "Gerando template Karate + Maven...

✓ pom.xml com dependências configuradas
✓ karate-config.js multi-ambiente
✓ Estrutura src/test/java/runners/
✓ Features de exemplo (auth/, users/, products/)
✓ Test runners (All, Smoke, Regression paralela)
✓ GitLab CI pipeline
✓ Allure Reports configurado
✓ README completo

Template gerado em: ./my-karate-project/

Executar testes:
  mvn test                           # Todos
  mvn test -Dkarate.env=staging      # Ambiente específico
  mvn test -Dkarate.options="--tags @smoke"  # Por tag

Template pronto!"
```

---

## 📦 Caso de Uso 3: Revisão de Código e Qualidade

### Exemplo 3.1: Code Review Completo

```
Usuário: [Seleciona arquivo de teste] 
"Faça uma revisão completa deste teste"

Code Review Agent: "Analisando test_authentication.robot...

✅ PONTOS POSITIVOS:
• Boa organização com Settings, Variables, Keywords
• Tags apropriadas (smoke, critical)
• Documentação presente

⚠️ MELHORIAS NECESSÁRIAS:
1. Keywords sem documentação (linhas 45-67)
2. Variáveis hardcoded que deveriam estar em config
3. Falta tratamento de erro no teardown
4. Response time não está sendo validado

🔒 SEGURANÇA:
❌ CRÍTICO: Credencial hardcoded na linha 23
   ${PASSWORD}    Senha123    ← Mover para variável de ambiente

📊 PERFORMANCE:
⚠️ AVISO: Timeout muito alto (120s na linha 12)
   Recomendado: 30s para APIs REST

💡 SUGESTÕES:
1. Criar keyword 'Should Authenticate Successfully'
2. Extrair dados de teste para arquivo JSON
3. Adicionar retry logic para chamadas de API

Aplicar correções automaticamente?"
```

### Exemplo 3.2: Security Review

```
Usuário: "Analise segurança do meu projeto #Folder tests/robot/"

Security Reviewer Agent: "Escaneando projeto de testes...

🔒 VULNERABILIDADES ENCONTRADAS:

❌ CRÍTICO (3):
1. tests/robot/resources/variables.robot:15
   ${API_KEY} = '${ENV_API_KEY}'  # Use environment variable, not hardcoded
   
2. tests/robot/keywords/auth-keywords.robot:28
   ${DB_PASSWORD} = '${ENV_DB_PASSWORD}'  # Use environment variable
   
3. tests/robot/data/test-users.json:5
   "password": "MyPass123"  ← Credencial commitada

⚠️ MÉDIO (2):
1. SSL verification desabilitado em 3 testes
2. Logs com dados sensíveis (CPF, emails)

💡 RECOMENDAÇÕES:
• Use variáveis de ambiente: ${ENV_API_KEY}
• Crie .env file (gitignored)
• Configure secrets no CI/CD
• Ative SSL verification

Gerar correções?"
```

---

## 📦 Caso de Uso 4: Análise de Testes

### Exemplo 4.1: Análise de Cobertura

```
Usuário: "Analise a cobertura de testes do meu projeto 
#Folder tests/robot/produto/"

Test Analysis Agent: "Analisando cobertura de testes...

📊 ESTATÍSTICAS GERAIS:
• Total de testes: 156
• Testes passando: 142 (91%)
• Testes falhando: 14 (9%)
• Tempo médio: 2.3s por teste

🎯 COBERTURA POR DOMÍNIO:
✅ Autenticação: 95% (19/20 cenários)
✅ Usuários: 88% (35/40 cenários)
⚠️ Produtos: 65% (26/40 cenários) ← Baixa cobertura
❌ Pedidos: 45% (18/40 cenários) ← CRÍTICO
✅ Pagamentos: 90% (18/20 cenários)

🏷️ COBERTURA POR TAG:
• @smoke: 100% (15/15)
• @critical: 85% (34/40)
• @regression: 72% (112/156)
• @integration: 55% (22/40) ← Melhorar

❌ GAPS IDENTIFICADOS:
1. Pedidos: Faltam testes de cancelamento (0%)
2. Pedidos: Faltam testes de estorno (0%)
3. Produtos: Faltam testes de estoque (30%)

💡 RECOMENDAÇÕES:
• Priorizar: Testes de Pedidos (domínio crítico)
• Criar: 15 novos casos para cenários de erro
• Melhorar: Testes de integração (abaixo de 60%)

Gerar plano de ação?"
```

### Exemplo 4.2: Estratégia de Testes

```
Usuário: "Defina uma estratégia de testes para meu novo módulo de checkout"

Test Strategy Agent: "Analisando requisitos do módulo Checkout...

🎯 ESTRATÉGIA PROPOSTA:

📋 ORGANIZAÇÃO:
tests/robot/produto/checkout/
├── smoke/                   # 5 testes críticos (2 min)
├── functional/              # 25 testes funcionais (10 min)
├── integration/             # 15 testes integração (15 min)
└── negative/                # 10 testes de erro (5 min)

🏷️ TAGGING:
@checkout                    # Todos os testes
@smoke + @checkout           # Críticos (executar sempre)
@integration + @checkout     # Com outros módulos
@performance + @checkout     # Validar tempos

🔄 EXECUÇÃO:
• CI/CD: @smoke em cada commit (2 min)
• Nightly: @checkout completo (32 min)
• Release: @regression + @checkout

⚡ PARALLELIZAÇÃO:
• 4 processos simultâneos
• Tempo total: 8 min (vs 32 min sequencial)

📊 MÉTRICAS:
• Cobertura mínima: 80%
• Taxa de sucesso: >95%
• Performance: <10s por cenário

Gerar estrutura de testes?"
```

---

## 📦 Caso de Uso 5: Documentação Automática

### Exemplo 5.1: Gerar README

```
Usuário: "Gere um README completo para meu projeto de testes 
#Folder tests/robot/"

Documentation Generator: "Gerando documentação...

✓ Analisada estrutura do projeto
✓ Identificados 156 testes em 8 domínios
✓ Mapeadas 47 keywords customizadas
✓ Encontrados 3 ambientes configurados

📄 README.md gerado com:
• Visão geral do projeto
• Estrutura de pastas explicada
• Como instalar dependências
• Como executar testes (por tag, ambiente, etc.)
• Tabela de keywords disponíveis
• Exemplos de uso
• Troubleshooting
• Contatos e links úteis

README criado em: ./tests/robot/README.md

Gerar também documentação de CI/CD?"
```

---

## 🚀 Caso de Uso 9: Setup DevOps & CI/CD

### Exemplo 9.1: Criar GitHub Actions Pipeline

```
Usuário: "Crie uma GitHub Actions pipeline que valide links e markdown
quando eu fizer push ou criar um PR"

Universal Helper: "Detectei solicitação de CI/CD!

⚠️ CARREGANDO AGENTS DE DEVOPS:
#file .github/agents/devops-helper/AGENTS.md

Qual tipo de validação você quer?"

CI/CD Validator: "Posso criar:

1️⃣ Validation Workflow - Links, Markdown, JSON
2️⃣ Test Execution Workflow - Roda testes em cada PR
3️⃣ Deployment Workflow - Build e deploy

Qual você prefere?"

Usuário: "Todas as 3"

CI/CD Validator: "Gerando pipelines...

✅ Criado: .github/workflows/validate.yml
   - Verifica links quebrados
   - Linta markdown
   - Valida JSON/YAML
   - Roda em: push, pull_request, weekly schedule

✅ Criado: .github/workflows/test.yml
   - Roda testes em Python 3.9, 3.10, 3.11
   - Gera coverage reports
   - Posta resultados em PR
   - Enforca quality gates (80% coverage)

✅ Criado: .github/workflows/deploy.yml
   - Build Docker image
   - Push para registry
   - Deploy para staging/production
   - Smoke tests pós-deploy

Próximo passo: Configurar secrets do GitHub (GitHub token, Docker registry, etc)?"
```

### Exemplo 9.2: Setup Templates GitHub

```
Usuário: "Gere templates para issue tracking no GitHub"

Universal Helper: "Detectei solicitação de templates!

⚠️ CARREGANDO AGENTS:
#file .github/agents/devops-helper/AGENTS.md"

Issue Template Designer: "Vou gerar:

1️⃣ Bug Report template
2️⃣ Feature Request template  
3️⃣ Pull Request template

Quer customizações específicas?"

Usuário: "Não, o padrão está bom"

Issue Template Designer: "Gerando templates...

✅ Criado: .github/ISSUE_TEMPLATE/bug_report.md
   - Seções: descrição, steps, comportamento esperado
   - Campos de ambiente (OS, versão, etc)
   - Auto-label: 'bug', 'needs-triage'

✅ Criado: .github/ISSUE_TEMPLATE/feature_request.md
   - Seções: descrição do problema, solução proposta
   - Alternativas consideradas
   - Auto-label: 'enhancement'

✅ Criado: .github/PULL_REQUEST_TEMPLATE.md
   - Descrição e issues relacionadas
   - Checklist de verificação
   - Type of change (bug, feature, docs)
   - Auto-link para projects

Templates estão prontos em .github/ISSUE_TEMPLATE/

Agora issues e PRs terão estrutura consistente!"
```

### Exemplo 9.3: Configurar Repositório (EditorConfig + Pre-commit)

```
Usuário: "Configure este repositório para ter padrões de editor 
e validação automática antes de commits"

Universal Helper: "Detectei solicitação de setup!

⚠️ CARREGANDO AGENTS:
#file .github/agents/devops-helper/AGENTS.md"

Repository Setup Assistant: "Vou criar:

1️⃣ .editorconfig - Padronizar espaços, tabs, final newlines
2️⃣ .pre-commit-config.yaml - Validar antes de cada commit
3️⃣ Dependabot config - Atualizar dependências automaticamente

Você quer tudo isso?"

Usuário: "Sim, e add também um melhor .gitignore"

Repository Setup Assistant: "Gerando configurações...

✅ Criado: .editorconfig
   - 2 espaços para JS/JSON/YAML
   - 4 espaços para Python
   - UTF-8, LF line endings
   - Trim trailing whitespace

✅ Criado: .pre-commit-config.yaml
   - Detects private keys
   - Trailing whitespace fix
   - Markdown linting
   - Python black formatter
   - JSON/YAML validation

✅ Criado: .github/dependabot.yml
   - pip: weekly updates
   - npm: weekly updates
   - GitHub Actions: weekly updates

✅ Aprimorado: .gitignore
   - Python: __pycache__, venv/, .pytest_cache/
   - Node: node_modules/, dist/
   - IDE: .idea/, .vscode/
   - Credentials: .env, *.pem
   - OS: .DS_Store, Thumbs.db

Próximo passo: Instalar pre-commit hooks localmente

```bash
pip install pre-commit
pre-commit install
```

Agora todos os commits serão validados automaticamente!"
```

---

## 🎯 Dicas de Uso

### ✅ Boas Práticas
• Use `#Folder` para contexto de diretórios
• Coloque seus projetos em `examples/` para fácil referência
• Sempre revise em checkpoints antes de continuar
• Use "modo interativo" para grandes migrations
• Mencione o tipo de projeto (Karate, Robot, Selenium, etc)
• Use `#File` para arquivos específicos
• Seja específico sobre o que quer
• Revise checkpoints antes de continuar
• Faça commits após cada batch de migração

### ⚠️ Evite
• Comandos vagos ("faça algo")
• Pular checkpoints sem revisar
• Modificar arquivos durante execução
• Ignorar avisos de segurança

---

**Última atualização:** 29/01/2026  
**Versão:** 2.1 (Copilot Agents Platform com DevOps)  
**Total de casos de uso:** 9 (Migrações, Templates, Code Review, Testes, Documentação, DevOps)

---

## 🔄 Workflow Sugerido

1. **Prepare seu projeto** em `examples/`
2. **Abra nova conversa** no Copilot
3. **Descreva o objetivo** em linguagem natural
4. **Universal Helper** detecta intenção e carrega agents
5. **Agents** executam com checkpoints
6. **Você revisa** a cada checkpoint
7. **Continua ou ajusta** conforme necessário

---

Estes exemplos mostram a flexibilidade do sistema via chat. Você tem controle total sobre o processo através de conversação natural, e o **SUMMARY.md** serve como "memória" entre sessões.

**Dica Extra:** A pasta `examples/` está pronta para receber seus projetos. Leia `examples/README.md` para instruções completas!

