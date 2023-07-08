---
layout: Benchmark

Data: 
  - Technique: ForEach Loop
    Time: 
      Ticks: 144697
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.6747337962963e-07
      TotalHours: 4.01936111111111e-06
      TotalMilliseconds: 14.4697
      TotalMinutes: 0.000241161666666667
      TotalSeconds: 0.0144697
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 691.099331706946
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 601787
      Days: 0
      Hours: 0
      Milliseconds: 60
      Minutes: 0
      Seconds: 0
      TotalDays: 6.96512731481482e-07
      TotalHours: 1.67163055555556e-05
      TotalMilliseconds: 60.1787
      TotalMinutes: 0.00100297833333333
      TotalSeconds: 0.0601787
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        RepeatCount: 10
    RelativeSpeed: 4.15894593529928
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 166.171751799225
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 714939
      Days: 0
      Hours: 0
      Milliseconds: 71
      Minutes: 0
      Seconds: 0
      TotalDays: 8.27475694444444e-07
      TotalHours: 1.98594166666667e-05
      TotalMilliseconds: 71.4939
      TotalMinutes: 0.001191565
      TotalSeconds: 0.0714939
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        RepeatCount: 10
    RelativeSpeed: 4.94093865111232
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 139.872073002032
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1204761
      Days: 0
      Hours: 0
      Milliseconds: 120
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39439930555556e-06
      TotalHours: 3.34655833333333e-05
      TotalMilliseconds: 120.4761
      TotalMinutes: 0.002007935
      TotalSeconds: 0.1204761
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        RepeatCount: 10
    RelativeSpeed: 8.32609521966592
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 83.0040149042009
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 5996566
      Days: 0
      Hours: 0
      Milliseconds: 599
      Minutes: 0
      Seconds: 0
      TotalDays: 6.94046990740741e-06
      TotalHours: 0.000166571277777778
      TotalMilliseconds: 599.6566
      TotalMinutes: 0.00999427666666667
      TotalSeconds: 0.5996566
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        RepeatCount: 10
    RelativeSpeed: 41.442227551366
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 16.676211018106
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 9612418
      Days: 0
      Hours: 0
      Milliseconds: 961
      Minutes: 0
      Seconds: 0
      TotalDays: 1.11254837962963e-05
      TotalHours: 0.000267011611111111
      TotalMilliseconds: 961.2418
      TotalMinutes: 0.0160206966666667
      TotalSeconds: 0.9612418
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        RepeatCount: 10
    RelativeSpeed: 66.4313565588782
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 10.4032096814766
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 20058494
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 2
      TotalDays: 2.3215849537037e-05
      TotalHours: 0.000557180388888889
      TotalMilliseconds: 2005.8494
      TotalMinutes: 0.0334308233333333
      TotalSeconds: 2.0058494
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        RepeatCount: 10
    RelativeSpeed: 138.624117984478
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 4.98541914462771
    BenchmarkInput: 
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 3479968
      Days: 0
      Hours: 0
      Milliseconds: 347
      Minutes: 0
      Seconds: 0
      TotalDays: 4.02774074074074e-06
      TotalHours: 9.66657777777778e-05
      TotalMilliseconds: 347.9968
      TotalMinutes: 0.00579994666666667
      TotalSeconds: 0.3479968
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 28.7358964220361
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 9556522
      Days: 0
      Hours: 0
      Milliseconds: 955
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10607893518519e-05
      TotalHours: 0.000265458944444444
      TotalMilliseconds: 955.6522
      TotalMinutes: 0.0159275366666667
      TotalSeconds: 0.9556522
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        RepeatCount: 10
    RelativeSpeed: 2.74615226346909
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 10.4640579491158
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 41932144
      Days: 0
      Hours: 0
      Milliseconds: 193
      Minutes: 0
      Seconds: 4
      TotalDays: 4.85325740740741e-05
      TotalHours: 0.00116478177777778
      TotalMilliseconds: 4193.2144
      TotalMinutes: 0.0698869066666667
      TotalSeconds: 4.1932144
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        RepeatCount: 10
    RelativeSpeed: 12.049577467379
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.38480531784876
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 105881075
      Days: 0
      Hours: 0
      Milliseconds: 588
      Minutes: 0
      Seconds: 10
      TotalDays: 0.000122547540509259
      TotalHours: 0.00294114097222222
      TotalMilliseconds: 10588.1075
      TotalMinutes: 0.176468458333333
      TotalSeconds: 10.5881075
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        RepeatCount: 10
    RelativeSpeed: 30.4258760425383
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 0.944455843501778
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
      RepeatCount: 10
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 120555
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.3953125e-07
      TotalHours: 3.34875e-06
      TotalMilliseconds: 12.0555
      TotalMinutes: 0.000200925
      TotalSeconds: 0.0120555
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 8294.9691012401
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 134070
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.55173611111111e-07
      TotalHours: 3.72416666666667e-06
      TotalMilliseconds: 13.407
      TotalMinutes: 0.00022345
      TotalSeconds: 0.013407
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.11210650740326
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 7458.79018423212
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 150171
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.73809027777778e-07
      TotalHours: 4.17141666666667e-06
      TotalMilliseconds: 15.0171
      TotalMinutes: 0.000250285
      TotalSeconds: 0.0150171
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.24566380490233
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 6659.07532080095
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 157670
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.82488425925926e-07
      TotalHours: 4.37972222222222e-06
      TotalMilliseconds: 15.767
      TotalMinutes: 0.000262783333333333
      TotalSeconds: 0.015767
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | isOdd        
              
    RelativeSpeed: 1.30786777819253
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 6342.36062662523
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 301158
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.485625e-07
      TotalHours: 8.3655e-06
      TotalMilliseconds: 30.1158
      TotalMinutes: 0.00050193
      TotalSeconds: 0.0301158
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
    RelativeSpeed: 2.49809630459127
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 3320.51614102896
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 398805
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.61579861111111e-07
      TotalHours: 1.10779166666667e-05
      TotalMilliseconds: 39.8805
      TotalMinutes: 0.000664675
      TotalSeconds: 0.0398805
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
    RelativeSpeed: 3.30807515242006
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 2507.49112975013
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2295
---
What Is The Fastest Way To Filter
---------------------------------
> @2295 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotScriptBlockVariable|00:00:00.012055|1x           |8294.97/s |
|InlineScriptBlock     |00:00:00.013407|1.11x        |7458.79/s |
|DotInline             |00:00:00.015017|1.25x        |6659.08/s |
|Filter                |00:00:00.015767|1.31x        |6342.36/s |
|ScriptBlockVariable   |00:00:00.030115|2.5x         |3320.52/s |
|WhereObject           |00:00:00.039880|3.31x        |2507.49/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.347996|1x           |28.74/s   |
|Pipe to ScriptBlock               |00:00:00.955652|2.75x        |10.46/s   |
|.Where Method                     |00:00:04.193214|12.05x       |2.38/s    |
|Where-Object Property (Positional)|00:00:10.588107|30.43x       |0.94/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ForEach Loop                    |00:00:00.014469|1x           |691.1/s   |
|Operator Filter (Explicit Array)|00:00:00.060178|4.16x        |166.17/s  |
|Operator Filter (Assumed Array) |00:00:00.071493|4.94x        |139.87/s  |
|Pipe to ScriptBlock             |00:00:00.120476|8.33x        |83/s      |
|.Where Method                   |00:00:00.599656|41.44x       |16.68/s   |
|Linq.Enumerable::Where          |00:00:00.961241|66.43x       |10.4/s    |
|Where-Object Script (Positional)|00:00:02.005849|138.62x      |4.99/s    |
