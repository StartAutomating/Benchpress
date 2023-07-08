---
layout: Benchmark
title: What Is The Fastest Way To Filter

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      Ticks: 87738
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01548611111111e-07
      TotalHours: 2.43716666666667e-06
      TotalMilliseconds: 8.7738
      TotalMinutes: 0.00014623
      TotalSeconds: 0.0087738
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  # VERY DANGEROUS if $valueList isn't already typed as an array, it will
                  # return $true/$false instead of acting as a filter on single objects
                  $valueList -gt 1000
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 1139.75700380679
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Operator Filter (Explicit Array)
    Time: 
      Ticks: 108066
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25076388888889e-07
      TotalHours: 3.00183333333333e-06
      TotalMilliseconds: 10.8066
      TotalMinutes: 0.00018011
      TotalSeconds: 0.0108066
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  # Safe for arrays or single values
                  @($valueList) -gt 1000
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.23168980373384
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 925.360427886662
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 112176
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.29833333333333e-07
      TotalHours: 3.116e-06
      TotalMilliseconds: 11.2176
      TotalMinutes: 0.00018696
      TotalSeconds: 0.0112176
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.2785338165903
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 891.456282983882
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 1024685
      Days: 0
      Hours: 0
      Milliseconds: 102
      Minutes: 0
      Seconds: 0
      TotalDays: 1.18597800925926e-06
      TotalHours: 2.84634722222222e-05
      TotalMilliseconds: 102.4685
      TotalMinutes: 0.00170780833333333
      TotalSeconds: 0.1024685
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $valueList | & { process { if ($_ -gt 1000) { $_ } } }
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 11.6789190544576
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 97.5909669800963
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 4615139
      Days: 0
      Hours: 0
      Milliseconds: 461
      Minutes: 0
      Seconds: 0
      TotalDays: 5.34159606481482e-06
      TotalHours: 0.000128198305555556
      TotalMilliseconds: 461.5139
      TotalMinutes: 0.00769189833333333
      TotalSeconds: 0.4615139
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $valueList.Where({$_ -gt 1000})
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 52.6013699879186
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 21.667819755808
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Linq.Enumerable::Where
    Time: 
      Ticks: 6060403
      Days: 0
      Hours: 0
      Milliseconds: 606
      Minutes: 0
      Seconds: 0
      TotalDays: 7.01435532407407e-06
      TotalHours: 0.000168344527777778
      TotalMilliseconds: 606.0403
      TotalMinutes: 0.0101006716666667
      TotalSeconds: 0.6060403
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  [System.Linq.Enumerable]::Where($valueList, $linqWhere)
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 69.0738676514167
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 16.5005528510233
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Script (Positional)
    Time: 
      Ticks: 13020798
      Days: 0
      Hours: 0
      Milliseconds: 302
      Minutes: 0
      Seconds: 1
      TotalDays: 1.50703680555556e-05
      TotalHours: 0.000361688833333333
      TotalMilliseconds: 1302.0798
      TotalMinutes: 0.02170133
      TotalSeconds: 1.3020798
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $valueList | Where-Object $whereGt1000
              
        GroupName: Filtering Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 148.405457156534
    GroupName: Filtering Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 7.68002084050455
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering Values
      FileName: What Is The Fastest Way To Filter
  - Technique: ForEach Loop
    Time: 
      Ticks: 2351654
      Days: 0
      Hours: 0
      Milliseconds: 235
      Minutes: 0
      Seconds: 0
      TotalDays: 2.72182175925926e-06
      TotalHours: 6.53237222222222e-05
      TotalMilliseconds: 235.1654
      TotalMinutes: 0.00391942333333333
      TotalSeconds: 0.2351654
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 42.5232623506689
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 8192020
      Days: 0
      Hours: 0
      Milliseconds: 819
      Minutes: 0
      Seconds: 0
      TotalDays: 9.48150462962963e-06
      TotalHours: 0.000227556111111111
      TotalMilliseconds: 819.202
      TotalMinutes: 0.0136533666666667
      TotalSeconds: 0.819202
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 3.48351415641927
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 12.2070014477504
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: .Where Method
    Time: 
      Ticks: 40468312
      Days: 0
      Hours: 0
      Milliseconds: 46
      Minutes: 0
      Seconds: 4
      TotalDays: 4.68383240740741e-05
      TotalHours: 0.00112411977777778
      TotalMilliseconds: 4046.8312
      TotalMinutes: 0.0674471866666667
      TotalSeconds: 4.0468312
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $objectList.Where({$_.Value -gt 1000})
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 17.2084464806472
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.47106921583485
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: Where-Object Property (Positional)
    Time: 
      Ticks: 89642420
      Days: 0
      Hours: 0
      Milliseconds: 964
      Minutes: 0
      Seconds: 8
      TotalDays: 0.000103752800925926
      TotalHours: 0.00249006722222222
      TotalMilliseconds: 8964.242
      TotalMinutes: 0.149404033333333
      TotalSeconds: 8.964242
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $objectList | Where-Object Value -GT 1000
              
        GroupName: Filtering by Property Values
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 38.1188814340885
    GroupName: Filtering by Property Values
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.11554328854576
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: Filtering by Property Values
      FileName: What Is The Fastest Way To Filter
  - Technique: DotInline
    Time: 
      Ticks: 85771
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.92719907407407e-08
      TotalHours: 2.38252777777778e-06
      TotalMilliseconds: 8.5771
      TotalMinutes: 0.000142951666666667
      TotalSeconds: 0.0085771
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11658.9523265439
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: InlineScriptBlock
    Time: 
      Ticks: 86082
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.96319444444444e-08
      TotalHours: 2.39116666666667e-06
      TotalMilliseconds: 8.6082
      TotalMinutes: 0.00014347
      TotalSeconds: 0.0086082
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | & { process { if ($_ % 2) { $_ }  } }
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.00362593417356
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11616.8304639762
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: ScriptBlockVariable
    Time: 
      Ticks: 86990
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0068287037037e-07
      TotalHours: 2.41638888888889e-06
      TotalMilliseconds: 8.699
      TotalMinutes: 0.000144983333333333
      TotalSeconds: 0.008699
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
           
                  1..10 | 
                      & $IsOdd 
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.01421226288606
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 11495.5742039315
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: DotScriptBlockVariable
    Time: 
      Ticks: 94148
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08967592592593e-07
      TotalHours: 2.61522222222222e-06
      TotalMilliseconds: 9.4148
      TotalMinutes: 0.000156913333333333
      TotalSeconds: 0.0094148
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | . $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.09766704363946
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 10621.5745422101
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: Filter
    Time: 
      Ticks: 97203
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12503472222222e-07
      TotalHours: 2.70008333333333e-06
      TotalMilliseconds: 9.7203
      TotalMinutes: 0.000162005
      TotalSeconds: 0.0097203
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | isOdd        
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 1.13328514299705
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 10287.7483205251
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
  - Technique: WhereObject
    Time: 
      Ticks: 505547
      Days: 0
      Hours: 0
      Milliseconds: 50
      Minutes: 0
      Seconds: 0
      TotalDays: 5.85123842592593e-07
      TotalHours: 1.40429722222222e-05
      TotalMilliseconds: 50.5547
      TotalMinutes: 0.000842578333333333
      TotalSeconds: 0.0505547
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: 
        ScriptBlock: |
          
                  1..10 | ? $IsOdd
              
        GroupName: Filtering a Pipeline
        FileName: What Is The Fastest Way To Filter
    RelativeSpeed: 5.89414837182731
    GroupName: Filtering a Pipeline
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Filter
    Throughput: 1978.05545280656
    BenchmarkInput: 
      GroupName: Filtering a Pipeline
      FileName: What Is The Fastest Way To Filter
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2793
---
What Is The Fastest Way To Filter
---------------------------------
> @2793 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotInline             |00:00:00.008577|1x           |11658.95/s|
|InlineScriptBlock     |00:00:00.008608|1x           |11616.83/s|
|ScriptBlockVariable   |00:00:00.008699|1.01x        |11495.57/s|
|DotScriptBlockVariable|00:00:00.009414|1.1x         |10621.57/s|
|Filter                |00:00:00.009720|1.13x        |10287.75/s|
|WhereObject           |00:00:00.050554|5.89x        |1978.06/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.235165|1x           |42.52/s   |
|Pipe to ScriptBlock               |00:00:00.819202|3.48x        |12.21/s   |
|.Where Method                     |00:00:04.046831|17.21x       |2.47/s    |
|Where-Object Property (Positional)|00:00:08.964242|38.12x       |1.12/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.008773|1x           |1139.76/s |
|Operator Filter (Explicit Array)|00:00:00.010806|1.23x        |925.36/s  |
|ForEach Loop                    |00:00:00.011217|1.28x        |891.46/s  |
|Pipe to ScriptBlock             |00:00:00.102468|11.68x       |97.59/s   |
|.Where Method                   |00:00:00.461513|52.6x        |21.67/s   |
|Linq.Enumerable::Where          |00:00:00.606040|69.07x       |16.5/s    |
|Where-Object Script (Positional)|00:00:01.302079|148.41x      |7.68/s    |
