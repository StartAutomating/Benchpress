---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: SingleQuote
    Time: 
      Ticks: 5708298
      Days: 0
      Hours: 0
      Milliseconds: 570
      Minutes: 0
      Seconds: 0
      TotalDays: 6.60682638888889e-06
      TotalHours: 0.000158563833333333
      TotalMilliseconds: 570.8298
      TotalMinutes: 0.00951383
      TotalSeconds: 0.5708298
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17938.7971686131
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleHerestring
    Time: 
      Ticks: 5736642
      Days: 0
      Hours: 0
      Milliseconds: 573
      Minutes: 0
      Seconds: 0
      TotalDays: 6.63963194444444e-06
      TotalHours: 0.000159351166666667
      TotalMilliseconds: 573.6642
      TotalMinutes: 0.00956107
      TotalSeconds: 0.5736642
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
    RelativeSpeed: 1.00496540299753
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17850.1639112219
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 5772815
      Days: 0
      Hours: 0
      Milliseconds: 577
      Minutes: 0
      Seconds: 0
      TotalDays: 6.68149884259259e-06
      TotalHours: 0.000160355972222222
      TotalMilliseconds: 577.2815
      TotalMinutes: 0.00962135833333333
      TotalSeconds: 0.5772815
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
    RelativeSpeed: 1.01130231813406
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17738.3131106748
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 5961251
      Days: 0
      Hours: 0
      Milliseconds: 596
      Minutes: 0
      Seconds: 0
      TotalDays: 6.89959606481481e-06
      TotalHours: 0.000165590305555556
      TotalMilliseconds: 596.1251
      TotalMinutes: 0.00993541833333333
      TotalSeconds: 0.5961251
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
    RelativeSpeed: 1.04431320859563
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17177.602486458
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2095
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|SingleQuote     |10240      |00:00:00.570829|1x           |17938.8/s |
|DoubleHerestring|10240      |00:00:00.573664|1x           |17850.16/s|
|SingleHerestring|10240      |00:00:00.577281|1.01x        |17738.31/s|
|DoubleQuote     |10240      |00:00:00.596125|1.04x        |17177.6/s |
