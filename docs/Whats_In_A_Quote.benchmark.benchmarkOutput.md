---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: SingleQuote
    Time: 
      Ticks: 5877842
      Days: 0
      Hours: 0
      Milliseconds: 587
      Minutes: 0
      Seconds: 0
      TotalDays: 6.80305787037037e-06
      TotalHours: 0.000163273388888889
      TotalMilliseconds: 587.7842
      TotalMinutes: 0.00979640333333333
      TotalSeconds: 0.5877842
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        FileName: Whats In A Quote
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17421.3597439332
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleHerestring
    Time: 
      Ticks: 5889343
      Days: 0
      Hours: 0
      Milliseconds: 588
      Minutes: 0
      Seconds: 0
      TotalDays: 6.81636921296296e-06
      TotalHours: 0.000163592861111111
      TotalMilliseconds: 588.9343
      TotalMinutes: 0.00981557166666667
      TotalSeconds: 0.5889343
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        FileName: Whats In A Quote
    RelativeSpeed: 1.00195667049233
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17387.3384518443
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleHerestring
    Time: 
      Ticks: 5932370
      Days: 0
      Hours: 0
      Milliseconds: 593
      Minutes: 0
      Seconds: 0
      TotalDays: 6.86616898148148e-06
      TotalHours: 0.000164788055555556
      TotalMilliseconds: 593.237
      TotalMinutes: 0.00988728333333333
      TotalSeconds: 0.593237
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        FileName: Whats In A Quote
    RelativeSpeed: 1.00927687406364
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17261.2294917546
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleQuote
    Time: 
      Ticks: 6087119
      Days: 0
      Hours: 0
      Milliseconds: 608
      Minutes: 0
      Seconds: 0
      TotalDays: 7.04527662037037e-06
      TotalHours: 0.000169086638888889
      TotalMilliseconds: 608.7119
      TotalMinutes: 0.0101451983333333
      TotalSeconds: 0.6087119
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        FileName: Whats In A Quote
    RelativeSpeed: 1.03560439358526
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 16822.4081047208
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2095
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|SingleQuote     |10240      |00:00:00.587784|1x           |17421.36/s|
|SingleHerestring|10240      |00:00:00.588934|1x           |17387.34/s|
|DoubleHerestring|10240      |00:00:00.593237|1.01x        |17261.23/s|
|DoubleQuote     |10240      |00:00:00.608711|1.04x        |16822.41/s|
