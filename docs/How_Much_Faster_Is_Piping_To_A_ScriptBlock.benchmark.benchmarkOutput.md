---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1752089
      Days: 0
      Hours: 0
      Milliseconds: 175
      Minutes: 0
      Seconds: 0
      TotalDays: 2.02788078703704e-06
      TotalHours: 4.86691388888889e-05
      TotalMilliseconds: 175.2089
      TotalMinutes: 0.00292014833333333
      TotalSeconds: 0.1752089
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
    ClockSpeed: 2394
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 5844.45196562503
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1848335
      Days: 0
      Hours: 0
      Milliseconds: 184
      Minutes: 0
      Seconds: 0
      TotalDays: 2.13927662037037e-06
      TotalHours: 5.13426388888889e-05
      TotalMilliseconds: 184.8335
      TotalMinutes: 0.00308055833333333
      TotalSeconds: 0.1848335
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.05493214100425
    ClockSpeed: 2394
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 5540.12124425496
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 6769337
      Days: 0
      Hours: 0
      Milliseconds: 676
      Minutes: 0
      Seconds: 0
      TotalDays: 7.83488078703704e-06
      TotalHours: 0.000188037138888889
      TotalMilliseconds: 676.9337
      TotalMinutes: 0.0112822283333333
      TotalSeconds: 0.6769337
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
    RelativeSpeed: 3.86358056011995
    ClockSpeed: 2394
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1512.70353359568
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 9231261
      Days: 0
      Hours: 0
      Milliseconds: 923
      Minutes: 0
      Seconds: 0
      TotalDays: 1.06843298611111e-05
      TotalHours: 0.000256423916666667
      TotalMilliseconds: 923.1261
      TotalMinutes: 0.015385435
      TotalSeconds: 0.9231261
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 5.268716943032
    ClockSpeed: 2394
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1109.27423674837
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2394
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2394 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.175208|1x           |5844.45/s |
|DotScriptBlock                  |00:00:00.184833|1.05x        |5540.12/s |
|ScriptBlockWithPipelineParameter|00:00:00.676933|3.86x        |1512.7/s  |
|ForeachObject                   |00:00:00.923126|5.27x        |1109.27/s |
