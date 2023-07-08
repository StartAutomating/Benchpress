Checkpoint-Benchmark
--------------------




### Synopsis
Checkpoints benchmarks



---


### Description

Checkpoints benchmark files, executing them and storing their results.



---


### Related Links
* [Measure-Benchmark](Measure-Benchmark.md)



* [Get-Benchmark](Get-Benchmark.md)





---


### Parameters
#### **BenchmarkPath**

The path to the benchmark file






|Type        |Required|Position|PipelineInput        |Aliases              |
|------------|--------|--------|---------------------|---------------------|
|`[String[]]`|true    |1       |true (ByPropertyName)|Fullname<br/>FilePath|



#### **ModuleName**

The name of a module






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|true    |named   |true (ByPropertyName)|



#### **OutputPath**

The output path. If no OutputPath is provided, benchmarks will be executed and returned.
If a path to a folder is provided, a file will be created for each output






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|false   |named   |true (ByPropertyName)|



#### **IncludePSVersion**

If set, will include the PSVersionInfo object in returned results.
If used with -OutputPath set to a folder, will include the PSVersion in the file names






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[Switch]`|false   |named   |true (ByPropertyName)|



#### **IncludeModuleVersion**

If set, will include the module version in returned results
If used with -OutputPath set to a folder, will include the Module version in the file names






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[Switch]`|false   |named   |true (ByPropertyName)|



#### **NoTimestamp**

If set, will not include a timestamp in output file names
This is only used is -OutputPath is passed a directory name






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[Switch]`|false   |named   |true (ByPropertyName)|





---


### Outputs
* [Management.Automation.PSObject](https://learn.microsoft.com/en-us/dotnet/api/System.Management.Automation.PSObject)






---


### Syntax
```PowerShell
Checkpoint-Benchmark [-OutputPath <String>] [-IncludePSVersion] [-NoTimestamp] [<CommonParameters>]
```
```PowerShell
Checkpoint-Benchmark [-BenchmarkPath] <String[]> [-OutputPath <String>] [-IncludePSVersion] [-NoTimestamp] [<CommonParameters>]
```
```PowerShell
Checkpoint-Benchmark -ModuleName <String> [-OutputPath <String>] [-IncludePSVersion] [-IncludeModuleVersion] [-NoTimestamp] [<CommonParameters>]
```
