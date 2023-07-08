---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1724750
      Days: 0
      Hours: 0
      Milliseconds: 172
      Minutes: 0
      Seconds: 0
      TotalDays: 1.99623842592593e-06
      TotalHours: 4.79097222222222e-05
      TotalMilliseconds: 172.475
      TotalMinutes: 0.00287458333333333
      TotalSeconds: 0.172475
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 5937.09233222206
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1830752
      Days: 0
      Hours: 0
      Milliseconds: 183
      Minutes: 0
      Seconds: 0
      TotalDays: 2.11892592592593e-06
      TotalHours: 5.08542222222222e-05
      TotalMilliseconds: 183.0752
      TotalMinutes: 0.00305125333333333
      TotalSeconds: 0.1830752
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
    RelativeSpeed: 1.06145934193361
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 5593.32995402982
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 7193002
      Days: 0
      Hours: 0
      Milliseconds: 719
      Minutes: 0
      Seconds: 0
      TotalDays: 8.3252337962963e-06
      TotalHours: 0.000199805611111111
      TotalMilliseconds: 719.3002
      TotalMinutes: 0.0119883366666667
      TotalSeconds: 0.7193002
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
    RelativeSpeed: 4.1704606464705
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1423.6058880562
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 9257238
      Days: 0
      Hours: 0
      Milliseconds: 925
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07143958333333e-05
      TotalHours: 0.0002571455
      TotalMilliseconds: 925.7238
      TotalMinutes: 0.01542873
      TotalSeconds: 0.9257238
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
    RelativeSpeed: 5.36729265110886
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1106.16147062439
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2295
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2295 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.172475|1x           |5937.09/s |
|DotScriptBlock                  |00:00:00.183075|1.06x        |5593.33/s |
|ScriptBlockWithPipelineParameter|00:00:00.719300|4.17x        |1423.61/s |
|ForeachObject                   |00:00:00.925723|5.37x        |1106.16/s |
