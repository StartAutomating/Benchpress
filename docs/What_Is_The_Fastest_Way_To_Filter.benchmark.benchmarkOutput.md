---
layout: Benchmark

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 90258
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04465277777778e-07
      TotalHours: 2.50716666666667e-06
      TotalMilliseconds: 9.0258
      TotalMinutes: 0.00015043
      TotalSeconds: 0.0090258
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 1107.9350306898
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 122765
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4208912037037e-07
      TotalHours: 3.41013888888889e-06
      TotalMilliseconds: 12.2765
      TotalMinutes: 0.000204608333333333
      TotalSeconds: 0.0122765
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 1.36015644042633
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 814.564411680854
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 123668
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.43134259259259e-07
      TotalHours: 3.43522222222222e-06
      TotalMilliseconds: 12.3668
      TotalMinutes: 0.000206113333333333
      TotalSeconds: 0.0123668
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 1.37016109375346
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 808.616618688747
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1149465
      Days: 0
      Hours: 0
      Milliseconds: 114
      Minutes: 0
      Seconds: 0
      TotalDays: 1.33039930555556e-06
      TotalHours: 3.19295833333333e-05
      TotalMilliseconds: 114.9465
      TotalMinutes: 0.001915775
      TotalSeconds: 0.1149465
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 12.7353254005185
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 86.9969942538485
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 5230918
      Days: 0
      Hours: 0
      Milliseconds: 523
      Minutes: 0
      Seconds: 0
      TotalDays: 6.05430324074074e-06
      TotalHours: 0.000145303277777778
      TotalMilliseconds: 523.0918
      TotalMinutes: 0.00871819666666667
      TotalSeconds: 0.5230918
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 57.9551729486583
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 19.1171033459137
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 8048148
      Days: 0
      Hours: 0
      Milliseconds: 804
      Minutes: 0
      Seconds: 0
      TotalDays: 9.31498611111111e-06
      TotalHours: 0.000223559666666667
      TotalMilliseconds: 804.8148
      TotalMinutes: 0.01341358
      TotalSeconds: 0.8048148
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 89.1682510137606
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 12.4252188205286
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 16250992
      Days: 0
      Hours: 0
      Milliseconds: 625
      Minutes: 0
      Seconds: 1
      TotalDays: 1.88090185185185e-05
      TotalHours: 0.000451416444444444
      TotalMilliseconds: 1625.0992
      TotalMinutes: 0.0270849866666667
      TotalSeconds: 1.6250992
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 180.050433202597
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 6.15347050813883
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 3339448
      Days: 0
      Hours: 0
      Milliseconds: 333
      Minutes: 0
      Seconds: 0
      TotalDays: 3.86510185185185e-06
      TotalHours: 9.27624444444444e-05
      TotalMilliseconds: 333.9448
      TotalMinutes: 0.00556574666666667
      TotalSeconds: 0.3339448
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 29.9450687658559
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 8904946
      Days: 0
      Hours: 0
      Milliseconds: 890
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0306650462963e-05
      TotalHours: 0.000247359611111111
      TotalMilliseconds: 890.4946
      TotalMinutes: 0.0148415766666667
      TotalSeconds: 0.8904946
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 2.66659220326234
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 11.2297143632314
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 45294218
      Days: 0
      Hours: 0
      Milliseconds: 529
      Minutes: 0
      Seconds: 4
      TotalDays: 5.24238634259259e-05
      TotalHours: 0.00125817272222222
      TotalMilliseconds: 4529.4218
      TotalMinutes: 0.0754903633333333
      TotalSeconds: 4.5294218
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 13.5633847270567
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.20778731625304
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 98575267
      Days: 0
      Hours: 0
      Milliseconds: 857
      Minutes: 0
      Seconds: 9
      TotalDays: 0.000114091744212963
      TotalHours: 0.00273820186111111
      TotalMilliseconds: 9857.5267
      TotalMinutes: 0.164292111666667
      TotalSeconds: 9.8575267
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 29.5184314892761
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.01445325022554
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 90590
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04849537037037e-07
      TotalHours: 2.51638888888889e-06
      TotalMilliseconds: 9.059
      TotalMinutes: 0.000150983333333333
      TotalSeconds: 0.009059
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 11038.7459984546
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 93631
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08369212962963e-07
      TotalHours: 2.60086111111111e-06
      TotalMilliseconds: 9.3631
      TotalMinutes: 0.000156051666666667
      TotalSeconds: 0.0093631
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.0335688265813
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 10680.2234302742
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 99036
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14625e-07
      TotalHours: 2.751e-06
      TotalMilliseconds: 9.9036
      TotalMinutes: 0.00016506
      TotalSeconds: 0.0099036
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.09323324870295
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 10097.3383416132
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 275233
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.18556712962963e-07
      TotalHours: 7.64536111111111e-06
      TotalMilliseconds: 27.5233
      TotalMinutes: 0.000458721666666667
      TotalSeconds: 0.0275233
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.03822717739265
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 3633.28525285849
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 341864
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 3.95675925925926e-07
      TotalHours: 9.49622222222222e-06
      TotalMilliseconds: 34.1864
      TotalMinutes: 0.000569773333333333
      TotalSeconds: 0.0341864
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.77374986201568
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 2925.13982168348
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 351998
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.07405092592593e-07
      TotalHours: 9.77772222222222e-06
      TotalMilliseconds: 35.1998
      TotalMinutes: 0.000586663333333333
      TotalSeconds: 0.0351998
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.88561651396401
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 2840.92523252973
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2594
---
What Is The Fastest Way To Filter
---------------------------------
> @2594 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|InlineScriptBlock     |00:00:00.009059|1x           |11038.75/s|
|DotScriptBlockVariable|00:00:00.009363|1.03x        |10680.22/s|
|ScriptBlockVariable   |00:00:00.009903|1.09x        |10097.34/s|
|WhereObject           |00:00:00.027523|3.04x        |3633.29/s |
|DotInline             |00:00:00.034186|3.77x        |2925.14/s |
|Filter                |00:00:00.035199|3.89x        |2840.93/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.333944|1x           |29.95/s   |
|Pipe to ScriptBlock               |00:00:00.890494|2.67x        |11.23/s   |
|.Where Method                     |00:00:04.529421|13.56x       |2.21/s    |
|Where-Object Property (Positional)|00:00:09.857526|29.52x       |1.01/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.009025|1x           |1107.94/s |
|ForEach Loop                    |00:00:00.012276|1.36x        |814.56/s  |
|Operator Filter (Explicit Array)|00:00:00.012366|1.37x        |808.62/s  |
|Pipe to ScriptBlock             |00:00:00.114946|12.74x       |87/s      |
|.Where Method                   |00:00:00.523091|57.96x       |19.12/s   |
|Linq.Enumerable::Where          |00:00:00.804814|89.17x       |12.43/s   |
|Where-Object Script (Positional)|00:00:01.625099|180.05x      |6.15/s    |
