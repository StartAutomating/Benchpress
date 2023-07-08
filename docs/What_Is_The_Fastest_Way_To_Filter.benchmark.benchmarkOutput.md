---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 101501
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.17478009259259e-07
      TotalHours: 2.81947222222222e-06
      TotalMilliseconds: 10.1501
      TotalMinutes: 0.000169168333333333
      TotalSeconds: 0.0101501
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 985.211968354992
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 152522
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.76530092592593e-07
      TotalHours: 4.23672222222222e-06
      TotalMilliseconds: 15.2522
      TotalMinutes: 0.000254203333333333
      TotalSeconds: 0.0152522
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.5026649983744
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 655.643120336738
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 389729
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.51075231481481e-07
      TotalHours: 1.08258055555556e-05
      TotalMilliseconds: 38.9729
      TotalMinutes: 0.000649548333333333
      TotalSeconds: 0.0389729
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.83965675215023
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 256.588552558316
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1264460
      Days: 0
      Hours: 0
      Milliseconds: 126
      Minutes: 0
      Seconds: 0
      TotalDays: 1.46349537037037e-06
      TotalHours: 3.51238888888889e-05
      TotalMilliseconds: 126.446
      TotalMinutes: 0.00210743333333333
      TotalSeconds: 0.126446
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 12.4576112550615
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 79.0851430650238
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 6257002
      Days: 0
      Hours: 0
      Milliseconds: 625
      Minutes: 0
      Seconds: 0
      TotalDays: 7.24190046296296e-06
      TotalHours: 0.000173805611111111
      TotalMilliseconds: 625.7002
      TotalMinutes: 0.0104283366666667
      TotalSeconds: 0.6257002
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 61.6447325642112
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 15.9820949393975
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 8338021
      Days: 0
      Hours: 0
      Milliseconds: 833
      Minutes: 0
      Seconds: 0
      TotalDays: 9.65048726851852e-06
      TotalHours: 0.000231611694444444
      TotalMilliseconds: 833.8021
      TotalMinutes: 0.0138967016666667
      TotalSeconds: 0.8338021
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 82.1471808159526
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 11.9932535550102
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 17828581
      Days: 0
      Hours: 0
      Milliseconds: 782
      Minutes: 0
      Seconds: 1
      TotalDays: 2.0634931712963e-05
      TotalHours: 0.000495238361111111
      TotalMilliseconds: 1782.8581
      TotalMinutes: 0.0297143016666667
      TotalSeconds: 1.7828581
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 175.649313799864
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 5.60897134774775
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 3758814
      Days: 0
      Hours: 0
      Milliseconds: 375
      Minutes: 0
      Seconds: 0
      TotalDays: 4.35047916666667e-06
      TotalHours: 0.0001044115
      TotalMilliseconds: 375.8814
      TotalMinutes: 0.00626469
      TotalSeconds: 0.3758814
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 26.6041363046961
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 9884888
      Days: 0
      Hours: 0
      Milliseconds: 988
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14408425925926e-05
      TotalHours: 0.000274580222222222
      TotalMilliseconds: 988.4888
      TotalMinutes: 0.0164748133333333
      TotalSeconds: 0.9884888
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 2.62978907708655
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 10.1164525081114
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 56754574
      Days: 0
      Hours: 0
      Milliseconds: 675
      Minutes: 0
      Seconds: 5
      TotalDays: 6.56881643518519e-05
      TotalHours: 0.00157651594444444
      TotalMilliseconds: 5675.4574
      TotalMinutes: 0.0945909566666667
      TotalSeconds: 5.6754574
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 15.0990642261096
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1.7619725240119
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 120062199
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 12
      TotalDays: 0.000138960878472222
      TotalHours: 0.00333506108333333
      TotalMilliseconds: 12006.2199
      TotalMinutes: 0.200103665
      TotalSeconds: 12.0062199
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 31.9415110723755
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 0.832901619601353
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 98751
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14295138888889e-07
      TotalHours: 2.74308333333333e-06
      TotalMilliseconds: 9.8751
      TotalMinutes: 0.000164585
      TotalSeconds: 0.0098751
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10126.4797318508
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 114554
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.32585648148148e-07
      TotalHours: 3.18205555555556e-06
      TotalMilliseconds: 11.4554
      TotalMinutes: 0.000190923333333333
      TotalSeconds: 0.0114554
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.16002875920244
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 8729.50748118791
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 116735
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.35109953703704e-07
      TotalHours: 3.24263888888889e-06
      TotalMilliseconds: 11.6735
      TotalMinutes: 0.000194558333333333
      TotalSeconds: 0.0116735
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.18211461149761
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 8566.41110206879
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 337000
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.90046296296296e-07
      TotalHours: 9.36111111111111e-06
      TotalMilliseconds: 33.7
      TotalMinutes: 0.000561666666666667
      TotalSeconds: 0.0337
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.41262366963373
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2967.3590504451
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 399237
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.62079861111111e-07
      TotalHours: 1.10899166666667e-05
      TotalMilliseconds: 39.9237
      TotalMinutes: 0.000665395
      TotalSeconds: 0.0399237
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 4.04286538870492
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2504.77786377515
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 402161
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.6546412037037e-07
      TotalHours: 1.11711388888889e-05
      TotalMilliseconds: 40.2161
      TotalMinutes: 0.000670268333333333
      TotalSeconds: 0.0402161
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 4.07247521544086
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2486.56632542688
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2095
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|DotScriptBlockVariable|100        |00:00:00.009875|1x           |10126.48/s|
|ScriptBlockVariable   |100        |00:00:00.011455|1.16x        |8729.51/s |
|Filter                |100        |00:00:00.011673|1.18x        |8566.41/s |
|WhereObject           |100        |00:00:00.033700|3.41x        |2967.36/s |
|InlineScriptBlock     |100        |00:00:00.039923|4.04x        |2504.78/s |
|DotInline             |100        |00:00:00.040216|4.07x        |2486.57/s |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.375881|1x           |26.6/s    |
|Pipe to ScriptBlock               |10         |00:00:00.988488|2.63x        |10.12/s   |
|.Where Method                     |10         |00:00:05.675457|15.1x        |1.76/s    |
|Where-Object Property (Positional)|10         |00:00:12.006219|31.94x       |0.83/s    |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |10         |00:00:00.010150|1x           |985.21/s  |
|ForEach Loop                    |10         |00:00:00.015252|1.5x         |655.64/s  |
|Operator Filter (Explicit Array)|10         |00:00:00.038972|3.84x        |256.59/s  |
|Pipe to ScriptBlock             |10         |00:00:00.126446|12.46x       |79.09/s   |
|.Where Method                   |10         |00:00:00.625700|61.64x       |15.98/s   |
|Linq.Enumerable::Where          |10         |00:00:00.833802|82.15x       |11.99/s   |
|Where-Object Script (Positional)|10         |00:00:01.782858|175.65x      |5.61/s    |
