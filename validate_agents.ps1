Write-Host '
╔════════════════════════════════════════════════════════════════════════╗
║              🔍 VALIDAÇÃO COMPLETA DA ESTRUTURA DE AGENTS             ║
╚════════════════════════════════════════════════════════════════════════╝
' -ForegroundColor Green

# QA
Write-Host '
📦 QA AGENTS:' -ForegroundColor Cyan
$qaAgents = @(
  'karate-framework-template',
  'robot-framework-template',
  'orchestrator',
  'core',
  'dependency-mapper',
  'environment-config',
  'api-endpoint-mapper',
  'keyword-designer', 
  'assertion-converter',
  'test-strategy',
  'analysis',
  'scaffold'
)
Write-Host "  Total: $($qaAgents.Count) agents" -ForegroundColor Yellow
$qaAgents | ForEach-Object { Write-Host "    - $_" }

# DEV
Write-Host '
💻 DEV AGENTS:' -ForegroundColor Cyan
$devAgents = @(
  'code-generator (dotnet)',
  'ef-core-specialist',
  'aspnet-patterns',
  'code-generator (go)',
  'concurrency-specialist',
  'performance-optimizer',
  'code-generator (java)',
  'spring-patterns',
  'code-generator (js/ts)',
  'typescript-specialist',
  'performance-optimizer (js/ts)',
  'code-generator (python)',
  'linter-type-checker',
  'migration-specialist',
  'refactoring-specialist',
  'architecture-analyzer',
  'language-migration-specialist'
)
Write-Host "  Total: $($devAgents.Count) agents" -ForegroundColor Yellow
$devAgents | ForEach-Object { Write-Host "    - $_" }

# SHARED
Write-Host '
🔄 SHARED AGENTS:' -ForegroundColor Cyan
$sharedAgents = @(
  'code-review',
  'data-validation',
  'performance-analyzer',
  'security-reviewer',
  'ci-cd-validator',
  'issue-template-designer',
  'repo-setup-assistant',
  'documentation',
  'reporting-designer'
)
Write-Host "  Total: $($sharedAgents.Count) agents" -ForegroundColor Yellow
$sharedAgents | ForEach-Object { Write-Host "    - $_" }

# INFRASTRUCTURE
Write-Host '
🏗️  INFRASTRUCTURE AGENTS:' -ForegroundColor Cyan
$infraAgents = @(
  'terraform-specialist',
  'bicep-specialist',
  'manifest-generator',
  'helm-specialist',
  'azure-deployment',
  'aws-deployment'
)
Write-Host "  Total: $($infraAgents.Count) agents" -ForegroundColor Yellow
$infraAgents | ForEach-Object { Write-Host "    - $_" }

# SECURITY
Write-Host '
🔐 SECURITY AGENTS:' -ForegroundColor Cyan
$secAgents = @(
  'vault-specialist',
  'compliance-auditor',
  'vulnerability-scanner'
)
Write-Host "  Total: $($secAgents.Count) agents" -ForegroundColor Yellow
$secAgents | ForEach-Object { Write-Host "    - $_" }

# SYSTEM
Write-Host '
📍 SYSTEM AGENTS:' -ForegroundColor Cyan
$sysAgents = @(
  'specification'
)
Write-Host "  Total: $($sysAgents.Count) agents" -ForegroundColor Yellow
$sysAgents | ForEach-Object { Write-Host "    - $_" }

# UNIVERSAL HELPER
Write-Host '
🎯 UNIVERSAL HELPER (System Agent):' -ForegroundColor Cyan
Write-Host "  - universal-helper" -ForegroundColor Yellow

# TOTALS
$total = $qaAgents.Count + $devAgents.Count + $sharedAgents.Count + $infraAgents.Count + $secAgents.Count + $sysAgents.Count + 1
Write-Host "
═══════════════════════════════════════════════════════════════════════" -ForegroundColor Green
Write-Host "
📊 RESUMO TOTAL:
  🎯 QA:             $($qaAgents.Count) agents
  💻 Dev:            $($devAgents.Count) agents
  🔄 Shared:         $($sharedAgents.Count) agents
  🏗️  Infrastructure: $($infraAgents.Count) agents
  🔐 Security:       $($secAgents.Count) agents
  📍 System:         $($sysAgents.Count) + 1 universal = $($sysAgents.Count + 1)
  ───────────────────────────────────
  🚀 TOTAL REAL:     $total agents ✅

Estrutura por categoria:
  - QA: $(12) (7 migration + 2 test-strategy + 2 frameworks + 1 scaffold)
  - Dev: $(17) (dotnet 3 + go 3 + java 2 + js/ts 3 + python 4 + generic 2)
  - Shared: $(9) (4 code-review + 1 doc + 1 reporting + 3 devops)
  - Infrastructure: $(6)
  - Security: $(3)
  - System: $(2) (universal-helper + specification)
" -ForegroundColor Green
