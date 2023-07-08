---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 102022
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.18081018518519e-07
      TotalHours: 2.83394444444444e-06
      TotalMilliseconds: 10.2022
      TotalMinutes: 0.000170036666666667
      TotalSeconds: 0.0102022
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        GroupName: Filtering Values
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 980.180745329439
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 153346
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.77483796296296e-07
      TotalHours: 4.25961111111111e-06
      TotalMilliseconds: 15.3346
      TotalMinutes: 0.000255576666666667
      TotalSeconds: 0.0153346
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        GroupName: Filtering Values
    RelativeSpeed: 1.50306796573288
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 652.120042257379
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 156906
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.81604166666667e-07
      TotalHours: 4.3585e-06
      TotalMilliseconds: 15.6906
      TotalMinutes: 0.00026151
      TotalSeconds: 0.0156906
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        GroupName: Filtering Values
    RelativeSpeed: 1.53796240026661
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 637.324257835902
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1212164
      Days: 0
      Hours: 0
      Milliseconds: 121
      Minutes: 0
      Seconds: 0
      TotalDays: 1.40296759259259e-06
      TotalHours: 3.36712222222222e-05
      TotalMilliseconds: 121.2164
      TotalMinutes: 0.00202027333333333
      TotalSeconds: 0.1212164
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        GroupName: Filtering Values
    RelativeSpeed: 11.8813981298151
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 82.4970878527988
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: .Where Method
    Time: 
      Ticks: 5954954
      Days: 0
      Hours: 0
      Milliseconds: 595
      Minutes: 0
      Seconds: 0
      TotalDays: 6.89230787037037e-06
      TotalHours: 0.000165415388888889
      TotalMilliseconds: 595.4954
      TotalMinutes: 0.00992492333333333
      TotalSeconds: 0.5954954
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        GroupName: Filtering Values
    RelativeSpeed: 58.3693125012252
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 16.7927409682762
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 8155476
      Days: 0
      Hours: 0
      Milliseconds: 815
      Minutes: 0
      Seconds: 0
      TotalDays: 9.43920833333333e-06
      TotalHours: 0.000226541
      TotalMilliseconds: 815.5476
      TotalMinutes: 0.01359246
      TotalSeconds: 0.8155476
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        GroupName: Filtering Values
    RelativeSpeed: 79.9384054419635
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 12.2616999915149
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 16928510
      Days: 0
      Hours: 0
      Milliseconds: 692
      Minutes: 0
      Seconds: 1
      TotalDays: 1.95931828703704e-05
      TotalHours: 0.000470236388888889
      TotalMilliseconds: 1692.851
      TotalMinutes: 0.0282141833333333
      TotalSeconds: 1.692851
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        GroupName: Filtering Values
    RelativeSpeed: 165.929995491169
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 5.90719443116967
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 3327830
      Days: 0
      Hours: 0
      Milliseconds: 332
      Minutes: 0
      Seconds: 0
      TotalDays: 3.85165509259259e-06
      TotalHours: 9.24397222222222e-05
      TotalMilliseconds: 332.783
      TotalMinutes: 0.00554638333333333
      TotalSeconds: 0.332783
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        GroupName: Filtering by Property Values
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 30.0496119092622
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 10142019
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 1
      TotalDays: 1.17384479166667e-05
      TotalHours: 0.00028172275
      TotalMilliseconds: 1014.2019
      TotalMinutes: 0.016903365
      TotalSeconds: 1.0142019
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        GroupName: Filtering by Property Values
    RelativeSpeed: 3.04763734926363
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 9.85996969636914
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: .Where Method
    Time: 
      Ticks: 54656834
      Days: 0
      Hours: 0
      Milliseconds: 465
      Minutes: 0
      Seconds: 5
      TotalDays: 6.3260224537037e-05
      TotalHours: 0.00151824538888889
      TotalMilliseconds: 5465.6834
      TotalMinutes: 0.0910947233333333
      TotalSeconds: 5.4656834
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        GroupName: Filtering by Property Values
    RelativeSpeed: 16.4241664988897
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1.82959737477659
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 113175169
      Days: 0
      Hours: 0
      Milliseconds: 317
      Minutes: 0
      Seconds: 11
      TotalDays: 0.000130989778935185
      TotalHours: 0.00314375469444444
      TotalMilliseconds: 11317.5169
      TotalMinutes: 0.188625281666667
      TotalSeconds: 11.3175169
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        GroupName: Filtering by Property Values
    RelativeSpeed: 34.0086990621516
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 0.883586045274649
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 103352
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1962037037037e-07
      TotalHours: 2.87088888888889e-06
      TotalMilliseconds: 10.3352
      TotalMinutes: 0.000172253333333333
      TotalSeconds: 0.0103352
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 9675.67149160152
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 104738
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.21224537037037e-07
      TotalHours: 2.90938888888889e-06
      TotalMilliseconds: 10.4738
      TotalMinutes: 0.000174563333333333
      TotalSeconds: 0.0104738
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.01341048068736
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 9547.63314174416
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 108498
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25576388888889e-07
      TotalHours: 3.01383333333333e-06
      TotalMilliseconds: 10.8498
      TotalMinutes: 0.00018083
      TotalSeconds: 0.0108498
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.04979100549578
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 9216.7597559402
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 112732
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.30476851851852e-07
      TotalHours: 3.13144444444444e-06
      TotalMilliseconds: 11.2732
      TotalMinutes: 0.000187886666666667
      TotalSeconds: 0.0112732
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.09075779859122
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 8870.59574921052
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 390719
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.52221064814815e-07
      TotalHours: 1.08533055555556e-05
      TotalMilliseconds: 39.0719
      TotalMinutes: 0.000651198333333333
      TotalSeconds: 0.0390719
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.78046868952705
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2559.38410980782
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 589552
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.82351851851852e-07
      TotalHours: 1.63764444444444e-05
      TotalMilliseconds: 58.9552
      TotalMinutes: 0.000982586666666667
      TotalSeconds: 0.0589552
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 5.70431147921666
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 1696.20321871523
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2095
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|ScriptBlockVariable   |100        |00:00:00.010335|1x           |9675.67/s |
|DotScriptBlockVariable|100        |00:00:00.010473|1.01x        |9547.63/s |
|InlineScriptBlock     |100        |00:00:00.010849|1.05x        |9216.76/s |
|Filter                |100        |00:00:00.011273|1.09x        |8870.6/s  |
|DotInline             |100        |00:00:00.039071|3.78x        |2559.38/s |
|WhereObject           |100        |00:00:00.058955|5.7x         |1696.2/s  |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.332783|1x           |30.05/s   |
|Pipe to ScriptBlock               |10         |00:00:01.014201|3.05x        |9.86/s    |
|.Where Method                     |10         |00:00:05.465683|16.42x       |1.83/s    |
|Where-Object Property (Positional)|10         |00:00:11.317516|34.01x       |0.88/s    |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |10         |00:00:00.010202|1x           |980.18/s  |
|Operator Filter (Explicit Array)|10         |00:00:00.015334|1.5x         |652.12/s  |
|ForEach Loop                    |10         |00:00:00.015690|1.54x        |637.32/s  |
|Pipe to ScriptBlock             |10         |00:00:00.121216|11.88x       |82.5/s    |
|.Where Method                   |10         |00:00:00.595495|58.37x       |16.79/s   |
|Linq.Enumerable::Where          |10         |00:00:00.815547|79.94x       |12.26/s   |
|Where-Object Script (Positional)|10         |00:00:01.692851|165.93x      |5.91/s    |
