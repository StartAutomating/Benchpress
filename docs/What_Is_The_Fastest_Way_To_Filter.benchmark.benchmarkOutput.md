---
layout: Benchmark

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 85629
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.91076388888889e-08
      TotalHours: 2.37858333333333e-06
      TotalMilliseconds: 8.5629
      TotalMinutes: 0.000142715
      TotalSeconds: 0.0085629
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
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 1167.82865617957
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 137420
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.59050925925926e-07
      TotalHours: 3.81722222222222e-06
      TotalMilliseconds: 13.742
      TotalMinutes: 0.000229033333333333
      TotalSeconds: 0.013742
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        RepeatCount: 10
    RelativeSpeed: 1.60483013932196
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 727.696114102751
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 309820
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.58587962962963e-07
      TotalHours: 8.60611111111111e-06
      TotalMilliseconds: 30.982
      TotalMinutes: 0.000516366666666667
      TotalSeconds: 0.030982
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        RepeatCount: 10
    RelativeSpeed: 3.61816674257553
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 322.768058872894
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 882018
      Days: 0
      Hours: 0
      Milliseconds: 88
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02085416666667e-06
      TotalHours: 2.45005e-05
      TotalMilliseconds: 88.2018
      TotalMinutes: 0.00147003
      TotalSeconds: 0.0882018
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        RepeatCount: 10
    RelativeSpeed: 10.3004589566619
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 113.376371003766
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 5093807
      Days: 0
      Hours: 0
      Milliseconds: 509
      Minutes: 0
      Seconds: 0
      TotalDays: 5.8956099537037e-06
      TotalHours: 0.000141494638888889
      TotalMilliseconds: 509.3807
      TotalMinutes: 0.00848967833333333
      TotalSeconds: 0.5093807
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        RepeatCount: 10
    RelativeSpeed: 59.4869378364806
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 19.6316821583543
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 6976114
      Days: 0
      Hours: 0
      Milliseconds: 697
      Minutes: 0
      Seconds: 0
      TotalDays: 8.07420601851852e-06
      TotalHours: 0.000193780944444444
      TotalMilliseconds: 697.6114
      TotalMinutes: 0.0116268566666667
      TotalSeconds: 0.6976114
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        RepeatCount: 10
    RelativeSpeed: 81.4690583797545
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 14.3346281325104
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 14550510
      Days: 0
      Hours: 0
      Milliseconds: 455
      Minutes: 0
      Seconds: 1
      TotalDays: 1.68408680555556e-05
      TotalHours: 0.000404180833333333
      TotalMilliseconds: 1455.051
      TotalMinutes: 0.02425085
      TotalSeconds: 1.455051
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        RepeatCount: 10
    RelativeSpeed: 169.925025400273
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 6.87261133802183
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 2676093
      Days: 0
      Hours: 0
      Milliseconds: 267
      Minutes: 0
      Seconds: 0
      TotalDays: 3.09732986111111e-06
      TotalHours: 7.43359166666667e-05
      TotalMilliseconds: 267.6093
      TotalMinutes: 0.004460155
      TotalSeconds: 0.2676093
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
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 37.3679091122767
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 7660396
      Days: 0
      Hours: 0
      Milliseconds: 766
      Minutes: 0
      Seconds: 0
      TotalDays: 8.86619907407407e-06
      TotalHours: 0.000212788777777778
      TotalMilliseconds: 766.0396
      TotalMinutes: 0.0127673266666667
      TotalSeconds: 0.7660396
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        RepeatCount: 10
    RelativeSpeed: 2.86252981492048
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 13.0541554248632
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 46038981
      Days: 0
      Hours: 0
      Milliseconds: 603
      Minutes: 0
      Seconds: 4
      TotalDays: 5.32858576388889e-05
      TotalHours: 0.00127886058333333
      TotalMilliseconds: 4603.8981
      TotalMinutes: 0.076731635
      TotalSeconds: 4.6038981
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        RepeatCount: 10
    RelativeSpeed: 17.2038045762984
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.17207240099428
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 97578851
      Days: 0
      Hours: 0
      Milliseconds: 757
      Minutes: 0
      Seconds: 9
      TotalDays: 0.000112938484953704
      TotalHours: 0.00271052363888889
      TotalMilliseconds: 9757.8851
      TotalMinutes: 0.162631418333333
      TotalSeconds: 9.7578851
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        RepeatCount: 10
    RelativeSpeed: 36.4631763544839
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.02481223108479
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 85921
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.94456018518518e-08
      TotalHours: 2.38669444444444e-06
      TotalMilliseconds: 8.5921
      TotalMinutes: 0.000143201666666667
      TotalSeconds: 0.0085921
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
    Throughput: 11638.5982472271
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 86105
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.96585648148148e-08
      TotalHours: 2.39180555555556e-06
      TotalMilliseconds: 8.6105
      TotalMinutes: 0.000143508333333333
      TotalSeconds: 0.0086105
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.00214150207749
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 11613.7274258173
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 93566
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08293981481481e-07
      TotalHours: 2.59905555555556e-06
      TotalMilliseconds: 9.3566
      TotalMinutes: 0.000155943333333333
      TotalSeconds: 0.0093566
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.08897708360005
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 10687.6429472244
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 95703
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10767361111111e-07
      TotalHours: 2.65841666666667e-06
      TotalMilliseconds: 9.5703
      TotalMinutes: 0.000159505
      TotalSeconds: 0.0095703
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.11384876805438
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 10448.9932395014
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 345613
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 4.00015046296296e-07
      TotalHours: 9.60036111111111e-06
      TotalMilliseconds: 34.5613
      TotalMinutes: 0.000576021666666667
      TotalSeconds: 0.0345613
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 4.0224508560189
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 2893.40968077011
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 528933
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.12190972222222e-07
      TotalHours: 1.46925833333333e-05
      TotalMilliseconds: 52.8933
      TotalMinutes: 0.000881555
      TotalSeconds: 0.0528933
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 6.15603868670057
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 1890.59862024113
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
|InlineScriptBlock     |00:00:00.008592|1x           |11638.6/s |
|DotInline             |00:00:00.008610|1x           |11613.73/s|
|DotScriptBlockVariable|00:00:00.009356|1.09x        |10687.64/s|
|Filter                |00:00:00.009570|1.11x        |10448.99/s|
|ScriptBlockVariable   |00:00:00.034561|4.02x        |2893.41/s |
|WhereObject           |00:00:00.052893|6.16x        |1890.6/s  |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.267609|1x           |37.37/s   |
|Pipe to ScriptBlock               |00:00:00.766039|2.86x        |13.05/s   |
|.Where Method                     |00:00:04.603898|17.2x        |2.17/s    |
|Where-Object Property (Positional)|00:00:09.757885|36.46x       |1.02/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.008562|1x           |1167.83/s |
|Operator Filter (Explicit Array)|00:00:00.013742|1.6x         |727.7/s   |
|ForEach Loop                    |00:00:00.030982|3.62x        |322.77/s  |
|Pipe to ScriptBlock             |00:00:00.088201|10.3x        |113.38/s  |
|.Where Method                   |00:00:00.509380|59.49x       |19.63/s   |
|Linq.Enumerable::Where          |00:00:00.697611|81.47x       |14.33/s   |
|Where-Object Script (Positional)|00:00:01.455051|169.93x      |6.87/s    |
