---
layout: Benchmark

Data: 
  - Technique: Splatting
    Time: 00:00:00.2078716
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: |
      @{TotalTime=00:00:00.2078716; AverageTime=00:00:00.0002029; FastestTime=00:00:00.0001754; FileName=How Much Faster Is Splatting; Command=
              Add-Member @splat 
          ; BenchmarkInput=System.Collections.Hashtable; SlowestTime=00:00:00.0085229; RepeatCount=1024; TotalMilliseconds=207.8716; GroupName=}
    Throughput: 4926.11785352112
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Named
    Time: 00:00:00.2208084
    RelativeSpeed: 1.0622350527922
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: |
      @{TotalTime=00:00:00.2208084; AverageTime=00:00:00.0002156; FastestTime=00:00:00.0001824; FileName=How Much Faster Is Splatting; Command=
              Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
          ; BenchmarkInput=System.Collections.Hashtable; SlowestTime=00:00:00.0106838; RepeatCount=1024; TotalMilliseconds=220.8085; GroupName=}
    Throughput: 4637.50473260981
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Piped
    Time: 00:00:00.2231187
    RelativeSpeed: 1.07334912513301
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: |
      @{TotalTime=00:00:00.2231187; AverageTime=00:00:00.0002178; FastestTime=00:00:00.0001920; FileName=How Much Faster Is Splatting; Command=
              [PSObject]::new() | 
                  Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
          ; BenchmarkInput=System.Collections.Hashtable; SlowestTime=00:00:00.0026455; RepeatCount=1024; TotalMilliseconds=223.1188; GroupName=}
    Throughput: 4589.485327765
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Positional
    Time: 00:00:00.7806699
    RelativeSpeed: 3.75553947725422
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: |
      @{TotalTime=00:00:00.7806699; AverageTime=00:00:00.0007623; FastestTime=00:00:00.0006895; FileName=How Much Faster Is Splatting; Command=
              Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
          ; BenchmarkInput=System.Collections.Hashtable; SlowestTime=00:00:00.0071894; RepeatCount=1024; TotalMilliseconds=780.669999999999; GroupName=}
    Throughput: 1311.69396949978
    BenchmarkInput: System.Collections.Hashtable
FileName: How Much Faster Is Splatting
ClockSpeed: 2095
---
How Much Faster Is Splatting
----------------------------
> @2095 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.207871|1x           |4926.12/s |
|Named     |00:00:00.220808|1.06x        |4637.5/s  |
|Piped     |00:00:00.223118|1.07x        |4589.49/s |
|Positional|00:00:00.780669|3.76x        |1311.69/s |
