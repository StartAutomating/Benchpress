---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1587620
      Days: 0
      Hours: 0
      Milliseconds: 158
      Minutes: 0
      Seconds: 0
      TotalDays: 1.83752314814815e-06
      TotalHours: 4.41005555555556e-05
      TotalMilliseconds: 158.762
      TotalMinutes: 0.00264603333333333
      TotalSeconds: 0.158762
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 6449.90614882655
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1706985
      Days: 0
      Hours: 0
      Milliseconds: 170
      Minutes: 0
      Seconds: 0
      TotalDays: 1.97567708333333e-06
      TotalHours: 4.741625e-05
      TotalMilliseconds: 170.6985
      TotalMinutes: 0.002844975
      TotalSeconds: 0.1706985
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
    RelativeSpeed: 1.0751848679155
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 5998.88106808203
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 6743360
      Days: 0
      Hours: 0
      Milliseconds: 674
      Minutes: 0
      Seconds: 0
      TotalDays: 7.80481481481481e-06
      TotalHours: 0.000187315555555556
      TotalMilliseconds: 674.336
      TotalMinutes: 0.0112389333333333
      TotalSeconds: 0.674336
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
    RelativeSpeed: 4.24746475856943
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1518.53082143027
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 8762022
      Days: 0
      Hours: 0
      Milliseconds: 876
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01412291666667e-05
      TotalHours: 0.0002433895
      TotalMilliseconds: 876.2022
      TotalMinutes: 0.01460337
      TotalSeconds: 0.8762022
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
    RelativeSpeed: 5.51896675526889
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1168.68001472719
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2095
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2095 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.158762|1x           |6449.91/s |
|DotScriptBlock                  |00:00:00.170698|1.08x        |5998.88/s |
|ScriptBlockWithPipelineParameter|00:00:00.674336|4.25x        |1518.53/s |
|ForeachObject                   |00:00:00.876202|5.52x        |1168.68/s |
