---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 100329
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.16121527777778e-07
      TotalHours: 2.78691666666667e-06
      TotalMilliseconds: 10.0329
      TotalMinutes: 0.000167215
      TotalSeconds: 0.0100329
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        GroupName: Filtering Values
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 996.720788605488
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 110324
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.27689814814815e-07
      TotalHours: 3.06455555555556e-06
      TotalMilliseconds: 11.0324
      TotalMinutes: 0.000183873333333333
      TotalSeconds: 0.0110324
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        GroupName: Filtering Values
    RelativeSpeed: 1.09962224282112
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 906.421086980168
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 134109
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5521875e-07
      TotalHours: 3.72525e-06
      TotalMilliseconds: 13.4109
      TotalMinutes: 0.000223515
      TotalSeconds: 0.0134109
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        GroupName: Filtering Values
    RelativeSpeed: 1.33669228239093
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 745.66211067117
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1002758
      Days: 0
      Hours: 0
      Milliseconds: 100
      Minutes: 0
      Seconds: 0
      TotalDays: 1.16059953703704e-06
      TotalHours: 2.78543888888889e-05
      TotalMilliseconds: 100.2758
      TotalMinutes: 0.00167126333333333
      TotalSeconds: 0.1002758
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        GroupName: Filtering Values
    RelativeSpeed: 9.99469744540462
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 99.7249585642797
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: .Where Method
    Time: 
      Ticks: 5118090
      Days: 0
      Hours: 0
      Milliseconds: 511
      Minutes: 0
      Seconds: 0
      TotalDays: 5.92371527777778e-06
      TotalHours: 0.000142169166666667
      TotalMilliseconds: 511.809
      TotalMinutes: 0.00853015
      TotalSeconds: 0.511809
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        GroupName: Filtering Values
    RelativeSpeed: 51.0130670095386
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 19.538538790838
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 7123241
      Days: 0
      Hours: 0
      Milliseconds: 712
      Minutes: 0
      Seconds: 0
      TotalDays: 8.24449189814815e-06
      TotalHours: 0.000197867805555556
      TotalMilliseconds: 712.3241
      TotalMinutes: 0.0118720683333333
      TotalSeconds: 0.7123241
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        GroupName: Filtering Values
    RelativeSpeed: 70.9988238694694
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 14.0385535179843
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 14883017
      Days: 0
      Hours: 0
      Milliseconds: 488
      Minutes: 0
      Seconds: 1
      TotalDays: 1.72257141203704e-05
      TotalHours: 0.000413417138888889
      TotalMilliseconds: 1488.3017
      TotalMinutes: 0.0248050283333333
      TotalSeconds: 1.4883017
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        GroupName: Filtering Values
    RelativeSpeed: 148.342124410689
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 6.71906778041038
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
  - Technique: ForEach Loop
    Time: 
      Ticks: 3256202
      Days: 0
      Hours: 0
      Milliseconds: 325
      Minutes: 0
      Seconds: 0
      TotalDays: 3.76875231481481e-06
      TotalHours: 9.04500555555556e-05
      TotalMilliseconds: 325.6202
      TotalMinutes: 0.00542700333333333
      TotalSeconds: 0.3256202
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        GroupName: Filtering by Property Values
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 30.7106254464557
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 8447676
      Days: 0
      Hours: 0
      Milliseconds: 844
      Minutes: 0
      Seconds: 0
      TotalDays: 9.77740277777778e-06
      TotalHours: 0.000234657666666667
      TotalMilliseconds: 844.7676
      TotalMinutes: 0.01407946
      TotalSeconds: 0.8447676
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        GroupName: Filtering by Property Values
    RelativeSpeed: 2.59433413529013
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 11.8375752100341
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: .Where Method
    Time: 
      Ticks: 38435452
      Days: 0
      Hours: 0
      Milliseconds: 843
      Minutes: 0
      Seconds: 3
      TotalDays: 4.44854768518519e-05
      TotalHours: 0.00106765144444444
      TotalMilliseconds: 3843.5452
      TotalMinutes: 0.0640590866666667
      TotalSeconds: 3.8435452
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        GroupName: Filtering by Property Values
    RelativeSpeed: 11.8037677023723
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 2.60176464166468
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 86345071
      Days: 0
      Hours: 0
      Milliseconds: 634
      Minutes: 0
      Seconds: 8
      TotalDays: 9.99364247685185e-05
      TotalHours: 0.00239847419444444
      TotalMilliseconds: 8634.5071
      TotalMinutes: 0.143908451666667
      TotalSeconds: 8.6345071
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Filter
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        GroupName: Filtering by Property Values
    RelativeSpeed: 26.5171113462863
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 10
    Throughput: 1.15814369994554
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 87191
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.00915509259259e-07
      TotalHours: 2.42197222222222e-06
      TotalMilliseconds: 8.7191
      TotalMinutes: 0.000145318333333333
      TotalSeconds: 0.0087191
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11469.0736429219
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 88635
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02586805555556e-07
      TotalHours: 2.46208333333333e-06
      TotalMilliseconds: 8.8635
      TotalMinutes: 0.000147725
      TotalSeconds: 0.0088635
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.01656134234038
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11282.2248547414
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 89145
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03177083333333e-07
      TotalHours: 2.47625e-06
      TotalMilliseconds: 8.9145
      TotalMinutes: 0.000148575
      TotalSeconds: 0.0089145
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.02241056989827
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 11217.679062202
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: DotInline
    Time: 
      Ticks: 94456
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09324074074074e-07
      TotalHours: 2.62377777777778e-06
      TotalMilliseconds: 9.4456
      TotalMinutes: 0.000157426666666667
      TotalSeconds: 0.0094456
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 1.08332282001583
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 10586.9399508766
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: Filter
    Time: 
      Ticks: 201728
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.33481481481481e-07
      TotalHours: 5.60355555555556e-06
      TotalMilliseconds: 20.1728
      TotalMinutes: 0.000336213333333333
      TotalSeconds: 0.0201728
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 2.31363328783934
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 4957.17005076142
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
  - Technique: WhereObject
    Time: 
      Ticks: 277017
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.20621527777778e-07
      TotalHours: 7.69491666666667e-06
      TotalMilliseconds: 27.7017
      TotalMinutes: 0.000461695
      TotalSeconds: 0.0277017
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        FileName: What Is The Fastest Way To Filter
        GroupName: Filtering a Pipeline
    RelativeSpeed: 3.17712837334129
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    RepeatCount: 100
    Throughput: 3609.88675785241
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2594
---


### Filtering a Pipeline


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|InlineScriptBlock     |100        |00:00:00.008719|1x           |11469.07/s|
|ScriptBlockVariable   |100        |00:00:00.008863|1.02x        |11282.22/s|
|DotScriptBlockVariable|100        |00:00:00.008914|1.02x        |11217.68/s|
|DotInline             |100        |00:00:00.009445|1.08x        |10586.94/s|
|Filter                |100        |00:00:00.020172|2.31x        |4957.17/s |
|WhereObject           |100        |00:00:00.027701|3.18x        |3609.89/s |


### Filtering by Property Values


|Technique                         |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------------------|-----------|---------------|-------------|----------|
|ForEach Loop                      |10         |00:00:00.325620|1x           |30.71/s   |
|Pipe to ScriptBlock               |10         |00:00:00.844767|2.59x        |11.84/s   |
|.Where Method                     |10         |00:00:03.843545|11.8x        |2.6/s     |
|Where-Object Property (Positional)|10         |00:00:08.634507|26.52x       |1.16/s    |


### Filtering Values


|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |10         |00:00:00.010032|1x           |996.72/s  |
|ForEach Loop                    |10         |00:00:00.011032|1.1x         |906.42/s  |
|Operator Filter (Explicit Array)|10         |00:00:00.013410|1.34x        |745.66/s  |
|Pipe to ScriptBlock             |10         |00:00:00.100275|9.99x        |99.72/s   |
|.Where Method                   |10         |00:00:00.511809|51.01x       |19.54/s   |
|Linq.Enumerable::Where          |10         |00:00:00.712324|71x          |14.04/s   |
|Where-Object Script (Positional)|10         |00:00:01.488301|148.34x      |6.72/s    |
