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



> **Type**: ```[String[]]```

> **Required**: true

> **Position**: 1

> **PipelineInput**:true (ByPropertyName)



---
#### **View**

The view used to render the benchmark file.
This view must be defined in a .format.ps1xml file.



> **Type**: ```[String]```

> **Required**: false

> **Position**: 2

> **PipelineInput**:false



---
### Syntax
```PowerShell
Show-Benchmark [-BenchmarkPath] <String[]> [[-View] <String>] [<CommonParameters>]
```
---
