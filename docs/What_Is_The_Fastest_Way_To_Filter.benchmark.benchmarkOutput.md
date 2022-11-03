---
layout: Benchmark

Data: 
  - Technique: ForEach Loop
    Time: 
      Ticks: 145214
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.68071759259259e-07
      TotalHours: 4.03372222222222e-06
      TotalMilliseconds: 14.5214
      TotalMinutes: 0.000242023333333333
      TotalSeconds: 0.0145214
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 688.638836475822
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 245320
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.83935185185185e-07
      TotalHours: 6.81444444444444e-06
      TotalMilliseconds: 24.532
      TotalMinutes: 0.000408866666666667
      TotalSeconds: 0.024532
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 1.68936879364249
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 407.63084950269
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 575543
      Days: 0
      Hours: 0
      Milliseconds: 57
      Minutes: 0
      Seconds: 0
      TotalDays: 6.66137731481482e-07
      TotalHours: 1.59873055555556e-05
      TotalMilliseconds: 57.5543
      TotalMinutes: 0.000959238333333333
      TotalSeconds: 0.0575543
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 3.96341261861804
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 173.748964021802
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1203339
      Days: 0
      Hours: 0
      Milliseconds: 120
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39275347222222e-06
      TotalHours: 3.34260833333333e-05
      TotalMilliseconds: 120.3339
      TotalMinutes: 0.002005565
      TotalSeconds: 0.1203339
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 8.28665968845979
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 83.102101735255
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 5504953
      Days: 0
      Hours: 0
      Milliseconds: 550
      Minutes: 0
      Seconds: 0
      TotalDays: 6.37147337962963e-06
      TotalHours: 0.000152915361111111
      TotalMilliseconds: 550.4953
      TotalMinutes: 0.00917492166666667
      TotalSeconds: 0.5504953
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 37.9092442877409
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 18.1654593599618
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7788886
      Days: 0
      Hours: 0
      Milliseconds: 778
      Minutes: 0
      Seconds: 0
      TotalDays: 9.01491435185185e-06
      TotalHours: 0.000216357944444444
      TotalMilliseconds: 778.8886
      TotalMinutes: 0.0129814766666667
      TotalSeconds: 0.7788886
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 53.6372939248282
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 12.8388064737371
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 16401306
      Days: 0
      Hours: 0
      Milliseconds: 640
      Minutes: 0
      Seconds: 1
      TotalDays: 1.89829930555556e-05
      TotalHours: 0.000455591833333333
      TotalMilliseconds: 1640.1306
      TotalMinutes: 0.02733551
      TotalSeconds: 1.6401306
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering Values
    RelativeSpeed: 112.945762805239
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 6.0970754402119
    BenchmarkInput: 
      GroupName: Filtering Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 3909391
      Days: 0
      Hours: 0
      Milliseconds: 390
      Minutes: 0
      Seconds: 0
      TotalDays: 4.52475810185185e-06
      TotalHours: 0.000108594194444444
      TotalMilliseconds: 390.9391
      TotalMinutes: 0.00651565166666667
      TotalSeconds: 0.3909391
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering by Property Values
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 25.5794316813028
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 9493511
      Days: 0
      Hours: 0
      Milliseconds: 949
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09878599537037e-05
      TotalHours: 0.000263708638888889
      TotalMilliseconds: 949.3511
      TotalMinutes: 0.0158225183333333
      TotalSeconds: 0.9493511
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering by Property Values
    RelativeSpeed: 2.42838616040197
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 10.5335107316987
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 43071658
      Days: 0
      Hours: 0
      Milliseconds: 307
      Minutes: 0
      Seconds: 4
      TotalDays: 4.98514560185185e-05
      TotalHours: 0.00119643494444444
      TotalMilliseconds: 4307.1658
      TotalMinutes: 0.0717860966666667
      TotalSeconds: 4.3071658
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering by Property Values
    RelativeSpeed: 11.0174853321144
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.32171234271966
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 100537372
      Days: 0
      Hours: 0
      Milliseconds: 53
      Minutes: 0
      Seconds: 10
      TotalDays: 0.000116362699074074
      TotalHours: 0.00279270477777778
      TotalMilliseconds: 10053.7372
      TotalMinutes: 0.167562286666667
      TotalSeconds: 10.0537372
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        FileName: What Is The Fastest Way To Filter
        RepeatCount: 10
        GroupName: Filtering by Property Values
    RelativeSpeed: 25.7168883849172
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 0.994655002519859
    BenchmarkInput: 
      GroupName: Filtering by Property Values
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 131417
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.52103009259259e-07
      TotalHours: 3.65047222222222e-06
      TotalMilliseconds: 13.1417
      TotalMinutes: 0.000219028333333333
      TotalSeconds: 0.0131417
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 7609.36560718933
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 137018
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.58585648148148e-07
      TotalHours: 3.80605555555556e-06
      TotalMilliseconds: 13.7018
      TotalMinutes: 0.000228363333333333
      TotalSeconds: 0.0137018
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.04262005676587
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 7298.31117079508
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 143632
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.66240740740741e-07
      TotalHours: 3.98977777777778e-06
      TotalMilliseconds: 14.3632
      TotalMinutes: 0.000239386666666667
      TotalSeconds: 0.0143632
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.09294840089182
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 6962.23682744792
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 176285
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.04033564814815e-07
      TotalHours: 4.89680555555556e-06
      TotalMilliseconds: 17.6285
      TotalMinutes: 0.000293808333333333
      TotalSeconds: 0.0176285
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.34141701606337
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 5672.63238505829
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 250650
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.90104166666667e-07
      TotalHours: 6.9625e-06
      TotalMilliseconds: 25.065
      TotalMinutes: 0.00041775
      TotalSeconds: 0.025065
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.90728748944201
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 3989.62696987832
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 415376
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.80759259259259e-07
      TotalHours: 1.15382222222222e-05
      TotalMilliseconds: 41.5376
      TotalMinutes: 0.000692293333333333
      TotalSeconds: 0.0415376
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.16074784845187
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 2407.45733985594
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
|DotScriptBlockVariable|00:00:00.013141|1x           |7609.37/s |
|ScriptBlockVariable   |00:00:00.013701|1.04x        |7298.31/s |
|DotInline             |00:00:00.014363|1.09x        |6962.24/s |
|Filter                |00:00:00.017628|1.34x        |5672.63/s |
|InlineScriptBlock     |00:00:00.025065|1.91x        |3989.63/s |
|WhereObject           |00:00:00.041537|3.16x        |2407.46/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.390939|1x           |25.58/s   |
|Pipe to ScriptBlock               |00:00:00.949351|2.43x        |10.53/s   |
|.Where Method                     |00:00:04.307165|11.02x       |2.32/s    |
|Where-Object Property (Positional)|00:00:10.053737|25.72x       |0.99/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ForEach Loop                    |00:00:00.014521|1x           |688.64/s  |
|Operator Filter (Explicit Array)|00:00:00.024532|1.69x        |407.63/s  |
|Operator Filter (Assumed Array) |00:00:00.057554|3.96x        |173.75/s  |
|Pipe to ScriptBlock             |00:00:00.120333|8.29x        |83.1/s    |
|.Where Method                   |00:00:00.550495|37.91x       |18.17/s   |
|Linq.Enumerable::Where          |00:00:00.778888|53.64x       |12.84/s   |
|Where-Object Script (Positional)|00:00:01.640130|112.95x      |6.1/s     |
