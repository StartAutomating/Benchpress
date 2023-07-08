---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Array
    Time: 
      Ticks: 168397
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.94903935185185e-07
      TotalHours: 4.67769444444444e-06
      TotalMilliseconds: 16.8397
      TotalMinutes: 0.000280661666666667
      TotalSeconds: 0.0168397
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5938.34807033379
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 233434
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.70178240740741e-07
      TotalHours: 6.48427777777778e-06
      TotalMilliseconds: 23.3434
      TotalMinutes: 0.000389056666666667
      TotalSeconds: 0.0233434
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.3862123434503
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 4283.86610348107
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 382031
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.42165509259259e-07
      TotalHours: 1.06119722222222e-05
      TotalMilliseconds: 38.2031
      TotalMinutes: 0.000636718333333333
      TotalSeconds: 0.0382031
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.26863305165769
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2617.58862500687
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 489137
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 0
      TotalDays: 5.66130787037037e-07
      TotalHours: 1.35871388888889e-05
      TotalMilliseconds: 48.9137
      TotalMinutes: 0.000815228333333333
      TotalSeconds: 0.0489137
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.90466576007886
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2044.4170038251
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2594
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Array     |100        |00:00:00.016839|1x           |5938.35/s |
|Queue     |100        |00:00:00.023343|1.39x        |4283.87/s |
|Tee-Object|100        |00:00:00.038203|2.27x        |2617.59/s |
|Arraylist |100        |00:00:00.048913|2.9x         |2044.42/s |
