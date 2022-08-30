function Show-Benchmark {
    <#
    .SYNOPSIS
        Shows Benchmarks
    .DESCRIPTION
        Shows Benchmarks using a custom view.  
        
        By default, will generate a markdown table with the benchmarks.
    .EXAMPLE
        Show-Benchmark .\PowerShellPerformance\ToString_Or_Not_ToString.benchmark.ps1
    #>
    param(
    # The path to a benchmark or benchmark output.
    [Parameter(Mandatory,ValueFromPipelineByPropertyName)]
    [ValidatePattern("
        (?>
            (?<IsBenchmark>\.benchmark\.psd{0,1}1$) |
            (?<IsBenchmarkOutput>\.benchmarkOutput\.clixml)
        )
    ", Options="IgnoreCase,IgnorePatternWhitespace")]
    [Alias('Fullname')]
    [string[]]
    $BenchmarkPath,

    # The view used to render the benchmark file.
    # This view must be defined in a .format.ps1xml file.
    [string]
    $View
    )

    process {
        $formatCustomParams = @{}
        
        if ($view) {
            $formatCustomParams.View = $view
        }

        foreach ($path in $BenchmarkPath) {
            $benchmarkOutput = 
                if ($path -match '\.benchmarkOutput\.clixml') {
                    Import-Clixml -Path $path
                }
                else {
                    Checkpoint-Benchmark -BenchmarkPath $path
                }

            $benchmarkOutputFile = [PSCustomObject]@{
                PSTypeName = 'Benchmark.OutputFile'
                Data  = $benchmarkOutput
                FileName = $benchmarkOutput[0].FileName
                ClockSpeed = $benchmarkOutput[0].ClockSpeed
            }

            $benchmarkOutputFile | 
                Format-Custom @formatCustomParams |
                Out-String -Width 10kb
        }
    }
}
