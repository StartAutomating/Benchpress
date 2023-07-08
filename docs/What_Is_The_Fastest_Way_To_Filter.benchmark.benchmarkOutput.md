---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 99004
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14587962962963e-07
      TotalHours: 2.75011111111111e-06
      TotalMilliseconds: 9.9004
      TotalMinutes: 0.000165006666666667
      TotalSeconds: 0.0099004
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1010.0601995879
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 108778
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25900462962963e-07
      TotalHours: 3.02161111111111e-06
      TotalMilliseconds: 10.8778
      TotalMinutes: 0.000181296666666667
      TotalSeconds: 0.0108778
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 1.09872328390772
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 919.303535641398
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering Values
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 135469
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56792824074074e-07
      TotalHours: 3.76302777777778e-06
      TotalMilliseconds: 13.5469
      TotalMinutes: 0.000225781666666667
      TotalSeconds: 0.0135469
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 1.36831845177973
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 738.176261727775
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1009653
      Days: 0
      Hours: 0
      Milliseconds: 100
      Minutes: 0
      Seconds: 0
      TotalDays: 1.16857986111111e-06
      TotalHours: 2.80459166666667e-05
      TotalMilliseconds: 100.9653
      TotalMinutes: 0.001682755
      TotalSeconds: 0.1009653
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 10.1981031069452
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 99.0439289538089
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering Values
  - Technique: .Where Method
    Time: 
      Ticks: 5218997
      Days: 0
      Hours: 0
      Milliseconds: 521
      Minutes: 0
      Seconds: 0
      TotalDays: 6.04050578703704e-06
      TotalHours: 0.000144972138888889
      TotalMilliseconds: 521.8997
      TotalMinutes: 0.00869832833333333
      TotalSeconds: 0.5218997
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 52.7150115146863
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 19.1607697800938
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering Values
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7005000
      Days: 0
      Hours: 0
      Milliseconds: 700
      Minutes: 0
      Seconds: 0
      TotalDays: 8.10763888888889e-06
      TotalHours: 0.000194583333333333
      TotalMilliseconds: 700.5
      TotalMinutes: 0.011675
      TotalSeconds: 0.7005
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 70.7547169811321
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 14.2755174875089
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering Values
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 14955134
      Days: 0
      Hours: 0
      Milliseconds: 495
      Minutes: 0
      Seconds: 1
      TotalDays: 1.73091828703704e-05
      TotalHours: 0.000415420388888889
      TotalMilliseconds: 1495.5134
      TotalMinutes: 0.0249252233333333
      TotalSeconds: 1.4955134
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 151.055856329037
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 6.68666693324179
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 3031371
      Days: 0
      Hours: 0
      Milliseconds: 303
      Minutes: 0
      Seconds: 0
      TotalDays: 3.50853125e-06
      TotalHours: 8.420475e-05
      TotalMilliseconds: 303.1371
      TotalMinutes: 0.005052285
      TotalSeconds: 0.3031371
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering by Property Values
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 32.9883739073838
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering by Property Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 8763037
      Days: 0
      Hours: 0
      Milliseconds: 876
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01424039351852e-05
      TotalHours: 0.000243417694444444
      TotalMilliseconds: 876.3037
      TotalMinutes: 0.0146050616666667
      TotalSeconds: 0.8763037
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering by Property Values
    RelativeSpeed: 2.89078341120239
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 11.4115688430849
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering by Property Values
  - Technique: .Where Method
    Time: 
      Ticks: 38753430
      Days: 0
      Hours: 0
      Milliseconds: 875
      Minutes: 0
      Seconds: 3
      TotalDays: 4.48535069444444e-05
      TotalHours: 0.00107648416666667
      TotalMilliseconds: 3875.343
      TotalMinutes: 0.06458905
      TotalSeconds: 3.875343
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering by Property Values
    RelativeSpeed: 12.7841263903363
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 2.58041675278808
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering by Property Values
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 83535891
      Days: 0
      Hours: 0
      Milliseconds: 353
      Minutes: 0
      Seconds: 8
      TotalDays: 9.66850590277778e-05
      TotalHours: 0.00232044141666667
      TotalMilliseconds: 8353.5891
      TotalMinutes: 0.139226485
      TotalSeconds: 8.3535891
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering by Property Values
    RelativeSpeed: 27.5571320699446
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1.1970902423247
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
      GroupName: Filtering by Property Values
  - Technique: DotInline
    Time: 
      Ticks: 88540
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02476851851852e-07
      TotalHours: 2.45944444444444e-06
      TotalMilliseconds: 8.854
      TotalMinutes: 0.000147566666666667
      TotalSeconds: 0.008854
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11294.3302462164
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 89298
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03354166666667e-07
      TotalHours: 2.4805e-06
      TotalMilliseconds: 8.9298
      TotalMinutes: 0.00014883
      TotalSeconds: 0.0089298
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.00856110232663
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11198.4590920289
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 94982
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0993287037037e-07
      TotalHours: 2.63838888888889e-06
      TotalMilliseconds: 9.4982
      TotalMinutes: 0.000158303333333333
      TotalSeconds: 0.0094982
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.07275807544613
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10528.3106272767
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: Filter
    Time: 
      Ticks: 98382
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.13868055555556e-07
      TotalHours: 2.73283333333333e-06
      TotalMilliseconds: 9.8382
      TotalMinutes: 0.00016397
      TotalSeconds: 0.0098382
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.11115879828326
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10164.4609786343
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 189217
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.19001157407407e-07
      TotalHours: 5.25602777777778e-06
      TotalMilliseconds: 18.9217
      TotalMinutes: 0.000315361666666667
      TotalSeconds: 0.0189217
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 2.13707928619833
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 5284.9373999165
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: WhereObject
    Time: 
      Ticks: 276420
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.19930555555556e-07
      TotalHours: 7.67833333333333e-06
      TotalMilliseconds: 27.642
      TotalMinutes: 0.0004607
      TotalSeconds: 0.027642
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.12197876665914
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 3617.68323565589
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2594
---


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotInline             |00:00:00.008854|1x           |11294.33/s|
|DotScriptBlockVariable|00:00:00.008929|1.01x        |11198.46/s|
|ScriptBlockVariable   |00:00:00.009498|1.07x        |10528.31/s|
|Filter                |00:00:00.009838|1.11x        |10164.46/s|
|InlineScriptBlock     |00:00:00.018921|2.14x        |5284.94/s |
|WhereObject           |00:00:00.027642|3.12x        |3617.68/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.303137|1x           |32.99/s   |
|Pipe to ScriptBlock               |00:00:00.876303|2.89x        |11.41/s   |
|.Where Method                     |00:00:03.875343|12.78x       |2.58/s    |
|Where-Object Property (Positional)|00:00:08.353589|27.56x       |1.2/s     |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.009900|1x           |1010.06/s |
|ForEach Loop                    |00:00:00.010877|1.1x         |919.3/s   |
|Operator Filter (Explicit Array)|00:00:00.013546|1.37x        |738.18/s  |
|Pipe to ScriptBlock             |00:00:00.100965|10.2x        |99.04/s   |
|.Where Method                   |00:00:00.521899|52.72x       |19.16/s   |
|Linq.Enumerable::Where          |00:00:00.700500|70.75x       |14.28/s   |
|Where-Object Script (Positional)|00:00:01.495513|151.06x      |6.69/s    |
