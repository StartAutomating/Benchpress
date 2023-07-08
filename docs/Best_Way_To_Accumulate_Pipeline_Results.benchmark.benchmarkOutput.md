---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 244178
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.82613425925926e-07
      TotalHours: 6.78272222222222e-06
      TotalMilliseconds: 24.4178
      TotalMinutes: 0.000406963333333333
      TotalSeconds: 0.0244178
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 4095.3730475309
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 263101
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.04515046296296e-07
      TotalHours: 7.30836111111111e-06
      TotalMilliseconds: 26.3101
      TotalMinutes: 0.000438501666666667
      TotalSeconds: 0.0263101
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.07749674417843
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 3800.82173765968
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 589149
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.81885416666667e-07
      TotalHours: 1.636525e-05
      TotalMilliseconds: 58.9149
      TotalMinutes: 0.000981915
      TotalSeconds: 0.0589149
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.41278493557978
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 1697.36348529829
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 665378
      Days: 0
      Hours: 0
      Milliseconds: 66
      Minutes: 0
      Seconds: 0
      TotalDays: 7.70113425925926e-07
      TotalHours: 1.84827222222222e-05
      TotalMilliseconds: 66.5378
      TotalMinutes: 0.00110896333333333
      TotalSeconds: 0.0665378
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.72497112762002
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 1502.90511558843
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2295
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Arraylist |100        |00:00:00.024417|1x           |4095.37/s |
|Array     |100        |00:00:00.026310|1.08x        |3800.82/s |
|Tee-Object|100        |00:00:00.058914|2.41x        |1697.36/s |
|Queue     |100        |00:00:00.066537|2.72x        |1502.91/s |
