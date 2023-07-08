---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 120721
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.3972337962963e-07
      TotalHours: 3.35336111111111e-06
      TotalMilliseconds: 12.0721
      TotalMinutes: 0.000201201666666667
      TotalSeconds: 0.0120721
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 828.356292608577
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 128752
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.49018518518519e-07
      TotalHours: 3.57644444444444e-06
      TotalMilliseconds: 12.8752
      TotalMinutes: 0.000214586666666667
      TotalSeconds: 0.0128752
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
    RelativeSpeed: 1.06652529385939
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 776.686964085995
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 164059
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.89883101851852e-07
      TotalHours: 4.55719444444444e-06
      TotalMilliseconds: 16.4059
      TotalMinutes: 0.000273431666666667
      TotalSeconds: 0.0164059
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
    RelativeSpeed: 1.3589930500907
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 609.53681297582
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1246021
      Days: 0
      Hours: 0
      Milliseconds: 124
      Minutes: 0
      Seconds: 0
      TotalDays: 1.44215393518519e-06
      TotalHours: 3.46116944444444e-05
      TotalMilliseconds: 124.6021
      TotalMinutes: 0.00207670166666667
      TotalSeconds: 0.1246021
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
    RelativeSpeed: 10.3214933607243
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 80.255469209588
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 6391266
      Days: 0
      Hours: 0
      Milliseconds: 639
      Minutes: 0
      Seconds: 0
      TotalDays: 7.39729861111111e-06
      TotalHours: 0.000177535166666667
      TotalMilliseconds: 639.1266
      TotalMinutes: 0.01065211
      TotalSeconds: 0.6391266
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
    RelativeSpeed: 52.9424540883525
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 15.6463523815156
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 8747338
      Days: 0
      Hours: 0
      Milliseconds: 874
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01242337962963e-05
      TotalHours: 0.000242981611111111
      TotalMilliseconds: 874.7338
      TotalMinutes: 0.0145788966666667
      TotalSeconds: 0.8747338
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
    RelativeSpeed: 72.4591247587412
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 11.4320493846242
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 17823119
      Days: 0
      Hours: 0
      Milliseconds: 782
      Minutes: 0
      Seconds: 1
      TotalDays: 2.06286099537037e-05
      TotalHours: 0.000495086638888889
      TotalMilliseconds: 1782.3119
      TotalMinutes: 0.0297051983333333
      TotalSeconds: 1.7823119
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
    RelativeSpeed: 147.638927775615
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 5.6106902501184
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 3032330
      Days: 0
      Hours: 0
      Milliseconds: 303
      Minutes: 0
      Seconds: 0
      TotalDays: 3.5096412037037e-06
      TotalHours: 8.42313888888889e-05
      TotalMilliseconds: 303.233
      TotalMinutes: 0.00505388333333333
      TotalSeconds: 0.303233
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 32.9779410552282
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 8834079
      Days: 0
      Hours: 0
      Milliseconds: 883
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02246284722222e-05
      TotalHours: 0.000245391083333333
      TotalMilliseconds: 883.4079
      TotalMinutes: 0.014723465
      TotalSeconds: 0.8834079
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
    RelativeSpeed: 2.91329736539229
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 11.3197991550676
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 46673004
      Days: 0
      Hours: 0
      Milliseconds: 667
      Minutes: 0
      Seconds: 4
      TotalDays: 5.40196805555556e-05
      TotalHours: 0.00129647233333333
      TotalMilliseconds: 4667.3004
      TotalMinutes: 0.07778834
      TotalSeconds: 4.6673004
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
    RelativeSpeed: 15.3917957478243
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 2.14256618236958
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 107529224
      Days: 0
      Hours: 0
      Milliseconds: 752
      Minutes: 0
      Seconds: 10
      TotalDays: 0.00012445512037037
      TotalHours: 0.00298692288888889
      TotalMilliseconds: 10752.9224
      TotalMinutes: 0.179215373333333
      TotalSeconds: 10.7529224
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
    RelativeSpeed: 35.4609241078642
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 0.929979742065283
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 107112
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.23972222222222e-07
      TotalHours: 2.97533333333333e-06
      TotalMilliseconds: 10.7112
      TotalMinutes: 0.00017852
      TotalSeconds: 0.0107112
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 9336.02210770035
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 107398
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.24303240740741e-07
      TotalHours: 2.98327777777778e-06
      TotalMilliseconds: 10.7398
      TotalMinutes: 0.000178996666666667
      TotalSeconds: 0.0107398
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
    RelativeSpeed: 1.0026701023228
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 9311.16035680366
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotInline
    Time: 
      Ticks: 109428
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.26652777777778e-07
      TotalHours: 3.03966666666667e-06
      TotalMilliseconds: 10.9428
      TotalMinutes: 0.00018238
      TotalSeconds: 0.0109428
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.02162222720143
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 9138.42892129985
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 115297
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.33445601851852e-07
      TotalHours: 3.20269444444444e-06
      TotalMilliseconds: 11.5297
      TotalMinutes: 0.000192161666666667
      TotalSeconds: 0.0115297
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.07641534095153
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 8673.25255644119
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: Filter
    Time: 
      Ticks: 241047
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.78989583333333e-07
      TotalHours: 6.69575e-06
      TotalMilliseconds: 24.1047
      TotalMinutes: 0.000401745
      TotalSeconds: 0.0241047
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | isOdd        
              
    RelativeSpeed: 2.25042012099485
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 4148.56853642651
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: WhereObject
    Time: 
      Ticks: 466460
      Days: 0
      Hours: 0
      Milliseconds: 46
      Minutes: 0
      Seconds: 0
      TotalDays: 5.39884259259259e-07
      TotalHours: 1.29572222222222e-05
      TotalMilliseconds: 46.646
      TotalMinutes: 0.000777433333333333
      TotalSeconds: 0.046646
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
    RelativeSpeed: 4.35488087235791
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2143.80654289757
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2095
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|ScriptBlockVariable   |100        |00:00:00.010711|1x           |9336.02/s |
|DotScriptBlockVariable|100        |00:00:00.010739|1x           |9311.16/s |
|DotInline             |100        |00:00:00.010942|1.02x        |9138.43/s |
|InlineScriptBlock     |100        |00:00:00.011529|1.08x        |8673.25/s |
|Filter                |100        |00:00:00.024104|2.25x        |4148.57/s |
|WhereObject           |100        |00:00:00.046646|4.35x        |2143.81/s |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.303233|1x           |32.98/s   |
|Pipe to ScriptBlock               |10         |00:00:00.883407|2.91x        |11.32/s   |
|.Where Method                     |10         |00:00:04.667300|15.39x       |2.14/s    |
|Where-Object Property (Positional)|10         |00:00:10.752922|35.46x       |0.93/s    |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |10         |00:00:00.012072|1x           |828.36/s  |
|ForEach Loop                    |10         |00:00:00.012875|1.07x        |776.69/s  |
|Operator Filter (Explicit Array)|10         |00:00:00.016405|1.36x        |609.54/s  |
|Pipe to ScriptBlock             |10         |00:00:00.124602|10.32x       |80.26/s   |
|.Where Method                   |10         |00:00:00.639126|52.94x       |15.65/s   |
|Linq.Enumerable::Where          |10         |00:00:00.874733|72.46x       |11.43/s   |
|Where-Object Script (Positional)|10         |00:00:01.782311|147.64x      |5.61/s    |
