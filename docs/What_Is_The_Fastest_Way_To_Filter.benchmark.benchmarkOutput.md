---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 137648
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.59314814814815e-07
      TotalHours: 3.82355555555556e-06
      TotalMilliseconds: 13.7648
      TotalMinutes: 0.000229413333333333
      TotalSeconds: 0.0137648
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 726.490759037545
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 153295
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.77424768518519e-07
      TotalHours: 4.25819444444444e-06
      TotalMilliseconds: 15.3295
      TotalMinutes: 0.000255491666666667
      TotalSeconds: 0.0153295
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.1136740090666
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 652.336997292801
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 163713
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.89482638888889e-07
      TotalHours: 4.54758333333333e-06
      TotalMilliseconds: 16.3713
      TotalMinutes: 0.000272855
      TotalSeconds: 0.0163713
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.18935981634314
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 610.825041383397
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1188620
      Days: 0
      Hours: 0
      Milliseconds: 118
      Minutes: 0
      Seconds: 0
      TotalDays: 1.37571759259259e-06
      TotalHours: 3.30172222222222e-05
      TotalMilliseconds: 118.862
      TotalMinutes: 0.00198103333333333
      TotalSeconds: 0.118862
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 8.63521446007207
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 84.1311773316956
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 5888601
      Days: 0
      Hours: 0
      Milliseconds: 588
      Minutes: 0
      Seconds: 0
      TotalDays: 6.81551041666667e-06
      TotalHours: 0.00016357225
      TotalMilliseconds: 588.8601
      TotalMinutes: 0.009814335
      TotalSeconds: 0.5888601
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 42.7801421015925
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 16.9819622691366
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7565875
      Days: 0
      Hours: 0
      Milliseconds: 756
      Minutes: 0
      Seconds: 0
      TotalDays: 8.75679976851852e-06
      TotalHours: 0.000210163194444444
      TotalMilliseconds: 756.5875
      TotalMinutes: 0.0126097916666667
      TotalSeconds: 0.7565875
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 54.9653827153319
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 13.2172418920482
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 17427504
      Days: 0
      Hours: 0
      Milliseconds: 742
      Minutes: 0
      Seconds: 1
      TotalDays: 2.01707222222222e-05
      TotalHours: 0.000484097333333333
      TotalMilliseconds: 1742.7504
      TotalMinutes: 0.02904584
      TotalSeconds: 1.7427504
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 126.609206090899
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 5.73805635046763
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 4101313
      Days: 0
      Hours: 0
      Milliseconds: 410
      Minutes: 0
      Seconds: 0
      TotalDays: 4.7468900462963e-06
      TotalHours: 0.000113925361111111
      TotalMilliseconds: 410.1313
      TotalMinutes: 0.00683552166666667
      TotalSeconds: 0.4101313
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 24.3824355761192
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 11423021
      Days: 0
      Hours: 0
      Milliseconds: 142
      Minutes: 0
      Seconds: 1
      TotalDays: 1.32210891203704e-05
      TotalHours: 0.000317306138888889
      TotalMilliseconds: 1142.3021
      TotalMinutes: 0.0190383683333333
      TotalSeconds: 1.1423021
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 2.78521073617156
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 8.75425161172338
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 52329456
      Days: 0
      Hours: 0
      Milliseconds: 232
      Minutes: 0
      Seconds: 5
      TotalDays: 6.05665e-05
      TotalHours: 0.001453596
      TotalMilliseconds: 5232.9456
      TotalMinutes: 0.08721576
      TotalSeconds: 5.2329456
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 12.7591958965336
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1.91096960763361
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 117564684
      Days: 0
      Hours: 0
      Milliseconds: 756
      Minutes: 0
      Seconds: 11
      TotalDays: 0.000136070236111111
      TotalHours: 0.00326568566666667
      TotalMilliseconds: 11756.4684
      TotalMinutes: 0.19594114
      TotalSeconds: 11.7564684
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 28.6651333365681
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 0.850595575113356
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 134193
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.55315972222222e-07
      TotalHours: 3.72758333333333e-06
      TotalMilliseconds: 13.4193
      TotalMinutes: 0.000223655
      TotalSeconds: 0.0134193
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 7451.95352961779
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotInline
    Time: 
      Ticks: 134520
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.55694444444444e-07
      TotalHours: 3.73666666666667e-06
      TotalMilliseconds: 13.452
      TotalMinutes: 0.0002242
      TotalSeconds: 0.013452
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.00243678880418
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 7433.83883437407
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 136782
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.583125e-07
      TotalHours: 3.7995e-06
      TotalMilliseconds: 13.6782
      TotalMinutes: 0.00022797
      TotalSeconds: 0.0136782
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.01929310768818
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 7310.90348145224
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 139502
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61460648148148e-07
      TotalHours: 3.87505555555556e-06
      TotalMilliseconds: 13.9502
      TotalMinutes: 0.000232503333333333
      TotalSeconds: 0.0139502
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.03956242128874
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 7168.35600923284
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: Filter
    Time: 
      Ticks: 171075
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 1.98003472222222e-07
      TotalHours: 4.75208333333333e-06
      TotalMilliseconds: 17.1075
      TotalMinutes: 0.000285125
      TotalSeconds: 0.0171075
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.27484295007936
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 5845.38944907204
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: WhereObject
    Time: 
      Ticks: 409702
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.7419212962963e-07
      TotalHours: 1.13806111111111e-05
      TotalMilliseconds: 40.9702
      TotalMinutes: 0.000682836666666667
      TotalSeconds: 0.0409702
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.05308026499147
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2440.79843398372
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2295
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|DotScriptBlockVariable|100        |00:00:00.013419|1x           |7451.95/s |
|DotInline             |100        |00:00:00.013452|1x           |7433.84/s |
|InlineScriptBlock     |100        |00:00:00.013678|1.02x        |7310.9/s  |
|ScriptBlockVariable   |100        |00:00:00.013950|1.04x        |7168.36/s |
|Filter                |100        |00:00:00.017107|1.27x        |5845.39/s |
|WhereObject           |100        |00:00:00.040970|3.05x        |2440.8/s  |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.410131|1x           |24.38/s   |
|Pipe to ScriptBlock               |10         |00:00:01.142302|2.79x        |8.75/s    |
|.Where Method                     |10         |00:00:05.232945|12.76x       |1.91/s    |
|Where-Object Property (Positional)|10         |00:00:11.756468|28.67x       |0.85/s    |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |10         |00:00:00.013764|1x           |726.49/s  |
|ForEach Loop                    |10         |00:00:00.015329|1.11x        |652.34/s  |
|Operator Filter (Explicit Array)|10         |00:00:00.016371|1.19x        |610.83/s  |
|Pipe to ScriptBlock             |10         |00:00:00.118862|8.64x        |84.13/s   |
|.Where Method                   |10         |00:00:00.588860|42.78x       |16.98/s   |
|Linq.Enumerable::Where          |10         |00:00:00.756587|54.97x       |13.22/s   |
|Where-Object Script (Positional)|10         |00:00:01.742750|126.61x      |5.74/s    |
