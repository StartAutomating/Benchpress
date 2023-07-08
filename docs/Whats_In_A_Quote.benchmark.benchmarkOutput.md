---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: SingleQuote
    Time: 
      Ticks: 6968520
      Days: 0
      Hours: 0
      Milliseconds: 696
      Minutes: 0
      Seconds: 0
      TotalDays: 8.06541666666667e-06
      TotalHours: 0.00019357
      TotalMilliseconds: 696.852
      TotalMinutes: 0.0116142
      TotalSeconds: 0.696852
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 14694.6553931107
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleQuote
    Time: 
      Ticks: 7017432
      Days: 0
      Hours: 0
      Milliseconds: 701
      Minutes: 0
      Seconds: 0
      TotalDays: 8.12202777777778e-06
      TotalHours: 0.000194928666666667
      TotalMilliseconds: 701.7432
      TotalMinutes: 0.01169572
      TotalSeconds: 0.7017432
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.00701899399012
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 14592.2326001876
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleHerestring
    Time: 
      Ticks: 7076316
      Days: 0
      Hours: 0
      Milliseconds: 707
      Minutes: 0
      Seconds: 0
      TotalDays: 8.19018055555556e-06
      TotalHours: 0.000196564333333333
      TotalMilliseconds: 707.6316
      TotalMinutes: 0.01179386
      TotalSeconds: 0.7076316
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.01546899485113
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 14470.806560928
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleHerestring
    Time: 
      Ticks: 7428543
      Days: 0
      Hours: 0
      Milliseconds: 742
      Minutes: 0
      Seconds: 0
      TotalDays: 8.59785069444444e-06
      TotalHours: 0.000206348416666667
      TotalMilliseconds: 742.8543
      TotalMinutes: 0.012380905
      TotalSeconds: 0.7428543
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.0660144478311
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 13784.66813748
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2295
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|SingleQuote     |10240      |00:00:00.696852|1x           |14694.66/s|
|DoubleQuote     |10240      |00:00:00.701743|1.01x        |14592.23/s|
|SingleHerestring|10240      |00:00:00.707631|1.02x        |14470.81/s|
|DoubleHerestring|10240      |00:00:00.742854|1.07x        |13784.67/s|
