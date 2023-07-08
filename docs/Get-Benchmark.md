Get-Benchmark
-------------




### Synopsis
Gets benchmark files.



---


### Description

Gets benchmark script files and benchmark input files.



---


### Related Links
* [Measure-Benchmark](Measure-Benchmark.md)



* [Checkpoint-Benchmark](Checkpoint-Benchmark.md)





---


### Examples
#### EXAMPLE 1
```PowerShell
Get-Benchmark -BenchmarkPath a.benchmark.ps1
```



---


### Parameters
#### **BenchmarkPath**

The path to the benchmark file






|Type        |Required|Position|PipelineInput        |Aliases |
|------------|--------|--------|---------------------|--------|
|`[String[]]`|true    |1       |true (ByPropertyName)|Fullname|



#### **ModuleName**

The name of a module






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|true    |named   |true (ByPropertyName)|





---


### Outputs
* [Management.Automation.PSObject](https://learn.microsoft.com/en-us/dotnet/api/System.Management.Automation.PSObject)






---


### Syntax
```PowerShell
Get-Benchmark [<CommonParameters>]
```
```PowerShell
Get-Benchmark [-BenchmarkPath] <String[]> [<CommonParameters>]
```
```PowerShell
Get-Benchmark -ModuleName <String> [<CommonParameters>]
```
