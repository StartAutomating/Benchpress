---
layout: Benchmark

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 112219
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.29883101851852e-07
      TotalHours: 3.11719444444444e-06
      TotalMilliseconds: 11.2219
      TotalMinutes: 0.000187031666666667
      TotalSeconds: 0.0112219
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
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 891.114695372441
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 129351
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.49711805555556e-07
      TotalHours: 3.59308333333333e-06
      TotalMilliseconds: 12.9351
      TotalMinutes: 0.000215585
      TotalSeconds: 0.0129351
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.15266576961121
    GroupName: Filtering Values
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 773.090273751266
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 147629
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.70866898148148e-07
      TotalHours: 4.10080555555556e-06
      TotalMilliseconds: 14.7629
      TotalMinutes: 0.000246048333333333
      TotalSeconds: 0.0147629
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.31554371363138
    GroupName: Filtering Values
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 677.373686741765
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1102901
      Days: 0
      Hours: 0
      Milliseconds: 110
      Minutes: 0
      Seconds: 0
      TotalDays: 1.27650578703704e-06
      TotalHours: 3.06361388888889e-05
      TotalMilliseconds: 110.2901
      TotalMinutes: 0.00183816833333333
      TotalSeconds: 0.1102901
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 9.82811288640961
    GroupName: Filtering Values
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 90.6699694714213
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 5780263
      Days: 0
      Hours: 0
      Milliseconds: 578
      Minutes: 0
      Seconds: 0
      TotalDays: 6.69011921296296e-06
      TotalHours: 0.000160562861111111
      TotalMilliseconds: 578.0263
      TotalMinutes: 0.00963377166666667
      TotalSeconds: 0.5780263
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 51.5087730241759
    GroupName: Filtering Values
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 17.3002508709379
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7817689
      Days: 0
      Hours: 0
      Milliseconds: 781
      Minutes: 0
      Seconds: 0
      TotalDays: 9.04825115740741e-06
      TotalHours: 0.000217158027777778
      TotalMilliseconds: 781.7689
      TotalMinutes: 0.0130294816666667
      TotalSeconds: 0.7817689
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 69.6645755175149
    GroupName: Filtering Values
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 12.7915039853849
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 18265242
      Days: 0
      Hours: 0
      Milliseconds: 826
      Minutes: 0
      Seconds: 1
      TotalDays: 2.11403263888889e-05
      TotalHours: 0.000507367833333333
      TotalMilliseconds: 1826.5242
      TotalMinutes: 0.03044207
      TotalSeconds: 1.8265242
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        GroupName: Filtering Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 162.764255607339
    GroupName: Filtering Values
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 5.47487955538722
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 3569335
      Days: 0
      Hours: 0
      Milliseconds: 356
      Minutes: 0
      Seconds: 0
      TotalDays: 4.13117476851852e-06
      TotalHours: 9.91481944444444e-05
      TotalMilliseconds: 356.9335
      TotalMinutes: 0.00594889166666667
      TotalSeconds: 0.3569335
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
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 28.0164232272958
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 9392642
      Days: 0
      Hours: 0
      Milliseconds: 939
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08711134259259e-05
      TotalHours: 0.000260906722222222
      TotalMilliseconds: 939.2642
      TotalMinutes: 0.0156544033333333
      TotalSeconds: 0.9392642
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 2.63148233494474
    GroupName: Filtering by Property Values
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 10.6466316931913
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 42074293
      Days: 0
      Hours: 0
      Milliseconds: 207
      Minutes: 0
      Seconds: 4
      TotalDays: 4.86970983796296e-05
      TotalHours: 0.00116873036111111
      TotalMilliseconds: 4207.4293
      TotalMinutes: 0.0701238216666667
      TotalSeconds: 4.2074293
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 11.7877119967725
    GroupName: Filtering by Property Values
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.37674819633927
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 96588526
      Days: 0
      Hours: 0
      Milliseconds: 658
      Minutes: 0
      Seconds: 9
      TotalDays: 0.000111792275462963
      TotalHours: 0.00268301461111111
      TotalMilliseconds: 9658.8526
      TotalMinutes: 0.160980876666667
      TotalSeconds: 9.6588526
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 27.0606502331667
    GroupName: Filtering by Property Values
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.03531966105374
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 126876
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.46847222222222e-07
      TotalHours: 3.52433333333333e-06
      TotalMilliseconds: 12.6876
      TotalMinutes: 0.00021146
      TotalSeconds: 0.0126876
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 7881.7112771525
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 129207
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.49545138888889e-07
      TotalHours: 3.58908333333333e-06
      TotalMilliseconds: 12.9207
      TotalMinutes: 0.000215345
      TotalSeconds: 0.0129207
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.01837226898704
    GroupName: Filtering a Pipeline
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 7739.51875672371
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 147663
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.7090625e-07
      TotalHours: 4.10175e-06
      TotalMilliseconds: 14.7663
      TotalMinutes: 0.000246105
      TotalSeconds: 0.0147663
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.16383713231817
    GroupName: Filtering a Pipeline
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 6772.17718724393
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 234811
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.71771990740741e-07
      TotalHours: 6.52252777777778e-06
      TotalMilliseconds: 23.4811
      TotalMinutes: 0.000391351666666667
      TotalSeconds: 0.0234811
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.85071250669945
    GroupName: Filtering a Pipeline
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 4258.74426666553
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 240581
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.78450231481481e-07
      TotalHours: 6.68280555555556e-06
      TotalMilliseconds: 24.0581
      TotalMinutes: 0.000400968333333333
      TotalSeconds: 0.0240581
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.89618998076862
    GroupName: Filtering a Pipeline
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 4156.60422061593
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 378941
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.3858912037037e-07
      TotalHours: 1.05261388888889e-05
      TotalMilliseconds: 37.8941
      TotalMinutes: 0.000631568333333333
      TotalSeconds: 0.0378941
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 2.98670355307544
    GroupName: Filtering a Pipeline
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Filter
    Throughput: 2638.93323762802
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2394
---
What Is The Fastest Way To Filter
---------------------------------
> @2394 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|InlineScriptBlock     |00:00:00.012687|1x           |7881.71/s |
|ScriptBlockVariable   |00:00:00.012920|1.02x        |7739.52/s |
|Filter                |00:00:00.014766|1.16x        |6772.18/s |
|DotScriptBlockVariable|00:00:00.023481|1.85x        |4258.74/s |
|DotInline             |00:00:00.024058|1.9x         |4156.6/s  |
|WhereObject           |00:00:00.037894|2.99x        |2638.93/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.356933|1x           |28.02/s   |
|Pipe to ScriptBlock               |00:00:00.939264|2.63x        |10.65/s   |
|.Where Method                     |00:00:04.207429|11.79x       |2.38/s    |
|Where-Object Property (Positional)|00:00:09.658852|27.06x       |1.04/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.011221|1x           |891.11/s  |
|ForEach Loop                    |00:00:00.012935|1.15x        |773.09/s  |
|Operator Filter (Explicit Array)|00:00:00.014762|1.32x        |677.37/s  |
|Pipe to ScriptBlock             |00:00:00.110290|9.83x        |90.67/s   |
|.Where Method                   |00:00:00.578026|51.51x       |17.3/s    |
|Linq.Enumerable::Where          |00:00:00.781768|69.66x       |12.79/s   |
|Where-Object Script (Positional)|00:00:01.826524|162.76x      |5.47/s    |
