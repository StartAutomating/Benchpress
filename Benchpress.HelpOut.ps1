$BenchpressLoaded = Get-Module Benchpress
if (-not $BenchpressLoaded) {
    $BenchpressLoaded = Get-ChildItem -Recurse -Filter "*.psd1" | Where-Object Name -like 'Benchpress*' | Import-Module -Name { $_.FullName } -Force -PassThru
}
if ($BenchpressLoaded) {
    "::notice title=ModuleLoaded::Benchpress Loaded" | Out-Host
} else {
    "::error:: Benchpress not loaded" |Out-Host
}
if ($BenchpressLoaded) {
    Save-MarkdownHelp -Module $BenchpressLoaded.Name -PassThru
}
