---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 94228
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09060185185185e-07
      TotalHours: 2.61744444444444e-06
      TotalMilliseconds: 9.4228
      TotalMinutes: 0.000157046666666667
      TotalSeconds: 0.0094228
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1061.25567771788
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 122139
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.41364583333333e-07
      TotalHours: 3.39275e-06
      TotalMilliseconds: 12.2139
      TotalMinutes: 0.000203565
      TotalSeconds: 0.0122139
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 1.29620707220784
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 818.739305217826
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 317223
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.6715625e-07
      TotalHours: 8.81175e-06
      TotalMilliseconds: 31.7223
      TotalMinutes: 0.000528705
      TotalSeconds: 0.0317223
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 3.36654709852698
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 315.235654413457
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1267943
      Days: 0
      Hours: 0
      Milliseconds: 126
      Minutes: 0
      Seconds: 0
      TotalDays: 1.46752662037037e-06
      TotalHours: 3.52206388888889e-05
      TotalMilliseconds: 126.7943
      TotalMinutes: 0.00211323833333333
      TotalSeconds: 0.1267943
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 13.4561170777264
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 78.867898635822
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 5419266
      Days: 0
      Hours: 0
      Milliseconds: 541
      Minutes: 0
      Seconds: 0
      TotalDays: 6.27229861111111e-06
      TotalHours: 0.000150535166666667
      TotalMilliseconds: 541.9266
      TotalMinutes: 0.00903211
      TotalSeconds: 0.5419266
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 57.5122681156344
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 18.4526834445846
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7032801
      Days: 0
      Hours: 0
      Milliseconds: 703
      Minutes: 0
      Seconds: 0
      TotalDays: 8.13981597222222e-06
      TotalHours: 0.000195355583333333
      TotalMilliseconds: 703.2801
      TotalMinutes: 0.011721335
      TotalSeconds: 0.7032801
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 74.6359999150995
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 14.2190856815087
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 15253439
      Days: 0
      Hours: 0
      Milliseconds: 525
      Minutes: 0
      Seconds: 1
      TotalDays: 1.7654443287037e-05
      TotalHours: 0.000423706638888889
      TotalMilliseconds: 1525.3439
      TotalMinutes: 0.0254223983333333
      TotalSeconds: 1.5253439
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 161.877987434733
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 6.55589864030007
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 3383135
      Days: 0
      Hours: 0
      Milliseconds: 338
      Minutes: 0
      Seconds: 0
      TotalDays: 3.91566550925926e-06
      TotalHours: 9.39759722222222e-05
      TotalMilliseconds: 338.3135
      TotalMinutes: 0.00563855833333333
      TotalSeconds: 0.3383135
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 29.5583829791007
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 8371669
      Days: 0
      Hours: 0
      Milliseconds: 837
      Minutes: 0
      Seconds: 0
      TotalDays: 9.68943171296296e-06
      TotalHours: 0.000232546361111111
      TotalMilliseconds: 837.1669
      TotalMinutes: 0.0139527816666667
      TotalSeconds: 0.8371669
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 2.47452998476265
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 11.9450494280173
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 49913528
      Days: 0
      Hours: 0
      Milliseconds: 991
      Minutes: 0
      Seconds: 4
      TotalDays: 5.7770287037037e-05
      TotalHours: 0.00138648688888889
      TotalMilliseconds: 4991.3528
      TotalMinutes: 0.0831892133333333
      TotalSeconds: 4.9913528
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 14.7536317646207
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 2.00346487228873
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 100588253
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 10
      TotalDays: 0.00011642158912037
      TotalHours: 0.00279411813888889
      TotalMilliseconds: 10058.8253
      TotalMinutes: 0.167647088333333
      TotalSeconds: 10.0588253
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
    RelativeSpeed: 29.7322610537268
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 0.994151871789641
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: DotInline
    Time: 
      Ticks: 88228
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02115740740741e-07
      TotalHours: 2.45077777777778e-06
      TotalMilliseconds: 8.8228
      TotalMinutes: 0.000147046666666667
      TotalSeconds: 0.0088228
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11334.2702996781
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 89053
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03070601851852e-07
      TotalHours: 2.47369444444444e-06
      TotalMilliseconds: 8.9053
      TotalMinutes: 0.000148421666666667
      TotalSeconds: 0.0089053
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.00935077299723
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11229.2679640214
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 96318
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.11479166666667e-07
      TotalHours: 2.6755e-06
      TotalMilliseconds: 9.6318
      TotalMinutes: 0.00016053
      TotalSeconds: 0.0096318
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.0916942467244
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10382.2753794722
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 100166
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1593287037037e-07
      TotalHours: 2.78238888888889e-06
      TotalMilliseconds: 10.0166
      TotalMinutes: 0.000166943333333333
      TotalSeconds: 0.0100166
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.13530851883756
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 9983.42751033285
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 334251
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.86864583333333e-07
      TotalHours: 9.28475e-06
      TotalMilliseconds: 33.4251
      TotalMinutes: 0.000557085
      TotalSeconds: 0.0334251
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.78849118193771
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2991.76367460382
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 530990
      Days: 0
      Hours: 0
      Milliseconds: 53
      Minutes: 0
      Seconds: 0
      TotalDays: 6.14571759259259e-07
      TotalHours: 1.47497222222222e-05
      TotalMilliseconds: 53.099
      TotalMinutes: 0.000884983333333333
      TotalSeconds: 0.053099
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 6.01838418642608
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 1883.27463794045
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2594
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|DotInline             |100        |00:00:00.008822|1x           |11334.27/s|
|ScriptBlockVariable   |100        |00:00:00.008905|1.01x        |11229.27/s|
|DotScriptBlockVariable|100        |00:00:00.009631|1.09x        |10382.28/s|
|Filter                |100        |00:00:00.010016|1.14x        |9983.43/s |
|InlineScriptBlock     |100        |00:00:00.033425|3.79x        |2991.76/s |
|WhereObject           |100        |00:00:00.053099|6.02x        |1883.27/s |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.338313|1x           |29.56/s   |
|Pipe to ScriptBlock               |10         |00:00:00.837166|2.47x        |11.95/s   |
|.Where Method                     |10         |00:00:04.991352|14.75x       |2/s       |
|Where-Object Property (Positional)|10         |00:00:10.058825|29.73x       |0.99/s    |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |10         |00:00:00.009422|1x           |1061.26/s |
|ForEach Loop                    |10         |00:00:00.012213|1.3x         |818.74/s  |
|Operator Filter (Explicit Array)|10         |00:00:00.031722|3.37x        |315.24/s  |
|Pipe to ScriptBlock             |10         |00:00:00.126794|13.46x       |78.87/s   |
|.Where Method                   |10         |00:00:00.541926|57.51x       |18.45/s   |
|Linq.Enumerable::Where          |10         |00:00:00.703280|74.64x       |14.22/s   |
|Where-Object Script (Positional)|10         |00:00:01.525343|161.88x      |6.56/s    |
