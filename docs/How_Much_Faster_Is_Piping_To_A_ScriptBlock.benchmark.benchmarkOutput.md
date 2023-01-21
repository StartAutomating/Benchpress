---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1350597
      Days: 0
      Hours: 0
      Milliseconds: 135
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56319097222222e-06
      TotalHours: 3.75165833333333e-05
      TotalMilliseconds: 135.0597
      TotalMinutes: 0.002250995
      TotalSeconds: 0.1350597
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7581.8323304435
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1458086
      Days: 0
      Hours: 0
      Milliseconds: 145
      Minutes: 0
      Seconds: 0
      TotalDays: 1.68759953703704e-06
      TotalHours: 4.05023888888889e-05
      TotalMilliseconds: 145.8086
      TotalMinutes: 0.00243014333333333
      TotalSeconds: 0.1458086
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.07958628665694
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7022.90537046512
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5794080
      Days: 0
      Hours: 0
      Milliseconds: 579
      Minutes: 0
      Seconds: 0
      TotalDays: 6.70611111111111e-06
      TotalHours: 0.000160946666666667
      TotalMilliseconds: 579.408
      TotalMinutes: 0.0096568
      TotalSeconds: 0.579408
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 4.29001397159923
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1767.32112777179
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 7139937
      Days: 0
      Hours: 0
      Milliseconds: 713
      Minutes: 0
      Seconds: 0
      TotalDays: 8.26381597222222e-06
      TotalHours: 0.000198331583333333
      TotalMilliseconds: 713.9937
      TotalMinutes: 0.011899895
      TotalSeconds: 0.7139937
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 5.28650441249314
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1434.186324053
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2793
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2793 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.135059|1x           |7581.83/s |
|DotScriptBlock                  |00:00:00.145808|1.08x        |7022.91/s |
|ScriptBlockWithPipelineParameter|00:00:00.579408|4.29x        |1767.32/s |
|ForeachObject                   |00:00:00.713993|5.29x        |1434.19/s |
