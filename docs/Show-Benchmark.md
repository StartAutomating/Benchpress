Show-Benchmark
--------------




### Synopsis
Shows Benchmarks



---


### Description

Shows Benchmarks using a custom view.  

By default, will generate a markdown table with the benchmarks.



---


### Examples
#### EXAMPLE 1
```PowerShell
Show-Benchmark .\PowerShellPerformance\ToString_Or_Not_ToString.benchmark.ps1
```



---


### Parameters
#### **BenchmarkPath**

The path to a benchmark or benchmark output.






|Type        |Required|Position|PipelineInput        |Aliases              |
|------------|--------|--------|---------------------|---------------------|
|`[String[]]`|true    |1       |true (ByPropertyName)|Fullname<br/>FilePath|



#### **View**

The view used to render the benchmark file.
This view must be defined in a .format.ps1xml file.






|Type      |Required|Position|PipelineInput|
|----------|--------|--------|-------------|
|`[String]`|false   |2       |false        |





---


### Syntax
```PowerShell
Show-Benchmark [-BenchmarkPath] <String[]> [[-View] <String>] [<CommonParameters>]
```
