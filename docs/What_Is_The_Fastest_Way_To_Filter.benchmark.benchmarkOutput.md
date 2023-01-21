---
layout: Benchmark

Data: 
  - Technique: ForEach Loop
    Time: 
      Ticks: 139159
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61063657407407e-07
      TotalHours: 3.86552777777778e-06
      TotalMilliseconds: 13.9159
      TotalMinutes: 0.000231931666666667
      TotalSeconds: 0.0139159
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 718.602461932035
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 153017
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.77103009259259e-07
      TotalHours: 4.25047222222222e-06
      TotalMilliseconds: 15.3017
      TotalMinutes: 0.000255028333333333
      TotalSeconds: 0.0153017
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.09958392917454
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 653.522157668756
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 352887
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.08434027777778e-07
      TotalHours: 9.80241666666667e-06
      TotalMilliseconds: 35.2887
      TotalMinutes: 0.000588145
      TotalSeconds: 0.0352887
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 2.5358546698381
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 283.376831676996
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1049432
      Days: 0
      Hours: 0
      Milliseconds: 104
      Minutes: 0
      Seconds: 0
      TotalDays: 1.21462037037037e-06
      TotalHours: 2.91508888888889e-05
      TotalMilliseconds: 104.9432
      TotalMinutes: 0.00174905333333333
      TotalSeconds: 0.1049432
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 7.54124418830259
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 95.28964239703
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 6236861
      Days: 0
      Hours: 0
      Milliseconds: 623
      Minutes: 0
      Seconds: 0
      TotalDays: 7.21858912037037e-06
      TotalHours: 0.000173246138888889
      TotalMilliseconds: 623.6861
      TotalMinutes: 0.0103947683333333
      TotalSeconds: 0.6236861
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 44.8182366932789
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 16.0337066995721
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7873491
      Days: 0
      Hours: 0
      Milliseconds: 787
      Minutes: 0
      Seconds: 0
      TotalDays: 9.11283680555556e-06
      TotalHours: 0.000218708083333333
      TotalMilliseconds: 787.3491
      TotalMinutes: 0.013122485
      TotalSeconds: 0.7873491
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 56.5791001659972
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 12.7008464225081
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 16986621
      Days: 0
      Hours: 0
      Milliseconds: 698
      Minutes: 0
      Seconds: 1
      TotalDays: 1.96604409722222e-05
      TotalHours: 0.000471850583333333
      TotalMilliseconds: 1698.6621
      TotalMinutes: 0.028311035
      TotalSeconds: 1.6986621
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        RepeatCount: 10
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 122.066276705064
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 5.88698599915781
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 4388420
      Days: 0
      Hours: 0
      Milliseconds: 438
      Minutes: 0
      Seconds: 0
      TotalDays: 5.07918981481481e-06
      TotalHours: 0.000121900555555556
      TotalMilliseconds: 438.842
      TotalMinutes: 0.00731403333333333
      TotalSeconds: 0.438842
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 22.787244611956
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 9719841
      Days: 0
      Hours: 0
      Milliseconds: 971
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12498159722222e-05
      TotalHours: 0.000269995583333333
      TotalMilliseconds: 971.9841
      TotalMinutes: 0.016199735
      TotalSeconds: 0.9719841
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 2.21488394456319
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 10.2882341388095
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 54829510
      Days: 0
      Hours: 0
      Milliseconds: 482
      Minutes: 0
      Seconds: 5
      TotalDays: 6.34600810185185e-05
      TotalHours: 0.00152304194444444
      TotalMilliseconds: 5482.951
      TotalMinutes: 0.0913825166666667
      TotalSeconds: 5.482951
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 12.4941345632369
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.82383537624174
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 120332453
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 12
      TotalDays: 0.000139273672453704
      TotalHours: 0.00334256813888889
      TotalMilliseconds: 12033.2453
      TotalMinutes: 0.200554088333333
      TotalSeconds: 12.0332453
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        RepeatCount: 10
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 27.420450412677
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 0.83103101039584
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 104308
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.20726851851852e-07
      TotalHours: 2.89744444444444e-06
      TotalMilliseconds: 10.4308
      TotalMinutes: 0.000173846666666667
      TotalSeconds: 0.0104308
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 9586.99236875407
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotInline
    Time: 
      Ticks: 107081
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.23936342592593e-07
      TotalHours: 2.97447222222222e-06
      TotalMilliseconds: 10.7081
      TotalMinutes: 0.000178468333333333
      TotalSeconds: 0.0107081
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.02658472983856
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 9338.72489050345
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 109070
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.26238425925926e-07
      TotalHours: 3.02972222222222e-06
      TotalMilliseconds: 10.907
      TotalMinutes: 0.000181783333333333
      TotalSeconds: 0.010907
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
    RelativeSpeed: 1.04565325766001
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 9168.42394792335
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 114742
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.32803240740741e-07
      TotalHours: 3.18727777777778e-06
      TotalMilliseconds: 11.4742
      TotalMinutes: 0.000191236666666667
      TotalSeconds: 0.0114742
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
    RelativeSpeed: 1.10003067837558
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 8715.20454585069
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: Filter
    Time: 
      Ticks: 120392
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39342592592593e-07
      TotalHours: 3.34422222222222e-06
      TotalMilliseconds: 12.0392
      TotalMinutes: 0.000200653333333333
      TotalSeconds: 0.0120392
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | isOdd        
              
    RelativeSpeed: 1.15419718525904
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 8306.19974749153
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: WhereObject
    Time: 
      Ticks: 649453
      Days: 0
      Hours: 0
      Milliseconds: 64
      Minutes: 0
      Seconds: 0
      TotalDays: 7.51681712962963e-07
      TotalHours: 1.80403611111111e-05
      TotalMilliseconds: 64.9453
      TotalMinutes: 0.00108242166666667
      TotalSeconds: 0.0649453
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
    RelativeSpeed: 6.22630095486444
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 1539.75730345383
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2095
---
What Is The Fastest Way To Filter
---------------------------------
> @2095 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|InlineScriptBlock     |00:00:00.010430|1x           |9586.99/s |
|DotInline             |00:00:00.010708|1.03x        |9338.72/s |
|DotScriptBlockVariable|00:00:00.010907|1.05x        |9168.42/s |
|ScriptBlockVariable   |00:00:00.011474|1.1x         |8715.2/s  |
|Filter                |00:00:00.012039|1.15x        |8306.2/s  |
|WhereObject           |00:00:00.064945|6.23x        |1539.76/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.438842|1x           |22.79/s   |
|Pipe to ScriptBlock               |00:00:00.971984|2.21x        |10.29/s   |
|.Where Method                     |00:00:05.482951|12.49x       |1.82/s    |
|Where-Object Property (Positional)|00:00:12.033245|27.42x       |0.83/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ForEach Loop                    |00:00:00.013915|1x           |718.6/s   |
|Operator Filter (Explicit Array)|00:00:00.015301|1.1x         |653.52/s  |
|Operator Filter (Assumed Array) |00:00:00.035288|2.54x        |283.38/s  |
|Pipe to ScriptBlock             |00:00:00.104943|7.54x        |95.29/s   |
|.Where Method                   |00:00:00.623686|44.82x       |16.03/s   |
|Linq.Enumerable::Where          |00:00:00.787349|56.58x       |12.7/s    |
|Where-Object Script (Positional)|00:00:01.698662|122.07x      |5.89/s    |
