$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$vaultRoot = Split-Path -Parent $repoRoot
$characterSheets = Join-Path $vaultRoot '07-Character-Creation\Fiches'
$docsRoot = Join-Path $repoRoot 'docs'

$copyMap = @{
    'Alchemist.md' = 'Content\SubClasses\Alchemist.md'
    'Arcane archer revisited.md' = 'Content\SubClasses\Arcane archer revisited.md'
    'Card Bettor.md' = 'Content\SubClasses\Card Bettor.md'
    'Circle of the Displacer.md' = 'Content\SubClasses\Circle of the Displacer.md'
    'Oath of Splendor.md' = 'Content\SubClasses\Oath of Splendor.md'
    'Path of the anvil.md' = 'Content\SubClasses\Path of the anvil.md'
    'School of the cascade.md' = 'Content\SubClasses\School of the cascade.md'
    'Star thrower.md' = 'Content\SubClasses\Star thrower.md'
    'Thirsty blade bloodline.md' = 'Content\SubClasses\Thirsty blade bloodline.md'
    'Underhand blade.md' = 'Content\SubClasses\Underhand blade.md'
    'Kensut.md' = 'Content\Races\Kensut.md'
    'Bladed Buckler.md' = 'Content\Equipment\Bladed Buckler.md'
}

foreach ($sourceName in $copyMap.Keys) {
    $sourcePath = Join-Path $characterSheets $sourceName
    $destinationPath = Join-Path $docsRoot $copyMap[$sourceName]

    if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf)) {
        throw "Source file not found: $sourcePath"
    }

    Copy-Item -LiteralPath $sourcePath -Destination $destinationPath -Force
}

$linkedFiles = @(
    @{
        Source = Join-Path $vaultRoot '08-Monster\Fiches\Displacer Cub.md'
        Destination = Join-Path $docsRoot '08-Monster\Fiches\Displacer Cub.md'
    },
    @{
        Source = Join-Path $vaultRoot '08-Monster\Fiches\Young Displacer Beast.md'
        Destination = Join-Path $docsRoot '08-Monster\Fiches\Young Displacer Beast.md'
    },
    @{
        Source = Join-Path $vaultRoot '08-Monster\Fiches\Displacer Beast.md'
        Destination = Join-Path $docsRoot '08-Monster\Fiches\Displacer Beast.md'
    },
    @{
        Source = Join-Path $vaultRoot '08-Monster\Fiches\Ancient Displacer Beast.md'
        Destination = Join-Path $docsRoot '08-Monster\Fiches\Ancient Displacer Beast.md'
    },
    @{
        Source = Join-Path $vaultRoot '08-Monster\Fiches\Mythic Displacer Beast.md'
        Destination = Join-Path $docsRoot '08-Monster\Fiches\Mythic Displacer Beast.md'
    },
    @{
        Source = Join-Path $vaultRoot '09-Other\Sandstorm.md'
        Destination = Join-Path $docsRoot '09-Other\Sandstorm.md'
    }
)

foreach ($file in $linkedFiles) {
    if (-not (Test-Path -LiteralPath $file.Source -PathType Leaf)) {
        throw "Source file not found: $($file.Source)"
    }

    Copy-Item -LiteralPath $file.Source -Destination $file.Destination -Force
}

$assets = @('rose.svg', 'anvil.svg', 'claw.svg', 'phoenix.svg')
foreach ($asset in $assets) {
    $sourcePath = Join-Path $vaultRoot ('Assets\' + $asset)
    $destinationPath = Join-Path $docsRoot ('Assets\' + $asset)

    if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf)) {
        throw "Source file not found: $sourcePath"
    }

    Copy-Item -LiteralPath $sourcePath -Destination $destinationPath -Force
}
