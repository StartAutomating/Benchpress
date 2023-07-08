---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: DoubleHerestring
    Time: 
      Ticks: 4842345
      Days: 0
      Hours: 0
      Milliseconds: 484
      Minutes: 0
      Seconds: 0
      TotalDays: 5.60456597222222e-06
      TotalHours: 0.000134509583333333
      TotalMilliseconds: 484.2345
      TotalMinutes: 0.008070575
      TotalSeconds: 0.4842345
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 21146.7790915352
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 4850205
      Days: 0
      Hours: 0
      Milliseconds: 485
      Minutes: 0
      Seconds: 0
      TotalDays: 5.61366319444444e-06
      TotalHours: 0.000134727916666667
      TotalMilliseconds: 485.0205
      TotalMinutes: 0.008083675
      TotalSeconds: 0.4850205
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
    RelativeSpeed: 1.00162318050449
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 21112.509677426
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleQuote
    Time: 
      Ticks: 4854133
      Days: 0
      Hours: 0
      Milliseconds: 485
      Minutes: 0
      Seconds: 0
      TotalDays: 5.61820949074074e-06
      TotalHours: 0.000134837027777778
      TotalMilliseconds: 485.4133
      TotalMinutes: 0.00809022166666667
      TotalSeconds: 0.4854133
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
    RelativeSpeed: 1.0024343577337
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 21095.4252798595
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 4987687
      Days: 0
      Hours: 0
      Milliseconds: 498
      Minutes: 0
      Seconds: 0
      TotalDays: 5.77278587962963e-06
      TotalHours: 0.000138546861111111
      TotalMilliseconds: 498.7687
      TotalMinutes: 0.00831281166666667
      TotalSeconds: 0.4987687
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
    RelativeSpeed: 1.03001479655002
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20530.5585534938
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2095
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|DoubleHerestring|10240      |00:00:00.484234|1x           |21146.78/s|
|SingleHerestring|10240      |00:00:00.485020|1x           |21112.51/s|
|SingleQuote     |10240      |00:00:00.485413|1x           |21095.43/s|
|DoubleQuote     |10240      |00:00:00.498768|1.03x        |20530.56/s|
