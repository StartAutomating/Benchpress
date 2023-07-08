---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 80371
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.30219907407407e-08
      TotalHours: 2.23252777777778e-06
      TotalMilliseconds: 8.0371
      TotalMinutes: 0.000133951666666667
      TotalSeconds: 0.0080371
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
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1244.22988391335
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 133632
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.54666666666667e-07
      TotalHours: 3.712e-06
      TotalMilliseconds: 13.3632
      TotalMinutes: 0.00022272
      TotalSeconds: 0.0133632
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 1.66268927847109
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 748.323754789272
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 146114
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.69113425925926e-07
      TotalHours: 4.05872222222222e-06
      TotalMilliseconds: 14.6114
      TotalMinutes: 0.000243523333333333
      TotalSeconds: 0.0146114
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 1.81799405258115
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 684.397114581765
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 966992
      Days: 0
      Hours: 0
      Milliseconds: 96
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1192037037037e-06
      TotalHours: 2.68608888888889e-05
      TotalMilliseconds: 96.6992
      TotalMinutes: 0.00161165333333333
      TotalSeconds: 0.0966992
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 12.0316034390514
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 103.413471879809
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 5202163
      Days: 0
      Hours: 0
      Milliseconds: 520
      Minutes: 0
      Seconds: 0
      TotalDays: 6.02102199074074e-06
      TotalHours: 0.000144504527777778
      TotalMilliseconds: 520.2163
      TotalMinutes: 0.00867027166666667
      TotalSeconds: 0.5202163
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 64.7268666558833
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 19.2227732964154
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 6888420
      Days: 0
      Hours: 0
      Milliseconds: 688
      Minutes: 0
      Seconds: 0
      TotalDays: 7.97270833333333e-06
      TotalHours: 0.000191345
      TotalMilliseconds: 688.842
      TotalMinutes: 0.0114807
      TotalSeconds: 0.688842
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 85.7077801694641
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 14.5171171328113
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 14638438
      Days: 0
      Hours: 0
      Milliseconds: 463
      Minutes: 0
      Seconds: 1
      TotalDays: 1.69426365740741e-05
      TotalHours: 0.000406623277777778
      TotalMilliseconds: 1463.8438
      TotalMinutes: 0.0243973966666667
      TotalSeconds: 1.4638438
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        GroupName: Filtering Values
        RepeatCount: 10
    RelativeSpeed: 182.135820134128
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 6.83132995473971
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      RepeatCount: 10
  - Technique: ForEach Loop
    Time: 
      Ticks: 2559007
      Days: 0
      Hours: 0
      Milliseconds: 255
      Minutes: 0
      Seconds: 0
      TotalDays: 2.96181365740741e-06
      TotalHours: 7.10835277777778e-05
      TotalMilliseconds: 255.9007
      TotalMinutes: 0.00426501166666667
      TotalSeconds: 0.2559007
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
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 39.0776578571297
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 7991505
      Days: 0
      Hours: 0
      Milliseconds: 799
      Minutes: 0
      Seconds: 0
      TotalDays: 9.24942708333333e-06
      TotalHours: 0.00022198625
      TotalMilliseconds: 799.1505
      TotalMinutes: 0.013319175
      TotalSeconds: 0.7991505
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 3.12289298153542
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 12.5132875472142
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: .Where Method
    Time: 
      Ticks: 49262793
      Days: 0
      Hours: 0
      Milliseconds: 926
      Minutes: 0
      Seconds: 4
      TotalDays: 5.70171215277778e-05
      TotalHours: 0.00136841091666667
      TotalMilliseconds: 4926.2793
      TotalMinutes: 0.082104655
      TotalSeconds: 4.9262793
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 19.2507456994061
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 2.02992956570692
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 100036397
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 10
      TotalDays: 0.000115782866898148
      TotalHours: 0.00277878880555556
      TotalMilliseconds: 10003.6397
      TotalMinutes: 0.166727328333333
      TotalSeconds: 10.0036397
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        GroupName: Filtering by Property Values
        RepeatCount: 10
    RelativeSpeed: 39.09188095226
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 0.999636162425962
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      RepeatCount: 10
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 98050
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.13483796296296e-07
      TotalHours: 2.72361111111111e-06
      TotalMilliseconds: 9.805
      TotalMinutes: 0.000163416666666667
      TotalSeconds: 0.009805
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
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10198.8781234064
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 98122
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1356712962963e-07
      TotalHours: 2.72561111111111e-06
      TotalMilliseconds: 9.8122
      TotalMinutes: 0.000163536666666667
      TotalSeconds: 0.0098122
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.00073431922489
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10191.39438658
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 101564
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.17550925925926e-07
      TotalHours: 2.82122222222222e-06
      TotalMilliseconds: 10.1564
      TotalMinutes: 0.000169273333333333
      TotalSeconds: 0.0101564
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
    RelativeSpeed: 1.03583885772565
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 9846.00842818322
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 105136
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.21685185185185e-07
      TotalHours: 2.92044444444444e-06
      TotalMilliseconds: 10.5136
      TotalMinutes: 0.000175226666666667
      TotalSeconds: 0.0105136
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | isOdd        
              
    RelativeSpeed: 1.07226925038246
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 9511.48987977477
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 308193
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.56704861111111e-07
      TotalHours: 8.56091666666667e-06
      TotalMilliseconds: 30.8193
      TotalMinutes: 0.000513655
      TotalSeconds: 0.0308193
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
    RelativeSpeed: 3.143222845487
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 3244.72002933227
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 366431
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.24109953703704e-07
      TotalHours: 1.01786388888889e-05
      TotalMilliseconds: 36.6431
      TotalMinutes: 0.000610718333333333
      TotalSeconds: 0.0366431
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
    RelativeSpeed: 3.73718510963794
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 2729.02674719115
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2095
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|ScriptBlockVariable   |100        |00:00:00.009805|1x           |10198.88/s|
|DotInline             |100        |00:00:00.009812|1x           |10191.39/s|
|InlineScriptBlock     |100        |00:00:00.010156|1.04x        |9846.01/s |
|Filter                |100        |00:00:00.010513|1.07x        |9511.49/s |
|WhereObject           |100        |00:00:00.030819|3.14x        |3244.72/s |
|DotScriptBlockVariable|100        |00:00:00.036643|3.74x        |2729.03/s |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.255900|1x           |39.08/s   |
|Pipe to ScriptBlock               |10         |00:00:00.799150|3.12x        |12.51/s   |
|.Where Method                     |10         |00:00:04.926279|19.25x       |2.03/s    |
|Where-Object Property (Positional)|10         |00:00:10.003639|39.09x       |1/s       |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |10         |00:00:00.008037|1x           |1244.23/s |
|Operator Filter (Explicit Array)|10         |00:00:00.013363|1.66x        |748.32/s  |
|ForEach Loop                    |10         |00:00:00.014611|1.82x        |684.4/s   |
|Pipe to ScriptBlock             |10         |00:00:00.096699|12.03x       |103.41/s  |
|.Where Method                   |10         |00:00:00.520216|64.73x       |19.22/s   |
|Linq.Enumerable::Where          |10         |00:00:00.688842|85.71x       |14.52/s   |
|Where-Object Script (Positional)|10         |00:00:01.463843|182.14x      |6.83/s    |
