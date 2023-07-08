---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 106542
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.233125e-07
      TotalHours: 2.9595e-06
      TotalMilliseconds: 10.6542
      TotalMinutes: 0.00017757
      TotalSeconds: 0.0106542
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
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 938.596985226483
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 120780
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39791666666667e-07
      TotalHours: 3.355e-06
      TotalMilliseconds: 12.078
      TotalMinutes: 0.0002013
      TotalSeconds: 0.012078
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 1.13363743875655
    GroupName: Filtering Values
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 827.951647623779
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 173280
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.00555555555556e-07
      TotalHours: 4.81333333333333e-06
      TotalMilliseconds: 17.328
      TotalMinutes: 0.0002888
      TotalSeconds: 0.017328
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 1.62640085600045
    GroupName: Filtering Values
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 577.100646352724
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1261041
      Days: 0
      Hours: 0
      Milliseconds: 126
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45953819444444e-06
      TotalHours: 3.50289166666667e-05
      TotalMilliseconds: 126.1041
      TotalMinutes: 0.002101735
      TotalSeconds: 0.1261041
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 11.8360928084699
    GroupName: Filtering Values
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 79.2995628215102
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: .Where Method
    Time: 
      Ticks: 5610250
      Days: 0
      Hours: 0
      Milliseconds: 561
      Minutes: 0
      Seconds: 0
      TotalDays: 6.49334490740741e-06
      TotalHours: 0.000155840277777778
      TotalMilliseconds: 561.025
      TotalMinutes: 0.00935041666666667
      TotalSeconds: 0.561025
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 52.6576373636688
    GroupName: Filtering Values
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 17.8245176239918
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 8216793
      Days: 0
      Hours: 0
      Milliseconds: 821
      Minutes: 0
      Seconds: 0
      TotalDays: 9.51017708333333e-06
      TotalHours: 0.00022824425
      TotalMilliseconds: 821.6793
      TotalMinutes: 0.013694655
      TotalSeconds: 0.8216793
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 77.1225713803007
    GroupName: Filtering Values
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 12.1701982756533
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 18383272
      Days: 0
      Hours: 0
      Milliseconds: 838
      Minutes: 0
      Seconds: 1
      TotalDays: 2.12769351851852e-05
      TotalHours: 0.000510646444444444
      TotalMilliseconds: 1838.3272
      TotalMinutes: 0.0306387866666667
      TotalSeconds: 1.8383272
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering Values
    RelativeSpeed: 172.544836777984
    GroupName: Filtering Values
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 5.43972803100558
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 3818650
      Days: 0
      Hours: 0
      Milliseconds: 381
      Minutes: 0
      Seconds: 0
      TotalDays: 4.4197337962963e-06
      TotalHours: 0.000106073611111111
      TotalMilliseconds: 381.865
      TotalMinutes: 0.00636441666666667
      TotalSeconds: 0.381865
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
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 26.1872651329658
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 10146941
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 1
      TotalDays: 1.17441446759259e-05
      TotalHours: 0.000281859472222222
      TotalMilliseconds: 1014.6941
      TotalMinutes: 0.0169115683333333
      TotalSeconds: 1.0146941
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
    RelativeSpeed: 2.65720634255562
    GroupName: Filtering by Property Values
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 9.85518689819917
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: .Where Method
    Time: 
      Ticks: 43719801
      Days: 0
      Hours: 0
      Milliseconds: 371
      Minutes: 0
      Seconds: 4
      TotalDays: 5.06016215277778e-05
      TotalHours: 0.00121443891666667
      TotalMilliseconds: 4371.9801
      TotalMinutes: 0.072866335
      TotalSeconds: 4.3719801
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
    RelativeSpeed: 11.449020203475
    GroupName: Filtering by Property Values
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.28729311919787
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 103571661
      Days: 0
      Hours: 0
      Milliseconds: 357
      Minutes: 0
      Seconds: 10
      TotalDays: 0.000119874607638889
      TotalHours: 0.00287699058333333
      TotalMilliseconds: 10357.1661
      TotalMinutes: 0.172619435
      TotalSeconds: 10.3571661
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering by Property Values
    RelativeSpeed: 27.1225854686866
    GroupName: Filtering by Property Values
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 0.965515074630308
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: DotInline
    Time: 
      Ticks: 130642
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.51206018518519e-07
      TotalHours: 3.62894444444444e-06
      TotalMilliseconds: 13.0642
      TotalMinutes: 0.000217736666666667
      TotalSeconds: 0.0130642
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 7654.50620780453
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 139509
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.6146875e-07
      TotalHours: 3.87525e-06
      TotalMilliseconds: 13.9509
      TotalMinutes: 0.000232515
      TotalSeconds: 0.0139509
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.0678725065446
    GroupName: Filtering a Pipeline
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 7167.99632998588
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 167069
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.93366898148148e-07
      TotalHours: 4.64080555555556e-06
      TotalMilliseconds: 16.7069
      TotalMinutes: 0.000278448333333333
      TotalSeconds: 0.0167069
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.2788306976317
    GroupName: Filtering a Pipeline
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 5985.55088017526
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 248189
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.87255787037037e-07
      TotalHours: 6.89413888888889e-06
      TotalMilliseconds: 24.8189
      TotalMinutes: 0.000413648333333333
      TotalSeconds: 0.0248189
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.8997642412088
    GroupName: Filtering a Pipeline
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 4029.18743377023
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 249704
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.89009259259259e-07
      TotalHours: 6.93622222222222e-06
      TotalMilliseconds: 24.9704
      TotalMinutes: 0.000416173333333333
      TotalSeconds: 0.0249704
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.91136081811362
    GroupName: Filtering a Pipeline
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 4004.74161407106
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 400759
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.63841435185185e-07
      TotalHours: 1.11321944444444e-05
      TotalMilliseconds: 40.0759
      TotalMinutes: 0.000667931666666667
      TotalSeconds: 0.0400759
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.06761225333354
    GroupName: Filtering a Pipeline
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Filter
    Throughput: 2495.26523421807
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2397
---


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotInline             |00:00:00.013064|1x           |7654.51/s |
|ScriptBlockVariable   |00:00:00.013950|1.07x        |7168/s    |
|Filter                |00:00:00.016706|1.28x        |5985.55/s |
|InlineScriptBlock     |00:00:00.024818|1.9x         |4029.19/s |
|DotScriptBlockVariable|00:00:00.024970|1.91x        |4004.74/s |
|WhereObject           |00:00:00.040075|3.07x        |2495.27/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.381865|1x           |26.19/s   |
|Pipe to ScriptBlock               |00:00:01.014694|2.66x        |9.86/s    |
|.Where Method                     |00:00:04.371980|11.45x       |2.29/s    |
|Where-Object Property (Positional)|00:00:10.357166|27.12x       |0.97/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.010654|1x           |938.6/s   |
|ForEach Loop                    |00:00:00.012078|1.13x        |827.95/s  |
|Operator Filter (Explicit Array)|00:00:00.017328|1.63x        |577.1/s   |
|Pipe to ScriptBlock             |00:00:00.126104|11.84x       |79.3/s    |
|.Where Method                   |00:00:00.561025|52.66x       |17.82/s   |
|Linq.Enumerable::Where          |00:00:00.821679|77.12x       |12.17/s   |
|Where-Object Script (Positional)|00:00:01.838327|172.54x      |5.44/s    |
