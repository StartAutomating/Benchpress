## Benchpress is a quick and easy benchmarking toolkit for PowerShell

It helps you write and manage simple comparative benchmarks.
You can use this information to make your scripts more effecient.

For instance, here's a quick Benchmark to determine if you should use Foreach statement or foreach object

    Measure-Benchmark -Technique @{
        ForeachObject = { 1..100 | Foreach-Object { $_ } }
        ForeachStatement = { foreach ($n in 1..100) { $n }}
    }

Benchmark comes with a number of PowerShell Performance experiments.

    Checkpoint-Benchmark -ModuleName Benchpress