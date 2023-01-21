---
layout: Benchmark

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 158147
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.83040509259259e-07
      TotalHours: 4.39297222222222e-06
      TotalMilliseconds: 15.8147
      TotalMinutes: 0.000263578333333333
      TotalSeconds: 0.0158147
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 6323.2309180699
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 213285
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.46857638888889e-07
      TotalHours: 5.92458333333333e-06
      TotalMilliseconds: 21.3285
      TotalMinutes: 0.000355475
      TotalSeconds: 0.0213285
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.34865030636054
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 4688.56225238531
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 371649
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.30149305555556e-07
      TotalHours: 1.03235833333333e-05
      TotalMilliseconds: 37.1649
      TotalMinutes: 0.000619415
      TotalSeconds: 0.0371649
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.35002244746976
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2690.71085890181
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 383785
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.44195601851852e-07
      TotalHours: 1.06606944444444e-05
      TotalMilliseconds: 38.3785
      TotalMinutes: 0.000639641666666667
      TotalSeconds: 0.0383785
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.42676117789146
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2605.62554555285
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2793
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2793 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Arraylist |00:00:00.015814|1x           |6323.23/s |
|Queue     |00:00:00.021328|1.35x        |4688.56/s |
|Tee-Object|00:00:00.037164|2.35x        |2690.71/s |
|Array     |00:00:00.038378|2.43x        |2605.63/s |
