---
layout: Benchmark

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 87889
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0172337962963e-07
      TotalHours: 2.44136111111111e-06
      TotalMilliseconds: 8.7889
      TotalMinutes: 0.000146481666666667
      TotalSeconds: 0.0087889
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 1137.79881441364
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 112813
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.30570601851852e-07
      TotalHours: 3.13369444444444e-06
      TotalMilliseconds: 11.2813
      TotalMinutes: 0.000188021666666667
      TotalSeconds: 0.0112813
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 1.28358497650445
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 886.422664054675
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 303598
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.51386574074074e-07
      TotalHours: 8.43327777777778e-06
      TotalMilliseconds: 30.3598
      TotalMinutes: 0.000505996666666667
      TotalSeconds: 0.0303598
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 3.45433444458351
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 329.382934011423
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 989550
      Days: 0
      Hours: 0
      Milliseconds: 98
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1453125e-06
      TotalHours: 2.74875e-05
      TotalMilliseconds: 98.955
      TotalMinutes: 0.00164925
      TotalSeconds: 0.098955
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 11.2590881680301
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 101.056035571725
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: .Where Method
    Time: 
      Ticks: 4690955
      Days: 0
      Hours: 0
      Milliseconds: 469
      Minutes: 0
      Seconds: 0
      TotalDays: 5.42934606481481e-06
      TotalHours: 0.000130304305555556
      TotalMilliseconds: 469.0955
      TotalMinutes: 0.00781825833333333
      TotalSeconds: 0.4690955
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 53.3736303746771
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 21.3176208256101
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 6384452
      Days: 0
      Hours: 0
      Milliseconds: 638
      Minutes: 0
      Seconds: 0
      TotalDays: 7.38941203703704e-06
      TotalHours: 0.000177345888888889
      TotalMilliseconds: 638.4452
      TotalMinutes: 0.0106407533333333
      TotalSeconds: 0.6384452
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 72.6422191628076
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 15.663051425557
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 12702739
      Days: 0
      Hours: 0
      Milliseconds: 270
      Minutes: 0
      Seconds: 1
      TotalDays: 1.4702244212963e-05
      TotalHours: 0.000352853861111111
      TotalMilliseconds: 1270.2739
      TotalMinutes: 0.0211712316666667
      TotalSeconds: 1.2702739
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 144.531613740058
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 7.87231793080217
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 2842859
      Days: 0
      Hours: 0
      Milliseconds: 284
      Minutes: 0
      Seconds: 0
      TotalDays: 3.29034606481481e-06
      TotalHours: 7.89683055555556e-05
      TotalMilliseconds: 284.2859
      TotalMinutes: 0.00473809833333333
      TotalSeconds: 0.2842859
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 35.1758564177822
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 8230698
      Days: 0
      Hours: 0
      Milliseconds: 823
      Minutes: 0
      Seconds: 0
      TotalDays: 9.52627083333333e-06
      TotalHours: 0.0002286305
      TotalMilliseconds: 823.0698
      TotalMinutes: 0.01371783
      TotalSeconds: 0.8230698
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
    RelativeSpeed: 2.89521851066127
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 12.1496378557444
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: .Where Method
    Time: 
      Ticks: 36817537
      Days: 0
      Hours: 0
      Milliseconds: 681
      Minutes: 0
      Seconds: 3
      TotalDays: 4.26128900462963e-05
      TotalHours: 0.00102270936111111
      TotalMilliseconds: 3681.7537
      TotalMinutes: 0.0613625616666667
      TotalSeconds: 3.6817537
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
    RelativeSpeed: 12.9508839516839
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.71609695129796
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 76122148
      Days: 0
      Hours: 0
      Milliseconds: 612
      Minutes: 0
      Seconds: 7
      TotalDays: 8.8104337962963e-05
      TotalHours: 0.00211450411111111
      TotalMilliseconds: 7612.2148
      TotalMinutes: 0.126870246666667
      TotalSeconds: 7.6122148
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
    RelativeSpeed: 26.7766174826117
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.31367811638736
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 85184
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.85925925925926e-08
      TotalHours: 2.36622222222222e-06
      TotalMilliseconds: 8.5184
      TotalMinutes: 0.000141973333333333
      TotalSeconds: 0.0085184
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11739.2937640872
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 87558
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01340277777778e-07
      TotalHours: 2.43216666666667e-06
      TotalMilliseconds: 8.7558
      TotalMinutes: 0.00014593
      TotalSeconds: 0.0087558
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.02786908339594
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11421.0009365221
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 95606
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10655092592593e-07
      TotalHours: 2.65572222222222e-06
      TotalMilliseconds: 9.5606
      TotalMinutes: 0.000159343333333333
      TotalSeconds: 0.0095606
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.12234691960932
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 10459.5945861138
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 98473
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1397337962963e-07
      TotalHours: 2.73536111111111e-06
      TotalMilliseconds: 9.8473
      TotalMinutes: 0.000164121666666667
      TotalSeconds: 0.0098473
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.15600347483095
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 10155.0678866288
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 183414
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.12284722222222e-07
      TotalHours: 5.09483333333333e-06
      TotalMilliseconds: 18.3414
      TotalMinutes: 0.00030569
      TotalSeconds: 0.0183414
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 2.15315082644628
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 5452.14651008102
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 275958
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.19395833333333e-07
      TotalHours: 7.6655e-06
      TotalMilliseconds: 27.5958
      TotalMinutes: 0.00045993
      TotalSeconds: 0.0275958
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.23955202854996
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 3623.73984446909
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2793
---
What Is The Fastest Way To Filter
---------------------------------
> @2793 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotScriptBlockVariable|00:00:00.008518|1x           |11739.29/s|
|InlineScriptBlock     |00:00:00.008755|1.03x        |11421/s   |
|ScriptBlockVariable   |00:00:00.009560|1.12x        |10459.59/s|
|Filter                |00:00:00.009847|1.16x        |10155.07/s|
|DotInline             |00:00:00.018341|2.15x        |5452.15/s |
|WhereObject           |00:00:00.027595|3.24x        |3623.74/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.284285|1x           |35.18/s   |
|Pipe to ScriptBlock               |00:00:00.823069|2.9x         |12.15/s   |
|.Where Method                     |00:00:03.681753|12.95x       |2.72/s    |
|Where-Object Property (Positional)|00:00:07.612214|26.78x       |1.31/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.008788|1x           |1137.8/s  |
|ForEach Loop                    |00:00:00.011281|1.28x        |886.42/s  |
|Operator Filter (Explicit Array)|00:00:00.030359|3.45x        |329.38/s  |
|Pipe to ScriptBlock             |00:00:00.098955|11.26x       |101.06/s  |
|.Where Method                   |00:00:00.469095|53.37x       |21.32/s   |
|Linq.Enumerable::Where          |00:00:00.638445|72.64x       |15.66/s   |
|Where-Object Script (Positional)|00:00:01.270273|144.53x      |7.87/s    |
