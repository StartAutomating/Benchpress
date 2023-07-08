---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: DoubleHerestring
    Time: 
      Ticks: 4364569
      Days: 0
      Hours: 0
      Milliseconds: 436
      Minutes: 0
      Seconds: 0
      TotalDays: 5.05158449074074e-06
      TotalHours: 0.000121238027777778
      TotalMilliseconds: 436.4569
      TotalMinutes: 0.00727428166666667
      TotalSeconds: 0.4364569
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 23461.6522272875
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleHerestring
    Time: 
      Ticks: 4439944
      Days: 0
      Hours: 0
      Milliseconds: 443
      Minutes: 0
      Seconds: 0
      TotalDays: 5.13882407407407e-06
      TotalHours: 0.000123331777777778
      TotalMilliseconds: 443.9944
      TotalMinutes: 0.00739990666666667
      TotalSeconds: 0.4439944
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
    RelativeSpeed: 1.01726974645148
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 23063.353952212
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleQuote
    Time: 
      Ticks: 4603463
      Days: 0
      Hours: 0
      Milliseconds: 460
      Minutes: 0
      Seconds: 0
      TotalDays: 5.32808217592593e-06
      TotalHours: 0.000127873972222222
      TotalMilliseconds: 460.3463
      TotalMinutes: 0.00767243833333333
      TotalSeconds: 0.4603463
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
    RelativeSpeed: 1.05473484323423
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 22244.1236086833
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleQuote
    Time: 
      Ticks: 4703664
      Days: 0
      Hours: 0
      Milliseconds: 470
      Minutes: 0
      Seconds: 0
      TotalDays: 5.44405555555556e-06
      TotalHours: 0.000130657333333333
      TotalMilliseconds: 470.3664
      TotalMinutes: 0.00783944
      TotalSeconds: 0.4703664
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
    RelativeSpeed: 1.07769266564465
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 21770.2625017433
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2095
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|DoubleHerestring|10240      |00:00:00.436456|1x           |23461.65/s|
|SingleHerestring|10240      |00:00:00.443994|1.02x        |23063.35/s|
|SingleQuote     |10240      |00:00:00.460346|1.05x        |22244.12/s|
|DoubleQuote     |10240      |00:00:00.470366|1.08x        |21770.26/s|
