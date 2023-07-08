---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Queue
    Time: 
      Ticks: 170778
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 1.97659722222222e-07
      TotalHours: 4.74383333333333e-06
      TotalMilliseconds: 17.0778
      TotalMinutes: 0.00028463
      TotalSeconds: 0.0170778
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5855.55516518521
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 175242
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.02826388888889e-07
      TotalHours: 4.86783333333333e-06
      TotalMilliseconds: 17.5242
      TotalMinutes: 0.00029207
      TotalSeconds: 0.0175242
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
    RelativeSpeed: 1.02613919825739
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5706.39458577282
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 175915
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.03605324074074e-07
      TotalHours: 4.88652777777778e-06
      TotalMilliseconds: 17.5915
      TotalMinutes: 0.000293191666666667
      TotalSeconds: 0.0175915
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
    RelativeSpeed: 1.03007998688356
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5684.5635676321
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 439241
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.08380787037037e-07
      TotalHours: 1.22011388888889e-05
      TotalMilliseconds: 43.9241
      TotalMinutes: 0.000732068333333333
      TotalSeconds: 0.0439241
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
    RelativeSpeed: 2.57199990631112
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2276.65450174278
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2594
---


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Queue     |00:00:00.017077|1x           |5855.56/s |
|Array     |00:00:00.017524|1.03x        |5706.39/s |
|Arraylist |00:00:00.017591|1.03x        |5684.56/s |
|Tee-Object|00:00:00.043924|2.57x        |2276.65/s |
