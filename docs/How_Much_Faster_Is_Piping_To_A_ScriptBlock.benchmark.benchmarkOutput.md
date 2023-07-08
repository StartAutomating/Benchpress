---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1299532
      Days: 0
      Hours: 0
      Milliseconds: 129
      Minutes: 0
      Seconds: 0
      TotalDays: 1.50408796296296e-06
      TotalHours: 3.60981111111111e-05
      TotalMilliseconds: 129.9532
      TotalMinutes: 0.00216588666666667
      TotalSeconds: 0.1299532
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7879.75979044764
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1445321
      Days: 0
      Hours: 0
      Milliseconds: 144
      Minutes: 0
      Seconds: 0
      TotalDays: 1.67282523148148e-06
      TotalHours: 4.01478055555556e-05
      TotalMilliseconds: 144.5321
      TotalMinutes: 0.00240886833333333
      TotalSeconds: 0.1445321
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.11218577149312
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7084.93130591751
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5809533
      Days: 0
      Hours: 0
      Milliseconds: 580
      Minutes: 0
      Seconds: 0
      TotalDays: 6.72399652777778e-06
      TotalHours: 0.000161375916666667
      TotalMilliseconds: 580.9533
      TotalMinutes: 0.009682555
      TotalSeconds: 0.5809533
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 4.47048091158971
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1762.62016241237
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 7801297
      Days: 0
      Hours: 0
      Milliseconds: 780
      Minutes: 0
      Seconds: 0
      TotalDays: 9.02927893518519e-06
      TotalHours: 0.000216702694444444
      TotalMilliseconds: 780.1297
      TotalMinutes: 0.0130021616666667
      TotalSeconds: 0.7801297
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 6.00315882948631
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1312.60225062576
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2594
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2594 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.129953|1x           |7879.76/s |
|DotScriptBlock                  |00:00:00.144532|1.11x        |7084.93/s |
|ScriptBlockWithPipelineParameter|00:00:00.580953|4.47x        |1762.62/s |
|ForeachObject                   |00:00:00.780129|6x           |1312.6/s  |
