---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1461990
      Days: 0
      Hours: 0
      Milliseconds: 146
      Minutes: 0
      Seconds: 0
      TotalDays: 1.69211805555556e-06
      TotalHours: 4.06108333333333e-05
      TotalMilliseconds: 146.199
      TotalMinutes: 0.00243665
      TotalSeconds: 0.146199
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7004.15187518382
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1514894
      Days: 0
      Hours: 0
      Milliseconds: 151
      Minutes: 0
      Seconds: 0
      TotalDays: 1.75334953703704e-06
      TotalHours: 4.20803888888889e-05
      TotalMilliseconds: 151.4894
      TotalMinutes: 0.00252482333333333
      TotalSeconds: 0.1514894
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
    RelativeSpeed: 1.0361862940239
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 6759.54885292304
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 6004500
      Days: 0
      Hours: 0
      Milliseconds: 600
      Minutes: 0
      Seconds: 0
      TotalDays: 6.94965277777778e-06
      TotalHours: 0.000166791666666667
      TotalMilliseconds: 600.45
      TotalMinutes: 0.0100075
      TotalSeconds: 0.60045
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
        RepeatCount: 1024
    RelativeSpeed: 4.10707323579505
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1705.38762594721
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 7617604
      Days: 0
      Hours: 0
      Milliseconds: 761
      Minutes: 0
      Seconds: 0
      TotalDays: 8.8166712962963e-06
      TotalHours: 0.000211600111111111
      TotalMilliseconds: 761.7604
      TotalMinutes: 0.0126960066666667
      TotalSeconds: 0.7617604
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
    RelativeSpeed: 5.21043509189529
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1344.25470265979
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2594
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2594 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.146199|1x           |7004.15/s |
|DotScriptBlock                  |00:00:00.151489|1.04x        |6759.55/s |
|ScriptBlockWithPipelineParameter|00:00:00.600450|4.11x        |1705.39/s |
|ForeachObject                   |00:00:00.761760|5.21x        |1344.25/s |
