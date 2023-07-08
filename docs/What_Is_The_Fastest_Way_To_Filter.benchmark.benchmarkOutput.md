---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 98271
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.13739583333333e-07
      TotalHours: 2.72975e-06
      TotalMilliseconds: 9.8271
      TotalMinutes: 0.000163785
      TotalSeconds: 0.0098271
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
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1017.59420378342
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 120807
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39822916666667e-07
      TotalHours: 3.35575e-06
      TotalMilliseconds: 12.0807
      TotalMinutes: 0.000201345
      TotalSeconds: 0.0120807
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
    RelativeSpeed: 1.22932502976463
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 827.766602928638
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 126473
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.46380787037037e-07
      TotalHours: 3.51313888888889e-06
      TotalMilliseconds: 12.6473
      TotalMinutes: 0.000210788333333333
      TotalSeconds: 0.0126473
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
    RelativeSpeed: 1.286981917351
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 790.682596285373
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1025650
      Days: 0
      Hours: 0
      Milliseconds: 102
      Minutes: 0
      Seconds: 0
      TotalDays: 1.18709490740741e-06
      TotalHours: 2.84902777777778e-05
      TotalMilliseconds: 102.565
      TotalMinutes: 0.00170941666666667
      TotalSeconds: 0.102565
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
    RelativeSpeed: 10.4369549511046
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 97.4991468824648
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 5145090
      Days: 0
      Hours: 0
      Milliseconds: 514
      Minutes: 0
      Seconds: 0
      TotalDays: 5.95496527777778e-06
      TotalHours: 0.000142919166666667
      TotalMilliseconds: 514.509
      TotalMinutes: 0.00857515
      TotalSeconds: 0.514509
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
    RelativeSpeed: 52.3561376194401
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 19.4360059785154
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7113775
      Days: 0
      Hours: 0
      Milliseconds: 711
      Minutes: 0
      Seconds: 0
      TotalDays: 8.23353587962963e-06
      TotalHours: 0.000197604861111111
      TotalMilliseconds: 711.3775
      TotalMinutes: 0.0118562916666667
      TotalSeconds: 0.7113775
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
    RelativeSpeed: 72.3893620701937
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 14.0572340283464
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 14615726
      Days: 0
      Hours: 0
      Milliseconds: 461
      Minutes: 0
      Seconds: 1
      TotalDays: 1.6916349537037e-05
      TotalHours: 0.000405992388888889
      TotalMilliseconds: 1461.5726
      TotalMinutes: 0.0243595433333333
      TotalSeconds: 1.4615726
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
    RelativeSpeed: 148.728780616866
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 6.84194544971629
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 3007901
      Days: 0
      Hours: 0
      Milliseconds: 300
      Minutes: 0
      Seconds: 0
      TotalDays: 3.48136689814815e-06
      TotalHours: 8.35528055555556e-05
      TotalMilliseconds: 300.7901
      TotalMinutes: 0.00501316833333333
      TotalSeconds: 0.3007901
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
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 33.245775043793
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 7971174
      Days: 0
      Hours: 0
      Milliseconds: 797
      Minutes: 0
      Seconds: 0
      TotalDays: 9.22589583333333e-06
      TotalHours: 0.0002214215
      TotalMilliseconds: 797.1174
      TotalMinutes: 0.01328529
      TotalSeconds: 0.7971174
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
    RelativeSpeed: 2.65007857638932
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 12.5452035045277
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 46256726
      Days: 0
      Hours: 0
      Milliseconds: 625
      Minutes: 0
      Seconds: 4
      TotalDays: 5.35378773148148e-05
      TotalHours: 0.00128490905555556
      TotalMilliseconds: 4625.6726
      TotalMinutes: 0.0770945433333333
      TotalSeconds: 4.6256726
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
    RelativeSpeed: 15.3784070685837
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 2.16184777106793
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 102273633
      Days: 0
      Hours: 0
      Milliseconds: 227
      Minutes: 0
      Seconds: 10
      TotalDays: 0.000118372260416667
      TotalHours: 0.00284093425
      TotalMilliseconds: 10227.3633
      TotalMinutes: 0.170456055
      TotalSeconds: 10.2273633
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
    RelativeSpeed: 34.0016619562944
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 0.977769118654463
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 84110
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.7349537037037e-08
      TotalHours: 2.33638888888889e-06
      TotalMilliseconds: 8.411
      TotalMinutes: 0.000140183333333333
      TotalSeconds: 0.008411
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11889.1927238141
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 87416
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01175925925926e-07
      TotalHours: 2.42822222222222e-06
      TotalMilliseconds: 8.7416
      TotalMinutes: 0.000145693333333333
      TotalSeconds: 0.0087416
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.03930567114493
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11439.5533998353
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 88046
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01905092592593e-07
      TotalHours: 2.44572222222222e-06
      TotalMilliseconds: 8.8046
      TotalMinutes: 0.000146743333333333
      TotalSeconds: 0.0088046
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.04679586256093
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11357.6993844127
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 94803
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09725694444444e-07
      TotalHours: 2.63341666666667e-06
      TotalMilliseconds: 9.4803
      TotalMinutes: 0.000158005
      TotalSeconds: 0.0094803
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
    RelativeSpeed: 1.12713113779574
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10548.1894032889
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 282454
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.26914351851852e-07
      TotalHours: 7.84594444444444e-06
      TotalMilliseconds: 28.2454
      TotalMinutes: 0.000470756666666667
      TotalSeconds: 0.0282454
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
    RelativeSpeed: 3.35815004161217
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 3540.39949867943
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 351486
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.068125e-07
      TotalHours: 9.7635e-06
      TotalMilliseconds: 35.1486
      TotalMinutes: 0.00058581
      TotalSeconds: 0.0351486
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | isOdd        
              
    RelativeSpeed: 4.17888479372251
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2845.06353026863
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2594
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|DotScriptBlockVariable|100        |00:00:00.008411|1x           |11889.19/s|
|DotInline             |100        |00:00:00.008741|1.04x        |11439.55/s|
|InlineScriptBlock     |100        |00:00:00.008804|1.05x        |11357.7/s |
|ScriptBlockVariable   |100        |00:00:00.009480|1.13x        |10548.19/s|
|WhereObject           |100        |00:00:00.028245|3.36x        |3540.4/s  |
|Filter                |100        |00:00:00.035148|4.18x        |2845.06/s |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.300790|1x           |33.25/s   |
|Pipe to ScriptBlock               |10         |00:00:00.797117|2.65x        |12.55/s   |
|.Where Method                     |10         |00:00:04.625672|15.38x       |2.16/s    |
|Where-Object Property (Positional)|10         |00:00:10.227363|34x          |0.98/s    |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |10         |00:00:00.009827|1x           |1017.59/s |
|ForEach Loop                    |10         |00:00:00.012080|1.23x        |827.77/s  |
|Operator Filter (Explicit Array)|10         |00:00:00.012647|1.29x        |790.68/s  |
|Pipe to ScriptBlock             |10         |00:00:00.102565|10.44x       |97.5/s    |
|.Where Method                   |10         |00:00:00.514509|52.36x       |19.44/s   |
|Linq.Enumerable::Where          |10         |00:00:00.711377|72.39x       |14.06/s   |
|Where-Object Script (Positional)|10         |00:00:01.461572|148.73x      |6.84/s    |
