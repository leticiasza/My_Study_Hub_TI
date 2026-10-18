# Gera docs\index.html a partir das pastas e arquivos de docs\
# Uso: na raiz do repositorio, rode  .\gerar-docs.ps1
$ErrorActionPreference = 'Stop'
$docs = Join-Path (Get-Location) 'docs'
if (-not (Test-Path $docs)) { throw 'Pasta docs nao encontrada. Rode o script na raiz do repositorio.' }

$nomes = @{ 'desenvolvimento-mobile' = 'Desenvolvimento Mobile'; 'devops' = 'DevOps'; 'bootcamp' = 'Bootcamp' }
$ti = (Get-Culture).TextInfo
function Titulo($texto) { $ti.ToTitleCase(($texto -replace '[-_]+', ' ').Trim()) }

$secoes = ''
foreach ($pasta in Get-ChildItem $docs -Directory | Sort-Object Name) {
  $arquivos = Get-ChildItem $pasta.FullName -File | Sort-Object Name
  if (-not $arquivos) { continue }
  if ($nomes.ContainsKey($pasta.Name)) { $titulo = $nomes[$pasta.Name] } else { $titulo = Titulo $pasta.Name }
  $itens = ''
  foreach ($a in $arquivos) {
    $nome = Titulo ([IO.Path]::GetFileNameWithoutExtension($a.Name))
    $ext = $a.Extension.TrimStart('.').ToUpper()
    $href = $pasta.Name + '/' + [Uri]::EscapeDataString($a.Name)
    $nomeHtml = [System.Net.WebUtility]::HtmlEncode($nome)
    $itens += "          <li><a href=`"$href`">$nomeHtml</a><span class=`"tag`">$ext</span></li>`n"
  }
  $secoes += "      <section aria-labelledby=`"$($pasta.Name)`">`n        <h2 id=`"$($pasta.Name)`">$titulo</h2>`n        <ul class=`"docs-lista`">`n$itens        </ul>`n      </section>`n`n"
}

$html = @"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Documentos e slides | PortfolioHUB</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:wght@500;700;800&family=IBM+Plex+Sans:wght@400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="../css/style.css">
</head>
<body>
  <div class="layout">
    <header class="perfil">
      <h1>Documentos e slides</h1>
      <p class="sobre">Enunciados, aulas e slides das disciplinas, organizados por mat&#233;ria.</p>
      <nav aria-label="Navega&#231;&#227;o">
        <a href="../index.html">Voltar para os projetos</a>
      </nav>
    </header>

    <main>
$secoes    </main>
  </div>

  <footer>Documentos usados nos projetos do PortfolioHUB</footer>
</body>
</html>
"@

[IO.File]::WriteAllText((Join-Path $docs 'index.html'), $html, (New-Object System.Text.UTF8Encoding $false))
Write-Host 'docs\index.html gerado.'