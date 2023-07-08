---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 96497
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.11686342592593e-07
      TotalHours: 2.68047222222222e-06
      TotalMilliseconds: 9.6497
      TotalMinutes: 0.000160828333333333
      TotalSeconds: 0.0096497
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
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 1036.30164668332
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 108257
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25297453703704e-07
      TotalHours: 3.00713888888889e-06
      TotalMilliseconds: 10.8257
      TotalMinutes: 0.000180428333333333
      TotalSeconds: 0.0108257
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        RepeatCount: 10
    RelativeSpeed: 1.12186907364996
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 923.727795893106
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 128117
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.48283564814815e-07
      TotalHours: 3.55880555555556e-06
      TotalMilliseconds: 12.8117
      TotalMinutes: 0.000213528333333333
      TotalSeconds: 0.0128117
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        RepeatCount: 10
    RelativeSpeed: 1.32767858068126
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 780.536540818158
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 916615
      Days: 0
      Hours: 0
      Milliseconds: 91
      Minutes: 0
      Seconds: 0
      TotalDays: 1.06089699074074e-06
      TotalHours: 2.54615277777778e-05
      TotalMilliseconds: 91.6615
      TotalMinutes: 0.00152769166666667
      TotalSeconds: 0.0916615
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        RepeatCount: 10
    RelativeSpeed: 9.49889633874628
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 109.097058197826
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 5657415
      Days: 0
      Hours: 0
      Milliseconds: 565
      Minutes: 0
      Seconds: 0
      TotalDays: 6.54793402777778e-06
      TotalHours: 0.000157150416666667
      TotalMilliseconds: 565.7415
      TotalMinutes: 0.009429025
      TotalSeconds: 0.5657415
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        RepeatCount: 10
    RelativeSpeed: 58.627884804709
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 17.675917358016
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7116628
      Days: 0
      Hours: 0
      Milliseconds: 711
      Minutes: 0
      Seconds: 0
      TotalDays: 8.23683796296296e-06
      TotalHours: 0.000197684111111111
      TotalMilliseconds: 711.6628
      TotalMinutes: 0.0118610466666667
      TotalSeconds: 0.7116628
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        RepeatCount: 10
    RelativeSpeed: 73.749733152326
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 14.0515985941657
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 15400033
      Days: 0
      Hours: 0
      Milliseconds: 540
      Minutes: 0
      Seconds: 1
      TotalDays: 1.78241122685185e-05
      TotalHours: 0.000427778694444444
      TotalMilliseconds: 1540.0033
      TotalMinutes: 0.0256667216666667
      TotalSeconds: 1.5400033
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        RepeatCount: 10
    RelativeSpeed: 159.590795568774
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 6.49349257887954
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 4194092
      Days: 0
      Hours: 0
      Milliseconds: 419
      Minutes: 0
      Seconds: 0
      TotalDays: 4.85427314814815e-06
      TotalHours: 0.000116502555555556
      TotalMilliseconds: 419.4092
      TotalMinutes: 0.00699015333333333
      TotalSeconds: 0.4194092
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
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 23.8430630515497
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 9114168
      Days: 0
      Hours: 0
      Milliseconds: 911
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05488055555556e-05
      TotalHours: 0.000253171333333333
      TotalMilliseconds: 911.4168
      TotalMinutes: 0.01519028
      TotalSeconds: 0.9114168
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        RepeatCount: 10
    RelativeSpeed: 2.17309682286416
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 10.9719285402683
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 49064340
      Days: 0
      Hours: 0
      Milliseconds: 906
      Minutes: 0
      Seconds: 4
      TotalDays: 5.67874305555556e-05
      TotalHours: 0.00136289833333333
      TotalMilliseconds: 4906.434
      TotalMinutes: 0.0817739
      TotalSeconds: 4.906434
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        RepeatCount: 10
    RelativeSpeed: 11.6984415220267
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.03814012376402
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 103573376
      Days: 0
      Hours: 0
      Milliseconds: 357
      Minutes: 0
      Seconds: 10
      TotalDays: 0.000119876592592593
      TotalHours: 0.00287703822222222
      TotalMilliseconds: 10357.3376
      TotalMinutes: 0.172622293333333
      TotalSeconds: 10.3573376
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        RepeatCount: 10
    RelativeSpeed: 24.6950653442986
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 0.965499087333023
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 88551
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02489583333333e-07
      TotalHours: 2.45975e-06
      TotalMilliseconds: 8.8551
      TotalMinutes: 0.000147585
      TotalSeconds: 0.0088551
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 11292.9272396698
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 88742
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02710648148148e-07
      TotalHours: 2.46505555555556e-06
      TotalMilliseconds: 8.8742
      TotalMinutes: 0.000147903333333333
      TotalSeconds: 0.0088742
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.00215694910278
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 11268.6213968583
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 98789
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1433912037037e-07
      TotalHours: 2.74413888888889e-06
      TotalMilliseconds: 9.8789
      TotalMinutes: 0.000164648333333333
      TotalSeconds: 0.0098789
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.11561698907974
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 10122.5844982741
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 99305
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14936342592593e-07
      TotalHours: 2.75847222222222e-06
      TotalMilliseconds: 9.9305
      TotalMinutes: 0.000165508333333333
      TotalSeconds: 0.0099305
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.12144413953541
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 10069.9864055184
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 284319
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.29072916666667e-07
      TotalHours: 7.89775e-06
      TotalMilliseconds: 28.4319
      TotalMinutes: 0.000473865
      TotalSeconds: 0.0284319
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.21079377985568
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 3517.17612962904
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 351436
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.0675462962963e-07
      TotalHours: 9.76211111111111e-06
      TotalMilliseconds: 35.1436
      TotalMinutes: 0.000585726666666667
      TotalSeconds: 0.0351436
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.96874117740059
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 2845.468307174
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2594
---


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|InlineScriptBlock     |00:00:00.008855|1x           |11292.93/s|
|DotInline             |00:00:00.008874|1x           |11268.62/s|
|ScriptBlockVariable   |00:00:00.009878|1.12x        |10122.58/s|
|Filter                |00:00:00.009930|1.12x        |10069.99/s|
|WhereObject           |00:00:00.028431|3.21x        |3517.18/s |
|DotScriptBlockVariable|00:00:00.035143|3.97x        |2845.47/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.419409|1x           |23.84/s   |
|Pipe to ScriptBlock               |00:00:00.911416|2.17x        |10.97/s   |
|.Where Method                     |00:00:04.906434|11.7x        |2.04/s    |
|Where-Object Property (Positional)|00:00:10.357337|24.7x        |0.97/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.009649|1x           |1036.3/s  |
|ForEach Loop                    |00:00:00.010825|1.12x        |923.73/s  |
|Operator Filter (Explicit Array)|00:00:00.012811|1.33x        |780.54/s  |
|Pipe to ScriptBlock             |00:00:00.091661|9.5x         |109.1/s   |
|.Where Method                   |00:00:00.565741|58.63x       |17.68/s   |
|Linq.Enumerable::Where          |00:00:00.711662|73.75x       |14.05/s   |
|Where-Object Script (Positional)|00:00:01.540003|159.59x      |6.49/s    |
