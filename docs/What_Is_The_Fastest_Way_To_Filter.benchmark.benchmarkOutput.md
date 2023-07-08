---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 115610
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.3380787037037e-07
      TotalHours: 3.21138888888889e-06
      TotalMilliseconds: 11.561
      TotalMinutes: 0.000192683333333333
      TotalSeconds: 0.011561
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        RepeatCount: 10
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 864.97707810743
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 170219
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 1.97012731481481e-07
      TotalHours: 4.72830555555556e-06
      TotalMilliseconds: 17.0219
      TotalMinutes: 0.000283698333333333
      TotalSeconds: 0.0170219
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        RepeatCount: 10
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.47235533258369
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 587.478483600538
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 602797
      Days: 0
      Hours: 0
      Milliseconds: 60
      Minutes: 0
      Seconds: 0
      TotalDays: 6.97681712962963e-07
      TotalHours: 1.67443611111111e-05
      TotalMilliseconds: 60.2797
      TotalMinutes: 0.00100466166666667
      TotalSeconds: 0.0602797
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        RepeatCount: 10
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 5.21405587751925
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 165.893327272697
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1066996
      Days: 0
      Hours: 0
      Milliseconds: 106
      Minutes: 0
      Seconds: 0
      TotalDays: 1.23494907407407e-06
      TotalHours: 2.96387777777778e-05
      TotalMilliseconds: 106.6996
      TotalMinutes: 0.00177832666666667
      TotalSeconds: 0.1066996
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        RepeatCount: 10
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 9.22927082432316
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 93.7210636216068
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 6082869
      Days: 0
      Hours: 0
      Milliseconds: 608
      Minutes: 0
      Seconds: 0
      TotalDays: 7.04035763888889e-06
      TotalHours: 0.000168968583333333
      TotalMilliseconds: 608.2869
      TotalMinutes: 0.010138115
      TotalSeconds: 0.6082869
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        RepeatCount: 10
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 52.6154225413026
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 16.4396109796216
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7651605
      Days: 0
      Hours: 0
      Milliseconds: 765
      Minutes: 0
      Seconds: 0
      TotalDays: 8.85602430555556e-06
      TotalHours: 0.000212544583333333
      TotalMilliseconds: 765.1605
      TotalMinutes: 0.012752675
      TotalSeconds: 0.7651605
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        RepeatCount: 10
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 66.184629357322
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 13.069153465188
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 17447486
      Days: 0
      Hours: 0
      Milliseconds: 744
      Minutes: 0
      Seconds: 1
      TotalDays: 2.0193849537037e-05
      TotalHours: 0.000484652388888889
      TotalMilliseconds: 1744.7486
      TotalMinutes: 0.0290791433333333
      TotalSeconds: 1.7447486
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        RepeatCount: 10
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 150.916754606003
    GroupName: Filtering Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 5.73148475373472
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 3462990
      Days: 0
      Hours: 0
      Milliseconds: 346
      Minutes: 0
      Seconds: 0
      TotalDays: 4.00809027777778e-06
      TotalHours: 9.61941666666667e-05
      TotalMilliseconds: 346.299
      TotalMinutes: 0.00577165
      TotalSeconds: 0.346299
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        RepeatCount: 10
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 28.8767798925206
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 9764899
      Days: 0
      Hours: 0
      Milliseconds: 976
      Minutes: 0
      Seconds: 0
      TotalDays: 1.13019664351852e-05
      TotalHours: 0.000271247194444444
      TotalMilliseconds: 976.4899
      TotalMinutes: 0.0162748316666667
      TotalSeconds: 0.9764899
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        RepeatCount: 10
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 2.81978839095695
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 10.2407613227746
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 51102081
      Days: 0
      Hours: 0
      Milliseconds: 110
      Minutes: 0
      Seconds: 5
      TotalDays: 5.91459270833333e-05
      TotalHours: 0.00141950225
      TotalMilliseconds: 5110.2081
      TotalMinutes: 0.085170135
      TotalSeconds: 5.1102081
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        RepeatCount: 10
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 14.7566354508676
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.95686747081787
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 110455094
      Days: 0
      Hours: 0
      Milliseconds: 45
      Minutes: 0
      Seconds: 11
      TotalDays: 0.000127841543981481
      TotalHours: 0.00306819705555556
      TotalMilliseconds: 11045.5094
      TotalMinutes: 0.184091823333333
      TotalSeconds: 11.0455094
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        RepeatCount: 10
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 31.8958743744568
    GroupName: Filtering by Property Values
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 0.90534529806294
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 125747
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45540509259259e-07
      TotalHours: 3.49297222222222e-06
      TotalMilliseconds: 12.5747
      TotalMinutes: 0.000209578333333333
      TotalSeconds: 0.0125747
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 7952.47600340366
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 128520
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4875e-07
      TotalHours: 3.57e-06
      TotalMilliseconds: 12.852
      TotalMinutes: 0.0002142
      TotalSeconds: 0.012852
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.02205221595744
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 7780.89013383131
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 130215
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.50711805555556e-07
      TotalHours: 3.61708333333333e-06
      TotalMilliseconds: 13.0215
      TotalMinutes: 0.000217025
      TotalSeconds: 0.0130215
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.03553166278321
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 7679.60680413163
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 132947
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.53873842592593e-07
      TotalHours: 3.69297222222222e-06
      TotalMilliseconds: 13.2947
      TotalMinutes: 0.000221578333333333
      TotalSeconds: 0.0132947
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.05725782722451
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 7521.79439927189
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 147490
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.70706018518519e-07
      TotalHours: 4.09694444444444e-06
      TotalMilliseconds: 14.749
      TotalMinutes: 0.000245816666666667
      TotalSeconds: 0.014749
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.17291068574201
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 6780.12068614821
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 752868
      Days: 0
      Hours: 0
      Milliseconds: 75
      Minutes: 0
      Seconds: 0
      TotalDays: 8.71375e-07
      TotalHours: 2.0913e-05
      TotalMilliseconds: 75.2868
      TotalMinutes: 0.00125478
      TotalSeconds: 0.0752868
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 5.98716470373051
    GroupName: Filtering a Pipeline
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Filter
    Throughput: 1328.25408969434
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
|InlineScriptBlock     |00:00:00.012574|1x           |7952.48/s |
|DotInline             |00:00:00.012852|1.02x        |7780.89/s |
|ScriptBlockVariable   |00:00:00.013021|1.04x        |7679.61/s |
|DotScriptBlockVariable|00:00:00.013294|1.06x        |7521.79/s |
|Filter                |00:00:00.014749|1.17x        |6780.12/s |
|WhereObject           |00:00:00.075286|5.99x        |1328.25/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.346299|1x           |28.88/s   |
|Pipe to ScriptBlock               |00:00:00.976489|2.82x        |10.24/s   |
|.Where Method                     |00:00:05.110208|14.76x       |1.96/s    |
|Where-Object Property (Positional)|00:00:11.045509|31.9x        |0.91/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.011561|1x           |864.98/s  |
|ForEach Loop                    |00:00:00.017021|1.47x        |587.48/s  |
|Operator Filter (Explicit Array)|00:00:00.060279|5.21x        |165.89/s  |
|Pipe to ScriptBlock             |00:00:00.106699|9.23x        |93.72/s   |
|.Where Method                   |00:00:00.608286|52.62x       |16.44/s   |
|Linq.Enumerable::Where          |00:00:00.765160|66.18x       |13.07/s   |
|Where-Object Script (Positional)|00:00:01.744748|150.92x      |5.73/s    |
