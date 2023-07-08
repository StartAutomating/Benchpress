Measure-Benchmark
-----------------




### Synopsis
Measures a performance benchmark



---


### Description

Measures the timing of a performance benchmark, or compares the timing of multiple techniques.



---


### Related Links
* [Get-Benchmark](Get-Benchmark.md)



* [Measure-Benchmark](Measure-Benchmark.md)





---


### Examples
#### EXAMPLE 1
```PowerShell
Measure-Benchmark -Command Get-Process -RepeatCount 10
```

#### EXAMPLE 2
```PowerShell
Measure-Benchmark -ScriptBlock { Get-Process } -RepeatCount 10
```

#### EXAMPLE 3
```PowerShell
Measure-Benchmark -Technique @{
    "Get-Process" = { Get-Process }
    '[Process]::GetProcesses()' = {
        [Diagnostics.Process]::GetProcesses()
    }
} -GroupName "Fastest Way to Enumerate Processes"
```



---


### Parameters
#### **Command**

A command to run.  This can be the name of a command, or the text content of a script block.






|Type      |Required|Position|PipelineInput        |Aliases |
|----------|--------|--------|---------------------|--------|
|`[String]`|true    |1       |true (ByPropertyName)|Fullname|



#### **ScriptBlock**

A script block to execute.






|Type           |Required|Position|PipelineInput |
|---------------|--------|--------|--------------|
|`[ScriptBlock]`|true    |1       |true (ByValue)|



#### **Parameter**

A hashtable of parameters.  These can be passed to either a command or a script block.






|Type           |Required|Position|PipelineInput        |Aliases   |
|---------------|--------|--------|---------------------|----------|
|`[IDictionary]`|false   |named   |true (ByPropertyName)|Parameters|



#### **ArgumentList**

A list of positional arguments.






|Type          |Required|Position|PipelineInput        |
|--------------|--------|--------|---------------------|
|`[PSObject[]]`|false   |named   |true (ByPropertyName)|



#### **Technique**

A hashtable of techniques to compare






|Type           |Required|Position|PipelineInput        |Aliases   |
|---------------|--------|--------|---------------------|----------|
|`[IDictionary]`|true    |1       |true (ByPropertyName)|Techniques|



#### **RepeatCount**

The number of times to repeat the benchmark.






|Type      |Required|Position|PipelineInput        |Aliases                                            |
|----------|--------|--------|---------------------|---------------------------------------------------|
|`[UInt32]`|false   |2       |true (ByPropertyName)|Reps<br/>Repetitions<br/>RepetitionCount<br/>Repeat|



#### **Detailed**

If set, will provide detailed output, containing average runtimes, minimums, and maximums.






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[Switch]`|false   |named   |true (ByPropertyName)|



#### **FileName**

The name of the file that contains the benchmark (excluding the extension).
This is used for reporting, and will be automatically populated by Get-Benchmark.






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|false   |3       |true (ByPropertyName)|



#### **GroupName**

The name of a logical group.  This is used for reporting.






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|false   |named   |true (ByPropertyName)|



#### **AsJob**

If set, will launch as a job.






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[Switch]`|false   |named   |true (ByPropertyName)|





---


### Outputs
* [Management.Automation.PSObject](https://learn.microsoft.com/en-us/dotnet/api/System.Management.Automation.PSObject)






---


### Syntax
```PowerShell
Measure-Benchmark [-Technique] <IDictionary> [[-RepeatCount] <UInt32>] [-Detailed] [[-FileName] <String>] [-GroupName <String>] [-AsJob] [<CommonParameters>]
```
```PowerShell
Measure-Benchmark [-Command] <String> [-Parameter <IDictionary>] [-ArgumentList <PSObject[]>] [[-RepeatCount] <UInt32>] [-Detailed] [[-FileName] <String>] [-GroupName <String>] [-AsJob] [<CommonParameters>]
```
```PowerShell
Measure-Benchmark [-ScriptBlock] <ScriptBlock> [-Parameter <IDictionary>] [-ArgumentList <PSObject[]>] [[-RepeatCount] <UInt32>] [-Detailed] [[-FileName] <String>] [-GroupName <String>] [-AsJob] [<CommonParameters>]
```
