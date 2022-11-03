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



> **Type**: ```[String]```

> **Required**: true

> **Position**: 1

> **PipelineInput**:true (ByPropertyName)



---
#### **ScriptBlock**

A script block to execute.



> **Type**: ```[ScriptBlock]```

> **Required**: true

> **Position**: 1

> **PipelineInput**:true (ByValue)



---
#### **Parameter**

A hashtable of parameters.  These can be passed to either a command or a script block.



> **Type**: ```[IDictionary]```

> **Required**: false

> **Position**: named

> **PipelineInput**:true (ByPropertyName)



---
#### **ArgumentList**

A list of positional arguments.



> **Type**: ```[PSObject[]]```

> **Required**: false

> **Position**: named

> **PipelineInput**:true (ByPropertyName)



---
#### **Technique**

A hashtable of techniques to compare



> **Type**: ```[IDictionary]```

> **Required**: true

> **Position**: 1

> **PipelineInput**:true (ByPropertyName)



---
#### **RepeatCount**

The number of times to repeat the benchmark.



> **Type**: ```[UInt32]```

> **Required**: false

> **Position**: 2

> **PipelineInput**:true (ByPropertyName)



---
#### **Detailed**

If set, will provide detailed output, containing average runtimes, minimums, and maximums.



> **Type**: ```[Switch]```

> **Required**: false

> **Position**: named

> **PipelineInput**:true (ByPropertyName)



---
#### **FileName**

The name of the file that contains the benchmark (excluding the extension).
This is used for reporting, and will be automatically populated by Get-Benchmark.



> **Type**: ```[String]```

> **Required**: false

> **Position**: 3

> **PipelineInput**:true (ByPropertyName)



---
#### **GroupName**

The name of a logical group.  This is used for reporting.



> **Type**: ```[String]```

> **Required**: false

> **Position**: named

> **PipelineInput**:true (ByPropertyName)



---
#### **AsJob**

If set, will launch as a job.



> **Type**: ```[Switch]```

> **Required**: false

> **Position**: named

> **PipelineInput**:true (ByPropertyName)



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
---
