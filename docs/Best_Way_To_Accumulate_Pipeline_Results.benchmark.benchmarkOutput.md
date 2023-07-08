---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Queue
    Time: 
      Ticks: 164887
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.90841435185185e-07
      TotalHours: 4.58019444444444e-06
      TotalMilliseconds: 16.4887
      TotalMinutes: 0.000274811666666667
      TotalSeconds: 0.0164887
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 6064.75950196195
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 168319
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.94813657407407e-07
      TotalHours: 4.67552777777778e-06
      TotalMilliseconds: 16.8319
      TotalMinutes: 0.000280531666666667
      TotalSeconds: 0.0168319
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.02081425461073
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 5941.09993524201
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 168568
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.95101851851852e-07
      TotalHours: 4.68244444444444e-06
      TotalMilliseconds: 16.8568
      TotalMinutes: 0.000280946666666667
      TotalSeconds: 0.0168568
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.02232437972672
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 5932.32404726876
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 445717
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.15876157407407e-07
      TotalHours: 1.23810277777778e-05
      TotalMilliseconds: 44.5717
      TotalMinutes: 0.000742861666666667
      TotalSeconds: 0.0445717
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.70316641093597
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2243.57608078669
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2594
---


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Queue     |00:00:00.016488|1x           |6064.76/s |
|Arraylist |00:00:00.016831|1.02x        |5941.1/s  |
|Array     |00:00:00.016856|1.02x        |5932.32/s |
|Tee-Object|00:00:00.044571|2.7x         |2243.58/s |
