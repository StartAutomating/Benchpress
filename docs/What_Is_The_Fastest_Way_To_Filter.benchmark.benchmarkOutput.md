---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 118022
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.36599537037037e-07
      TotalHours: 3.27838888888889e-06
      TotalMilliseconds: 11.8022
      TotalMinutes: 0.000196703333333333
      TotalSeconds: 0.0118022
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 847.29965599634
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 133037
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.53978009259259e-07
      TotalHours: 3.69547222222222e-06
      TotalMilliseconds: 13.3037
      TotalMinutes: 0.000221728333333333
      TotalSeconds: 0.0133037
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 1.12722204334785
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 751.670587881567
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 365355
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.22864583333333e-07
      TotalHours: 1.014875e-05
      TotalMilliseconds: 36.5355
      TotalMinutes: 0.000608925
      TotalSeconds: 0.0365355
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 3.09565165816543
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 273.706395149923
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 756810
      Days: 0
      Hours: 0
      Milliseconds: 75
      Minutes: 0
      Seconds: 0
      TotalDays: 8.759375e-07
      TotalHours: 2.10225e-05
      TotalMilliseconds: 75.681
      TotalMinutes: 0.00126135
      TotalSeconds: 0.075681
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 6.4124485265459
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 132.133560603058
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 4495242
      Days: 0
      Hours: 0
      Milliseconds: 449
      Minutes: 0
      Seconds: 0
      TotalDays: 5.20282638888889e-06
      TotalHours: 0.000124867833333333
      TotalMilliseconds: 449.5242
      TotalMinutes: 0.00749207
      TotalSeconds: 0.4495242
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 38.088170002203
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 22.2457433882314
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 6077731
      Days: 0
      Hours: 0
      Milliseconds: 607
      Minutes: 0
      Seconds: 0
      TotalDays: 7.03441087962963e-06
      TotalHours: 0.000168825861111111
      TotalMilliseconds: 607.7731
      TotalMinutes: 0.0101295516666667
      TotalSeconds: 0.6077731
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 51.4965938553829
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 16.4535087189611
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 13151821
      Days: 0
      Hours: 0
      Milliseconds: 315
      Minutes: 0
      Seconds: 1
      TotalDays: 1.52220150462963e-05
      TotalHours: 0.000365328361111111
      TotalMilliseconds: 1315.1821
      TotalMinutes: 0.0219197016666667
      TotalSeconds: 1.3151821
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 111.435334090254
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 7.60350981054259
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 2853865
      Days: 0
      Hours: 0
      Milliseconds: 285
      Minutes: 0
      Seconds: 0
      TotalDays: 3.30308449074074e-06
      TotalHours: 7.92740277777778e-05
      TotalMilliseconds: 285.3865
      TotalMinutes: 0.00475644166666667
      TotalSeconds: 0.2853865
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 35.0401998693001
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 7802476
      Days: 0
      Hours: 0
      Milliseconds: 780
      Minutes: 0
      Seconds: 0
      TotalDays: 9.03064351851852e-06
      TotalHours: 0.000216735444444444
      TotalMilliseconds: 780.2476
      TotalMinutes: 0.0130041266666667
      TotalSeconds: 0.7802476
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 2.73400318515417
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 12.8164444209761
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 42074706
      Days: 0
      Hours: 0
      Milliseconds: 207
      Minutes: 0
      Seconds: 4
      TotalDays: 4.86975763888889e-05
      TotalHours: 0.00116874183333333
      TotalMilliseconds: 4207.4706
      TotalMinutes: 0.07012451
      TotalSeconds: 4.2074706
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 14.7430610768204
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 2.37672486647916
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 92571783
      Days: 0
      Hours: 0
      Milliseconds: 257
      Minutes: 0
      Seconds: 9
      TotalDays: 0.000107143267361111
      TotalHours: 0.00257143841666667
      TotalMilliseconds: 9257.1783
      TotalMinutes: 0.154286305
      TotalSeconds: 9.2571783
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 32.4373377857747
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1.08024277765072
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 79333
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.18206018518519e-08
      TotalHours: 2.20369444444444e-06
      TotalMilliseconds: 7.9333
      TotalMinutes: 0.000132221666666667
      TotalSeconds: 0.0079333
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 12605.0949793907
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 84100
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.7337962962963e-08
      TotalHours: 2.33611111111111e-06
      TotalMilliseconds: 8.41
      TotalMinutes: 0.000140166666666667
      TotalSeconds: 0.00841
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.06008848776676
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11890.6064209275
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: Filter
    Time: 
      Ticks: 91207
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05563657407407e-07
      TotalHours: 2.53352777777778e-06
      TotalMilliseconds: 9.1207
      TotalMinutes: 0.000152011666666667
      TotalSeconds: 0.0091207
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.14967289778528
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10964.0707401844
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: WhereObject
    Time: 
      Ticks: 234670
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.71608796296296e-07
      TotalHours: 6.51861111111111e-06
      TotalMilliseconds: 23.467
      TotalMinutes: 0.000391116666666667
      TotalSeconds: 0.023467
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 2.95803763881361
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 4261.30310648997
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotInline
    Time: 
      Ticks: 307278
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.55645833333333e-07
      TotalHours: 8.5355e-06
      TotalMilliseconds: 30.7278
      TotalMinutes: 0.00051213
      TotalSeconds: 0.0307278
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.87326837507721
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 3254.3820253972
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 308231
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.56748842592593e-07
      TotalHours: 8.56197222222222e-06
      TotalMilliseconds: 30.8231
      TotalMinutes: 0.000513718333333333
      TotalSeconds: 0.0308231
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.88528103059257
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 3244.32000674819
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2095
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|DotScriptBlockVariable|100        |00:00:00.007933|1x           |12605.09/s|
|ScriptBlockVariable   |100        |00:00:00.008410|1.06x        |11890.61/s|
|Filter                |100        |00:00:00.009120|1.15x        |10964.07/s|
|WhereObject           |100        |00:00:00.023467|2.96x        |4261.3/s  |
|DotInline             |100        |00:00:00.030727|3.87x        |3254.38/s |
|InlineScriptBlock     |100        |00:00:00.030823|3.89x        |3244.32/s |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.285386|1x           |35.04/s   |
|Pipe to ScriptBlock               |10         |00:00:00.780247|2.73x        |12.82/s   |
|.Where Method                     |10         |00:00:04.207470|14.74x       |2.38/s    |
|Where-Object Property (Positional)|10         |00:00:09.257178|32.44x       |1.08/s    |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Explicit Array)|10         |00:00:00.011802|1x           |847.3/s   |
|ForEach Loop                    |10         |00:00:00.013303|1.13x        |751.67/s  |
|Operator Filter (Assumed Array) |10         |00:00:00.036535|3.1x         |273.71/s  |
|Pipe to ScriptBlock             |10         |00:00:00.075681|6.41x        |132.13/s  |
|.Where Method                   |10         |00:00:00.449524|38.09x       |22.25/s   |
|Linq.Enumerable::Where          |10         |00:00:00.607773|51.5x        |16.45/s   |
|Where-Object Script (Positional)|10         |00:00:01.315182|111.44x      |7.6/s     |
