---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 75639
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.75451388888889e-08
      TotalHours: 2.10108333333333e-06
      TotalMilliseconds: 7.5639
      TotalMinutes: 0.000126065
      TotalSeconds: 0.0075639
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1322.06930287286
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 97617
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12982638888889e-07
      TotalHours: 2.71158333333333e-06
      TotalMilliseconds: 9.7617
      TotalMinutes: 0.000162695
      TotalSeconds: 0.0097617
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.2905643913854
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1024.41173156315
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 119264
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.38037037037037e-07
      TotalHours: 3.31288888888889e-06
      TotalMilliseconds: 11.9264
      TotalMinutes: 0.000198773333333333
      TotalSeconds: 0.0119264
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.57675273337828
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 838.47598604776
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 763691
      Days: 0
      Hours: 0
      Milliseconds: 76
      Minutes: 0
      Seconds: 0
      TotalDays: 8.8390162037037e-07
      TotalHours: 2.12136388888889e-05
      TotalMilliseconds: 76.3691
      TotalMinutes: 0.00127281833333333
      TotalSeconds: 0.0763691
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 10.0965242798027
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 130.943012291621
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 4748541
      Days: 0
      Hours: 0
      Milliseconds: 474
      Minutes: 0
      Seconds: 0
      TotalDays: 5.49599652777778e-06
      TotalHours: 0.000131903916666667
      TotalMilliseconds: 474.8541
      TotalMinutes: 0.007914235
      TotalSeconds: 0.4748541
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 62.7790028953318
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 21.0591000477831
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 6800196
      Days: 0
      Hours: 0
      Milliseconds: 680
      Minutes: 0
      Seconds: 0
      TotalDays: 7.87059722222222e-06
      TotalHours: 0.000188894333333333
      TotalMilliseconds: 680.0196
      TotalMinutes: 0.01133366
      TotalSeconds: 0.6800196
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 89.9033038511879
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 14.7054584897259
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 11481439
      Days: 0
      Hours: 0
      Milliseconds: 148
      Minutes: 0
      Seconds: 1
      TotalDays: 1.32887025462963e-05
      TotalHours: 0.000318928861111111
      TotalMilliseconds: 1148.1439
      TotalMinutes: 0.0191357316666667
      TotalSeconds: 1.1481439
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 151.792580547072
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 8.70970964528053
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 3228501
      Days: 0
      Hours: 0
      Milliseconds: 322
      Minutes: 0
      Seconds: 0
      TotalDays: 3.73669097222222e-06
      TotalHours: 8.96805833333333e-05
      TotalMilliseconds: 322.8501
      TotalMinutes: 0.005380835
      TotalSeconds: 0.3228501
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 30.974127001974
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 7961942
      Days: 0
      Hours: 0
      Milliseconds: 796
      Minutes: 0
      Seconds: 0
      TotalDays: 9.21521064814815e-06
      TotalHours: 0.000221165055555556
      TotalMilliseconds: 796.1942
      TotalMinutes: 0.0132699033333333
      TotalSeconds: 0.7961942
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 2.46614202690351
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 12.5597498700694
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 37931213
      Days: 0
      Hours: 0
      Milliseconds: 793
      Minutes: 0
      Seconds: 3
      TotalDays: 4.39018668981481e-05
      TotalHours: 0.00105364480555556
      TotalMilliseconds: 3793.1213
      TotalMinutes: 0.0632186883333333
      TotalSeconds: 3.7931213
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 11.7488620880093
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 2.63635122873608
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 77072661
      Days: 0
      Hours: 0
      Milliseconds: 707
      Minutes: 0
      Seconds: 7
      TotalDays: 8.920446875e-05
      TotalHours: 0.00214090725
      TotalMilliseconds: 7707.2661
      TotalMinutes: 0.128454435
      TotalSeconds: 7.7072661
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 23.8725839019409
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1.29747693543369
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 80503
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.31747685185185e-08
      TotalHours: 2.23619444444444e-06
      TotalMilliseconds: 8.0503
      TotalMinutes: 0.000134171666666667
      TotalSeconds: 0.0080503
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 12421.8973205967
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 83889
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.709375e-08
      TotalHours: 2.33025e-06
      TotalMilliseconds: 8.3889
      TotalMinutes: 0.000139815
      TotalSeconds: 0.0083889
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.04206054432754
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11920.5140125642
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 92053
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.06542824074074e-07
      TotalHours: 2.55702777777778e-06
      TotalMilliseconds: 9.2053
      TotalMinutes: 0.000153421666666667
      TotalSeconds: 0.0092053
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.14347291405289
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10863.3070079194
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 95370
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10381944444444e-07
      TotalHours: 2.64916666666667e-06
      TotalMilliseconds: 9.537
      TotalMinutes: 0.00015895
      TotalSeconds: 0.009537
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.18467634746531
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10485.4776135053
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 179383
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.07619212962963e-07
      TotalHours: 4.98286111111111e-06
      TotalMilliseconds: 17.9383
      TotalMinutes: 0.000298971666666667
      TotalSeconds: 0.0179383
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 2.22827720706061
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 5574.66426584459
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 271292
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.1399537037037e-07
      TotalHours: 7.53588888888889e-06
      TotalMilliseconds: 27.1292
      TotalMinutes: 0.000452153333333333
      TotalSeconds: 0.0271292
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.36996136789933
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 3686.06519912124
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2793
---


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotScriptBlockVariable|00:00:00.008050|1x           |12421.9/s |
|DotInline             |00:00:00.008388|1.04x        |11920.51/s|
|ScriptBlockVariable   |00:00:00.009205|1.14x        |10863.31/s|
|Filter                |00:00:00.009537|1.18x        |10485.48/s|
|InlineScriptBlock     |00:00:00.017938|2.23x        |5574.66/s |
|WhereObject           |00:00:00.027129|3.37x        |3686.07/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.322850|1x           |30.97/s   |
|Pipe to ScriptBlock               |00:00:00.796194|2.47x        |12.56/s   |
|.Where Method                     |00:00:03.793121|11.75x       |2.64/s    |
|Where-Object Property (Positional)|00:00:07.707266|23.87x       |1.3/s     |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.007563|1x           |1322.07/s |
|ForEach Loop                    |00:00:00.009761|1.29x        |1024.41/s |
|Operator Filter (Explicit Array)|00:00:00.011926|1.58x        |838.48/s  |
|Pipe to ScriptBlock             |00:00:00.076369|10.1x        |130.94/s  |
|.Where Method                   |00:00:00.474854|62.78x       |21.06/s   |
|Linq.Enumerable::Where          |00:00:00.680019|89.9x        |14.71/s   |
|Where-Object Script (Positional)|00:00:01.148143|151.79x      |8.71/s    |
