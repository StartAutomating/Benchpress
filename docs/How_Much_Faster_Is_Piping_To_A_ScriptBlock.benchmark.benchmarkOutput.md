---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1920589
      Days: 0
      Hours: 0
      Milliseconds: 192
      Minutes: 0
      Seconds: 0
      TotalDays: 2.22290393518519e-06
      TotalHours: 5.33496944444444e-05
      TotalMilliseconds: 192.0589
      TotalMinutes: 0.00320098166666667
      TotalSeconds: 0.1920589
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
    ClockSpeed: 2397
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 5331.69772397947
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1974155
      Days: 0
      Hours: 0
      Milliseconds: 197
      Minutes: 0
      Seconds: 0
      TotalDays: 2.28490162037037e-06
      TotalHours: 5.48376388888889e-05
      TotalMilliseconds: 197.4155
      TotalMinutes: 0.00329025833333333
      TotalSeconds: 0.1974155
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.02789040237136
    ClockSpeed: 2397
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 5187.02938725683
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 6843701
      Days: 0
      Hours: 0
      Milliseconds: 684
      Minutes: 0
      Seconds: 0
      TotalDays: 7.92095023148148e-06
      TotalHours: 0.000190102805555556
      TotalMilliseconds: 684.3701
      TotalMinutes: 0.0114061683333333
      TotalSeconds: 0.6843701
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
    RelativeSpeed: 3.56333447707969
    ClockSpeed: 2397
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1496.26642075684
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 9517378
      Days: 0
      Hours: 0
      Milliseconds: 951
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10154837962963e-05
      TotalHours: 0.000264371611111111
      TotalMilliseconds: 951.7378
      TotalMinutes: 0.0158622966666667
      TotalSeconds: 0.9517378
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 4.9554475215676
    ClockSpeed: 2397
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1075.92658398143
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2397
---


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.192058|1x           |5331.7/s  |
|DotScriptBlock                  |00:00:00.197415|1.03x        |5187.03/s |
|ScriptBlockWithPipelineParameter|00:00:00.684370|3.56x        |1496.27/s |
|ForeachObject                   |00:00:00.951737|4.96x        |1075.93/s |
