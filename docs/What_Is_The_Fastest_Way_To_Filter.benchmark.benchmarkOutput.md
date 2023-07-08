---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 103791
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.20128472222222e-07
      TotalHours: 2.88308333333333e-06
      TotalMilliseconds: 10.3791
      TotalMinutes: 0.000172985
      TotalSeconds: 0.0103791
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
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 963.474675068166
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 125307
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4503125e-07
      TotalHours: 3.48075e-06
      TotalMilliseconds: 12.5307
      TotalMinutes: 0.000208845
      TotalSeconds: 0.0125307
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 1.20730121108767
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 798.040013726288
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 145542
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.68451388888889e-07
      TotalHours: 4.04283333333333e-06
      TotalMilliseconds: 14.5542
      TotalMinutes: 0.00024257
      TotalSeconds: 0.0145542
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 1.40226031158771
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 687.086889007984
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1106939
      Days: 0
      Hours: 0
      Milliseconds: 110
      Minutes: 0
      Seconds: 0
      TotalDays: 1.28117939814815e-06
      TotalHours: 3.07483055555556e-05
      TotalMilliseconds: 110.6939
      TotalMinutes: 0.00184489833333333
      TotalSeconds: 0.1106939
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 10.6650769334528
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 90.3392147173421
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: .Where Method
    Time: 
      Ticks: 5984180
      Days: 0
      Hours: 0
      Milliseconds: 598
      Minutes: 0
      Seconds: 0
      TotalDays: 6.92613425925926e-06
      TotalHours: 0.000166227222222222
      TotalMilliseconds: 598.418
      TotalMinutes: 0.00997363333333333
      TotalSeconds: 0.598418
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 57.6560588104942
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 16.7107272842729
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 8303459
      Days: 0
      Hours: 0
      Milliseconds: 830
      Minutes: 0
      Seconds: 0
      TotalDays: 9.6104849537037e-06
      TotalHours: 0.000230651638888889
      TotalMilliseconds: 830.3459
      TotalMinutes: 0.0138390983333333
      TotalSeconds: 0.8303459
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 80.0017246196684
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 12.0431738146717
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 18944771
      Days: 0
      Hours: 0
      Milliseconds: 894
      Minutes: 0
      Seconds: 1
      TotalDays: 2.1926818287037e-05
      TotalHours: 0.000526243638888889
      TotalMilliseconds: 1894.4771
      TotalMinutes: 0.0315746183333333
      TotalSeconds: 1.8944771
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 182.528070834658
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 5.27850138700542
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 3707487
      Days: 0
      Hours: 0
      Milliseconds: 370
      Minutes: 0
      Seconds: 0
      TotalDays: 4.29107291666667e-06
      TotalHours: 0.00010298575
      TotalMilliseconds: 370.7487
      TotalMinutes: 0.006179145
      TotalSeconds: 0.3707487
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
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 26.9724479141801
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 10279452
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 1
      TotalDays: 1.18975138888889e-05
      TotalHours: 0.000285540333333333
      TotalMilliseconds: 1027.9452
      TotalMinutes: 0.01713242
      TotalSeconds: 1.0279452
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
    RelativeSpeed: 2.77261983656315
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 9.7281450411948
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: .Where Method
    Time: 
      Ticks: 47705286
      Days: 0
      Hours: 0
      Milliseconds: 770
      Minutes: 0
      Seconds: 4
      TotalDays: 5.52144513888889e-05
      TotalHours: 0.00132514683333333
      TotalMilliseconds: 4770.5286
      TotalMinutes: 0.07950881
      TotalSeconds: 4.7705286
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
    RelativeSpeed: 12.8672834186607
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 2.09620376240906
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 105405653
      Days: 0
      Hours: 0
      Milliseconds: 540
      Minutes: 0
      Seconds: 10
      TotalDays: 0.000121997283564815
      TotalHours: 0.00292793480555556
      TotalMilliseconds: 10540.5653
      TotalMinutes: 0.175676088333333
      TotalSeconds: 10.5405653
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
    RelativeSpeed: 28.4304848540265
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 0.948715720209048
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: DotInline
    Time: 
      Ticks: 126420
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.46319444444444e-07
      TotalHours: 3.51166666666667e-06
      TotalMilliseconds: 12.642
      TotalMinutes: 0.0002107
      TotalSeconds: 0.012642
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 7910.14080050625
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 134504
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.55675925925926e-07
      TotalHours: 3.73622222222222e-06
      TotalMilliseconds: 13.4504
      TotalMinutes: 0.000224173333333333
      TotalSeconds: 0.0134504
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.06394557823129
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 7434.72313091061
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: Filter
    Time: 
      Ticks: 142758
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.65229166666667e-07
      TotalHours: 3.9655e-06
      TotalMilliseconds: 14.2758
      TotalMinutes: 0.00023793
      TotalSeconds: 0.0142758
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.12923588039867
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 7004.86137379341
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 174015
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.0140625e-07
      TotalHours: 4.83375e-06
      TotalMilliseconds: 17.4015
      TotalMinutes: 0.000290025
      TotalSeconds: 0.0174015
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.37648315140009
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 5746.63103755423
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: WhereObject
    Time: 
      Ticks: 420362
      Days: 0
      Hours: 0
      Milliseconds: 42
      Minutes: 0
      Seconds: 0
      TotalDays: 4.86530092592593e-07
      TotalHours: 1.16767222222222e-05
      TotalMilliseconds: 42.0362
      TotalMinutes: 0.000700603333333333
      TotalSeconds: 0.0420362
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.32512260718241
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2378.90199399565
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 425809
      Days: 0
      Hours: 0
      Milliseconds: 42
      Minutes: 0
      Seconds: 0
      TotalDays: 4.92834490740741e-07
      TotalHours: 1.18280277777778e-05
      TotalMilliseconds: 42.5809
      TotalMinutes: 0.000709681666666667
      TotalSeconds: 0.0425809
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.36820914412277
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2348.47079324298
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2295
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|DotInline             |100        |00:00:00.012642|1x           |7910.14/s |
|InlineScriptBlock     |100        |00:00:00.013450|1.06x        |7434.72/s |
|Filter                |100        |00:00:00.014275|1.13x        |7004.86/s |
|ScriptBlockVariable   |100        |00:00:00.017401|1.38x        |5746.63/s |
|WhereObject           |100        |00:00:00.042036|3.33x        |2378.9/s  |
|DotScriptBlockVariable|100        |00:00:00.042580|3.37x        |2348.47/s |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.370748|1x           |26.97/s   |
|Pipe to ScriptBlock               |10         |00:00:01.027945|2.77x        |9.73/s    |
|.Where Method                     |10         |00:00:04.770528|12.87x       |2.1/s     |
|Where-Object Property (Positional)|10         |00:00:10.540565|28.43x       |0.95/s    |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |10         |00:00:00.010379|1x           |963.47/s  |
|ForEach Loop                    |10         |00:00:00.012530|1.21x        |798.04/s  |
|Operator Filter (Explicit Array)|10         |00:00:00.014554|1.4x         |687.09/s  |
|Pipe to ScriptBlock             |10         |00:00:00.110693|10.67x       |90.34/s   |
|.Where Method                   |10         |00:00:00.598418|57.66x       |16.71/s   |
|Linq.Enumerable::Where          |10         |00:00:00.830345|80x          |12.04/s   |
|Where-Object Script (Positional)|10         |00:00:01.894477|182.53x      |5.28/s    |
