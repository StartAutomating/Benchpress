---
layout: Benchmark

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 218406
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.52784722222222e-07
      TotalHours: 6.06683333333333e-06
      TotalMilliseconds: 21.8406
      TotalMinutes: 0.00036401
      TotalSeconds: 0.0218406
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2394
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 4578.6287922493
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 229030
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.65081018518519e-07
      TotalHours: 6.36194444444444e-06
      TotalMilliseconds: 22.903
      TotalMinutes: 0.000381716666666667
      TotalSeconds: 0.022903
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.04864335228886
    ClockSpeed: 2394
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 4366.24023053748
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 277367
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.2102662037037e-07
      TotalHours: 7.70463888888889e-06
      TotalMilliseconds: 27.7367
      TotalMinutes: 0.000462278333333333
      TotalSeconds: 0.0277367
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.26996053221981
    ClockSpeed: 2394
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 3605.33156431731
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 848737
      Days: 0
      Hours: 0
      Milliseconds: 84
      Minutes: 0
      Seconds: 0
      TotalDays: 9.82334490740741e-07
      TotalHours: 2.35760277777778e-05
      TotalMilliseconds: 84.8737
      TotalMinutes: 0.00141456166666667
      TotalSeconds: 0.0848737
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 3.88605166524729
    ClockSpeed: 2394
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 1178.22128645269
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2394
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2394 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Arraylist |00:00:00.021840|1x           |4578.63/s |
|Queue     |00:00:00.022903|1.05x        |4366.24/s |
|Array     |00:00:00.027736|1.27x        |3605.33/s |
|Tee-Object|00:00:00.084873|3.89x        |1178.22/s |
