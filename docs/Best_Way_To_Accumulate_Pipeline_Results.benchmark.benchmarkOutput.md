---
layout: Benchmark

Data: 
  - Technique: Array
    Time: 
      Ticks: 218902
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.53358796296296e-07
      TotalHours: 6.08061111111111e-06
      TotalMilliseconds: 21.8902
      TotalMinutes: 0.000364836666666667
      TotalSeconds: 0.0218902
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 4568.25428730665
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 234408
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.71305555555556e-07
      TotalHours: 6.51133333333333e-06
      TotalMilliseconds: 23.4408
      TotalMinutes: 0.00039068
      TotalSeconds: 0.0234408
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.07083535097898
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 4266.06600457322
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 548551
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.34896990740741e-07
      TotalHours: 1.52375277777778e-05
      TotalMilliseconds: 54.8551
      TotalMinutes: 0.000914251666666667
      TotalSeconds: 0.0548551
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.50592045755635
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 1822.98455385188
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 585869
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.7808912037037e-07
      TotalHours: 1.62741388888889e-05
      TotalMilliseconds: 58.5869
      TotalMinutes: 0.000976448333333333
      TotalSeconds: 0.0585869
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.67639857105006
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 1706.86621070581
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2295
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2295 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Array     |00:00:00.021890|1x           |4568.25/s |
|Arraylist |00:00:00.023440|1.07x        |4266.07/s |
|Tee-Object|00:00:00.054855|2.51x        |1822.98/s |
|Queue     |00:00:00.058586|2.68x        |1706.87/s |
