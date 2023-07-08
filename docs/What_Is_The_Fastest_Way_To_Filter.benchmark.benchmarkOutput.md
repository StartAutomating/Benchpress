---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 108070
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25081018518519e-07
      TotalHours: 3.00194444444444e-06
      TotalMilliseconds: 10.807
      TotalMinutes: 0.000180116666666667
      TotalSeconds: 0.010807
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 925.326177477561
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 130117
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5059837962963e-07
      TotalHours: 3.61436111111111e-06
      TotalMilliseconds: 13.0117
      TotalMinutes: 0.000216861666666667
      TotalSeconds: 0.0130117
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        RepeatCount: 10
    RelativeSpeed: 1.20400666234848
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 768.53908405512
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 163053
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.8871875e-07
      TotalHours: 4.52925e-06
      TotalMilliseconds: 16.3053
      TotalMinutes: 0.000271755
      TotalSeconds: 0.0163053
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        RepeatCount: 10
    RelativeSpeed: 1.50877209216249
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 613.297516758355
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1098697
      Days: 0
      Hours: 0
      Milliseconds: 109
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2716400462963e-06
      TotalHours: 3.05193611111111e-05
      TotalMilliseconds: 109.8697
      TotalMinutes: 0.00183116166666667
      TotalSeconds: 0.1098697
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        RepeatCount: 10
    RelativeSpeed: 10.1665309521606
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 91.0169045696857
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 5569529
      Days: 0
      Hours: 0
      Milliseconds: 556
      Minutes: 0
      Seconds: 0
      TotalDays: 6.44621412037037e-06
      TotalHours: 0.000154709138888889
      TotalMilliseconds: 556.9529
      TotalMinutes: 0.00928254833333333
      TotalSeconds: 0.5569529
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        RepeatCount: 10
    RelativeSpeed: 51.5363097992042
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 17.9548396282702
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7615460
      Days: 0
      Hours: 0
      Milliseconds: 761
      Minutes: 0
      Seconds: 0
      TotalDays: 8.81418981481482e-06
      TotalHours: 0.000211540555555556
      TotalMilliseconds: 761.546
      TotalMinutes: 0.0126924333333333
      TotalSeconds: 0.761546
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        RepeatCount: 10
    RelativeSpeed: 70.4678449153327
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 13.1311831458638
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 17185054
      Days: 0
      Hours: 0
      Milliseconds: 718
      Minutes: 0
      Seconds: 1
      TotalDays: 1.98901087962963e-05
      TotalHours: 0.000477362611111111
      TotalMilliseconds: 1718.5054
      TotalMinutes: 0.0286417566666667
      TotalSeconds: 1.7185054
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        RepeatCount: 10
    RelativeSpeed: 159.017803275655
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 5.81900993735603
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 3728138
      Days: 0
      Hours: 0
      Milliseconds: 372
      Minutes: 0
      Seconds: 0
      TotalDays: 4.31497453703704e-06
      TotalHours: 0.000103559388888889
      TotalMilliseconds: 372.8138
      TotalMinutes: 0.00621356333333333
      TotalSeconds: 0.3728138
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 26.8230414217499
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 9915349
      Days: 0
      Hours: 0
      Milliseconds: 991
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14760983796296e-05
      TotalHours: 0.000275426361111111
      TotalMilliseconds: 991.5349
      TotalMinutes: 0.0165255816666667
      TotalSeconds: 0.9915349
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        RepeatCount: 10
    RelativeSpeed: 2.65959816938107
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 10.0853736968815
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 45563509
      Days: 0
      Hours: 0
      Milliseconds: 556
      Minutes: 0
      Seconds: 4
      TotalDays: 5.27355428240741e-05
      TotalHours: 0.00126565302777778
      TotalMilliseconds: 4556.3509
      TotalMinutes: 0.0759391816666667
      TotalSeconds: 4.5563509
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        RepeatCount: 10
    RelativeSpeed: 12.2215188922728
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 2.19473877659423
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 100308355
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 10
      TotalDays: 0.000116097633101852
      TotalHours: 0.00278634319444444
      TotalMilliseconds: 10030.8355
      TotalMinutes: 0.167180591666667
      TotalSeconds: 10.0308355
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        RepeatCount: 10
    RelativeSpeed: 26.905751611126
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 0.996925929051473
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 133290
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.54270833333333e-07
      TotalHours: 3.7025e-06
      TotalMilliseconds: 13.329
      TotalMinutes: 0.00022215
      TotalSeconds: 0.013329
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 7502.43829244504
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 133618
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.54650462962963e-07
      TotalHours: 3.71161111111111e-06
      TotalMilliseconds: 13.3618
      TotalMinutes: 0.000222696666666667
      TotalSeconds: 0.0133618
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
    RelativeSpeed: 1.00246079975992
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 7484.02161385442
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotInline
    Time: 
      Ticks: 135714
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.57076388888889e-07
      TotalHours: 3.76983333333333e-06
      TotalMilliseconds: 13.5714
      TotalMinutes: 0.00022619
      TotalSeconds: 0.0135714
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.01818591042089
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 7368.43656512961
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 145706
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.68641203703704e-07
      TotalHours: 4.04738888888889e-06
      TotalMilliseconds: 14.5706
      TotalMinutes: 0.000242843333333333
      TotalSeconds: 0.0145706
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.093150273839
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 6863.13535475547
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: Filter
    Time: 
      Ticks: 275305
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.18640046296296e-07
      TotalHours: 7.64736111111111e-06
      TotalMilliseconds: 27.5305
      TotalMinutes: 0.000458841666666667
      TotalSeconds: 0.0275305
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | isOdd        
              
    RelativeSpeed: 2.06545877410158
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 3632.3350465847
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: WhereObject
    Time: 
      Ticks: 401338
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.64511574074074e-07
      TotalHours: 1.11482777777778e-05
      TotalMilliseconds: 40.1338
      TotalMinutes: 0.000668896666666667
      TotalSeconds: 0.0401338
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
    RelativeSpeed: 3.01101357941331
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2491.66537930622
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2295
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|ScriptBlockVariable   |100        |00:00:00.013329|1x           |7502.44/s |
|DotScriptBlockVariable|100        |00:00:00.013361|1x           |7484.02/s |
|DotInline             |100        |00:00:00.013571|1.02x        |7368.44/s |
|InlineScriptBlock     |100        |00:00:00.014570|1.09x        |6863.14/s |
|Filter                |100        |00:00:00.027530|2.07x        |3632.34/s |
|WhereObject           |100        |00:00:00.040133|3.01x        |2491.67/s |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.372813|1x           |26.82/s   |
|Pipe to ScriptBlock               |10         |00:00:00.991534|2.66x        |10.09/s   |
|.Where Method                     |10         |00:00:04.556350|12.22x       |2.19/s    |
|Where-Object Property (Positional)|10         |00:00:10.030835|26.91x       |1/s       |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |10         |00:00:00.010807|1x           |925.33/s  |
|ForEach Loop                    |10         |00:00:00.013011|1.2x         |768.54/s  |
|Operator Filter (Explicit Array)|10         |00:00:00.016305|1.51x        |613.3/s   |
|Pipe to ScriptBlock             |10         |00:00:00.109869|10.17x       |91.02/s   |
|.Where Method                   |10         |00:00:00.556952|51.54x       |17.95/s   |
|Linq.Enumerable::Where          |10         |00:00:00.761546|70.47x       |13.13/s   |
|Where-Object Script (Positional)|10         |00:00:01.718505|159.02x      |5.82/s    |
