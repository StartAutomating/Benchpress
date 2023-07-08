---
layout: Benchmark

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 149625
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.73177083333333e-07
      TotalHours: 4.15625e-06
      TotalMilliseconds: 14.9625
      TotalMinutes: 0.000249375
      TotalSeconds: 0.0149625
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 6683.37510442774
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 158686
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.83664351851852e-07
      TotalHours: 4.40794444444444e-06
      TotalMilliseconds: 15.8686
      TotalMinutes: 0.000264476666666667
      TotalSeconds: 0.0158686
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.06055806182122
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 6301.7531477257
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 225216
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.60666666666667e-07
      TotalHours: 6.256e-06
      TotalMilliseconds: 22.5216
      TotalMinutes: 0.00037536
      TotalSeconds: 0.0225216
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.5052030075188
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 4440.18186984939
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 667875
      Days: 0
      Hours: 0
      Milliseconds: 66
      Minutes: 0
      Seconds: 0
      TotalDays: 7.73003472222222e-07
      TotalHours: 1.85520833333333e-05
      TotalMilliseconds: 66.7875
      TotalMinutes: 0.001113125
      TotalSeconds: 0.0667875
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 4.46365914786967
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 1497.28616881902
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2594
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2594 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Arraylist |00:00:00.014962|1x           |6683.38/s |
|Queue     |00:00:00.015868|1.06x        |6301.75/s |
|Array     |00:00:00.022521|1.51x        |4440.18/s |
|Tee-Object|00:00:00.066787|4.46x        |1497.29/s |
