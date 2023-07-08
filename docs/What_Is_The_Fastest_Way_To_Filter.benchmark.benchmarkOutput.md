---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 76757
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.88391203703704e-08
      TotalHours: 2.13213888888889e-06
      TotalMilliseconds: 7.6757
      TotalMinutes: 0.000127928333333333
      TotalSeconds: 0.0076757
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
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 1302.81277277642
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 116301
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.34607638888889e-07
      TotalHours: 3.23058333333333e-06
      TotalMilliseconds: 11.6301
      TotalMinutes: 0.000193835
      TotalSeconds: 0.0116301
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.51518428286671
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 859.837834584397
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 437200
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.06018518518518e-07
      TotalHours: 1.21444444444444e-05
      TotalMilliseconds: 43.72
      TotalMinutes: 0.000728666666666667
      TotalSeconds: 0.04372
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 5.69589744257853
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 228.728270814273
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 941701
      Days: 0
      Hours: 0
      Milliseconds: 94
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08993171296296e-06
      TotalHours: 2.61583611111111e-05
      TotalMilliseconds: 94.1701
      TotalMinutes: 0.00156950166666667
      TotalSeconds: 0.0941701
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 12.2686009093633
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 106.190818529448
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 5357157
      Days: 0
      Hours: 0
      Milliseconds: 535
      Minutes: 0
      Seconds: 0
      TotalDays: 6.20041319444444e-06
      TotalHours: 0.000148809916666667
      TotalMilliseconds: 535.7157
      TotalMinutes: 0.008928595
      TotalSeconds: 0.5357157
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 69.7937256536863
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 18.6666173867968
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 6559005
      Days: 0
      Hours: 0
      Milliseconds: 655
      Minutes: 0
      Seconds: 0
      TotalDays: 7.59144097222222e-06
      TotalHours: 0.000182194583333333
      TotalMilliseconds: 655.9005
      TotalMinutes: 0.010931675
      TotalSeconds: 0.6559005
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 85.4515549070443
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 15.2462149365643
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 15370446
      Days: 0
      Hours: 0
      Milliseconds: 537
      Minutes: 0
      Seconds: 1
      TotalDays: 1.77898680555556e-05
      TotalHours: 0.000426956833333333
      TotalMilliseconds: 1537.0446
      TotalMinutes: 0.02561741
      TotalSeconds: 1.5370446
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 200.248133720703
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 6.50599208376907
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 2652809
      Days: 0
      Hours: 0
      Milliseconds: 265
      Minutes: 0
      Seconds: 0
      TotalDays: 3.07038078703704e-06
      TotalHours: 7.36891388888889e-05
      TotalMilliseconds: 265.2809
      TotalMinutes: 0.00442134833333333
      TotalSeconds: 0.2652809
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
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 37.6958914117074
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 8802881
      Days: 0
      Hours: 0
      Milliseconds: 880
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01885196759259e-05
      TotalHours: 0.000244524472222222
      TotalMilliseconds: 880.2881
      TotalMinutes: 0.0146714683333333
      TotalSeconds: 0.8802881
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.31832446286182
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11.3599172816263
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 43025684
      Days: 0
      Hours: 0
      Milliseconds: 302
      Minutes: 0
      Seconds: 4
      TotalDays: 4.97982453703704e-05
      TotalHours: 0.00119515788888889
      TotalMilliseconds: 4302.5684
      TotalMinutes: 0.0717094733333333
      TotalSeconds: 4.3025684
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 16.2189151197844
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.32419314937561
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 90182525
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 9
      TotalDays: 0.000104377922453704
      TotalHours: 0.00250507013888889
      TotalMilliseconds: 9018.2525
      TotalMinutes: 0.150304208333333
      TotalSeconds: 9.0182525
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 33.9951066963359
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.10886227681028
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 88094
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01960648148148e-07
      TotalHours: 2.44705555555556e-06
      TotalMilliseconds: 8.8094
      TotalMinutes: 0.000146823333333333
      TotalSeconds: 0.0088094
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
    Throughput: 11351.5108860989
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 88810
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02789351851852e-07
      TotalHours: 2.46694444444444e-06
      TotalMilliseconds: 8.881
      TotalMinutes: 0.000148016666666667
      TotalSeconds: 0.008881
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.00812768179445
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11259.9932440041
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotInline
    Time: 
      Ticks: 89625
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03732638888889e-07
      TotalHours: 2.48958333333333e-06
      TotalMilliseconds: 8.9625
      TotalMinutes: 0.000149375
      TotalSeconds: 0.0089625
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.01737916316662
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11157.6011157601
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: Filter
    Time: 
      Ticks: 98093
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.13533564814815e-07
      TotalHours: 2.72480555555556e-06
      TotalMilliseconds: 9.8093
      TotalMinutes: 0.000163488333333333
      TotalSeconds: 0.0098093
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.1135037573501
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 10194.4073481288
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: WhereObject
    Time: 
      Ticks: 282572
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.27050925925926e-07
      TotalHours: 7.84922222222222e-06
      TotalMilliseconds: 28.2572
      TotalMinutes: 0.000470953333333333
      TotalSeconds: 0.0282572
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.20761913410675
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 3538.92105374913
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 329052
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.80847222222222e-07
      TotalHours: 9.14033333333333e-06
      TotalMilliseconds: 32.9052
      TotalMinutes: 0.00054842
      TotalSeconds: 0.0329052
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.73523736009263
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 3039.03334427385
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2793
---


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|InlineScriptBlock     |00:00:00.008809|1x           |11351.51/s|
|ScriptBlockVariable   |00:00:00.008881|1.01x        |11259.99/s|
|DotInline             |00:00:00.008962|1.02x        |11157.6/s |
|Filter                |00:00:00.009809|1.11x        |10194.41/s|
|WhereObject           |00:00:00.028257|3.21x        |3538.92/s |
|DotScriptBlockVariable|00:00:00.032905|3.74x        |3039.03/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.265280|1x           |37.7/s    |
|Pipe to ScriptBlock               |00:00:00.880288|3.32x        |11.36/s   |
|.Where Method                     |00:00:04.302568|16.22x       |2.32/s    |
|Where-Object Property (Positional)|00:00:09.018252|34x          |1.11/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.007675|1x           |1302.81/s |
|ForEach Loop                    |00:00:00.011630|1.52x        |859.84/s  |
|Operator Filter (Explicit Array)|00:00:00.043720|5.7x         |228.73/s  |
|Pipe to ScriptBlock             |00:00:00.094170|12.27x       |106.19/s  |
|.Where Method                   |00:00:00.535715|69.79x       |18.67/s   |
|Linq.Enumerable::Where          |00:00:00.655900|85.45x       |15.25/s   |
|Where-Object Script (Positional)|00:00:01.537044|200.25x      |6.51/s    |
