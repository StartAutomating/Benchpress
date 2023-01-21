---
layout: Benchmark

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 83055
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.61284722222222e-08
      TotalHours: 2.30708333333333e-06
      TotalMilliseconds: 8.3055
      TotalMinutes: 0.000138425
      TotalSeconds: 0.0083055
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 1204.02143158148
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 100965
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.16857638888889e-07
      TotalHours: 2.80458333333333e-06
      TotalMilliseconds: 10.0965
      TotalMinutes: 0.000168275
      TotalSeconds: 0.0100965
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.21564023839624
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 990.442232456792
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 108308
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25356481481481e-07
      TotalHours: 3.00855555555556e-06
      TotalMilliseconds: 10.8308
      TotalMinutes: 0.000180513333333333
      TotalSeconds: 0.0108308
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.30405153211727
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 923.292831554456
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1029807
      Days: 0
      Hours: 0
      Milliseconds: 102
      Minutes: 0
      Seconds: 0
      TotalDays: 1.19190625e-06
      TotalHours: 2.860575e-05
      TotalMilliseconds: 102.9807
      TotalMinutes: 0.001716345
      TotalSeconds: 0.1029807
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 12.3990969839263
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 97.105574151273
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 4840463
      Days: 0
      Hours: 0
      Milliseconds: 484
      Minutes: 0
      Seconds: 0
      TotalDays: 5.60238773148148e-06
      TotalHours: 0.000134457305555556
      TotalMilliseconds: 484.0463
      TotalMinutes: 0.00806743833333333
      TotalSeconds: 0.4840463
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 58.2802119077719
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 20.6591807436603
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 6470398
      Days: 0
      Hours: 0
      Milliseconds: 647
      Minutes: 0
      Seconds: 0
      TotalDays: 7.48888657407407e-06
      TotalHours: 0.000179733277777778
      TotalMilliseconds: 647.0398
      TotalMinutes: 0.0107839966666667
      TotalSeconds: 0.6470398
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 77.9049786286196
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 15.4549998315405
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 12982529
      Days: 0
      Hours: 0
      Milliseconds: 298
      Minutes: 0
      Seconds: 1
      TotalDays: 1.50260752314815e-05
      TotalHours: 0.000360625805555556
      TotalMilliseconds: 1298.2529
      TotalMinutes: 0.0216375483333333
      TotalSeconds: 1.2982529
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 156.312431521281
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 7.70265947412865
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 3262973
      Days: 0
      Hours: 0
      Milliseconds: 326
      Minutes: 0
      Seconds: 0
      TotalDays: 3.77658912037037e-06
      TotalHours: 9.06381388888889e-05
      TotalMilliseconds: 326.2973
      TotalMinutes: 0.00543828833333333
      TotalSeconds: 0.3262973
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 30.6468977830954
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 9397848
      Days: 0
      Hours: 0
      Milliseconds: 939
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08771388888889e-05
      TotalHours: 0.000261051333333333
      TotalMilliseconds: 939.7848
      TotalMinutes: 0.01566308
      TotalSeconds: 0.9397848
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 2.88014887037067
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 10.6407339212126
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 41004343
      Days: 0
      Hours: 0
      Milliseconds: 100
      Minutes: 0
      Seconds: 4
      TotalDays: 4.74587303240741e-05
      TotalHours: 0.00113900952777778
      TotalMilliseconds: 4100.4343
      TotalMinutes: 0.0683405716666667
      TotalSeconds: 4.1004343
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 12.5665590858398
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.43876605948789
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 87917566
      Days: 0
      Hours: 0
      Milliseconds: 791
      Minutes: 0
      Seconds: 8
      TotalDays: 0.00010175644212963
      TotalHours: 0.00244215461111111
      TotalMilliseconds: 8791.7566
      TotalMinutes: 0.146529276666667
      TotalSeconds: 8.7917566
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 26.9440065854054
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.1374291230947
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 85813
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.93206018518519e-08
      TotalHours: 2.38369444444444e-06
      TotalMilliseconds: 8.5813
      TotalMinutes: 0.000143021666666667
      TotalSeconds: 0.0085813
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11653.2460116766
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 88650
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02604166666667e-07
      TotalHours: 2.4625e-06
      TotalMilliseconds: 8.865
      TotalMinutes: 0.00014775
      TotalSeconds: 0.008865
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.03306025893513
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11280.3158488438
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 89483
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03568287037037e-07
      TotalHours: 2.48563888888889e-06
      TotalMilliseconds: 8.9483
      TotalMinutes: 0.000149138333333333
      TotalSeconds: 0.0089483
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.04276741286285
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11175.307041561
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 97138
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12428240740741e-07
      TotalHours: 2.69827777777778e-06
      TotalMilliseconds: 9.7138
      TotalMinutes: 0.000161896666666667
      TotalSeconds: 0.0097138
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.13197301108224
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 10294.6323786778
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 319641
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.69954861111111e-07
      TotalHours: 8.87891666666667e-06
      TotalMilliseconds: 31.9641
      TotalMinutes: 0.000532735
      TotalSeconds: 0.0319641
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.7248552084183
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 3128.50979692843
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 498227
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.7665162037037e-07
      TotalHours: 1.38396388888889e-05
      TotalMilliseconds: 49.8227
      TotalMinutes: 0.000830378333333333
      TotalSeconds: 0.0498227
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 5.80596180065957
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 2007.11723772497
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
|InlineScriptBlock     |00:00:00.008581|1x           |11653.25/s|
|ScriptBlockVariable   |00:00:00.008865|1.03x        |11280.32/s|
|DotScriptBlockVariable|00:00:00.008948|1.04x        |11175.31/s|
|Filter                |00:00:00.009713|1.13x        |10294.63/s|
|DotInline             |00:00:00.031964|3.72x        |3128.51/s |
|WhereObject           |00:00:00.049822|5.81x        |2007.12/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.326297|1x           |30.65/s   |
|Pipe to ScriptBlock               |00:00:00.939784|2.88x        |10.64/s   |
|.Where Method                     |00:00:04.100434|12.57x       |2.44/s    |
|Where-Object Property (Positional)|00:00:08.791756|26.94x       |1.14/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.008305|1x           |1204.02/s |
|ForEach Loop                    |00:00:00.010096|1.22x        |990.44/s  |
|Operator Filter (Explicit Array)|00:00:00.010830|1.3x         |923.29/s  |
|Pipe to ScriptBlock             |00:00:00.102980|12.4x        |97.11/s   |
|.Where Method                   |00:00:00.484046|58.28x       |20.66/s   |
|Linq.Enumerable::Where          |00:00:00.647039|77.9x        |15.45/s   |
|Where-Object Script (Positional)|00:00:01.298252|156.31x      |7.7/s     |
