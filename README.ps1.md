## Benchpress is a quick and easy benchmarking toolkit for PowerShell

It helps you write and manage simple comparative benchmarks.
You can use this information to make your scripts more efficient.

For instance, here's a quick Benchmark to determine if you should use Foreach statement or foreach object

~~~PowerShell
Measure-Benchmark -Technique @{
    ForeachObject = { 1..100 | Foreach-Object { $_ } }
    ForeachStatement = { foreach ($n in 1..100) { $n }}
}
~~~

You can install Benchpress from the PowerShell Gallery:

~~~PowerShell
Install-Module Benchpress -Scope CurrentUser -Force
~~~

Benchmark comes with a number of PowerShell Performance experiments.

~~~PipeScript {
    Import-Module ./Benchpress.psd1 -Global
    [PSCustomObject]@{
        Table = Get-Benchmark -Module Benchpress |
            Sort-Object FileName |            
            .Name {
                "[$($_.FileName) (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/$($_.FilePath | Split-Path -Leaf))"
            } .Results {
                "[$($_.FileName) (results)](docs/$($_.FileName.Replace(' ', '_') + '.benchmark.benchmarkOutput.md'))"
            }
    }
}
~~~

You can run all these built-in benchmarks by running.

~~~PowerShell
Checkpoint-Benchmark -ModuleName Benchpress
~~~
