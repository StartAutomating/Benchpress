---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1567723
      Days: 0
      Hours: 0
      Milliseconds: 156
      Minutes: 0
      Seconds: 0
      TotalDays: 1.81449421296296e-06
      TotalHours: 4.35478611111111e-05
      TotalMilliseconds: 156.7723
      TotalMinutes: 0.00261287166666667
      TotalSeconds: 0.1567723
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
    RepeatCount: 1024
    Throughput: 6531.76613470619
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1704544
      Days: 0
      Hours: 0
      Milliseconds: 170
      Minutes: 0
      Seconds: 0
      TotalDays: 1.97285185185185e-06
      TotalHours: 4.73484444444444e-05
      TotalMilliseconds: 170.4544
      TotalMinutes: 0.00284090666666667
      TotalSeconds: 0.1704544
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
    RelativeSpeed: 1.08727370842936
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 6007.4717930426
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 6786747
      Days: 0
      Hours: 0
      Milliseconds: 678
      Minutes: 0
      Seconds: 0
      TotalDays: 7.85503125e-06
      TotalHours: 0.00018852075
      TotalMilliseconds: 678.6747
      TotalMinutes: 0.011311245
      TotalSeconds: 0.6786747
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
                      
    RelativeSpeed: 4.32904728705262
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1508.82300459999
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 9087432
      Days: 0
      Hours: 0
      Milliseconds: 908
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05178611111111e-05
      TotalHours: 0.000252428666666667
      TotalMilliseconds: 908.7432
      TotalMinutes: 0.01514572
      TotalSeconds: 0.9087432
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
    RelativeSpeed: 5.79658013564896
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1126.83099031718
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2095
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.156772|1x           |6531.77/s |
|DotScriptBlock                  |1024       |00:00:00.170454|1.09x        |6007.47/s |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.678674|4.33x        |1508.82/s |
|ForeachObject                   |1024       |00:00:00.908743|5.8x         |1126.83/s |
