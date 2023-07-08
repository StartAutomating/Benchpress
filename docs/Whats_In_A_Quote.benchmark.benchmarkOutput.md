---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: SingleHerestring
    Time: 
      Ticks: 4925774
      Days: 0
      Hours: 0
      Milliseconds: 492
      Minutes: 0
      Seconds: 0
      TotalDays: 5.70112731481481e-06
      TotalHours: 0.000136827055555556
      TotalMilliseconds: 492.5774
      TotalMinutes: 0.00820962333333333
      TotalSeconds: 0.4925774
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        RepeatCount: 10240
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20788.6110893435
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 4932071
      Days: 0
      Hours: 0
      Milliseconds: 493
      Minutes: 0
      Seconds: 0
      TotalDays: 5.70841550925926e-06
      TotalHours: 0.000137001972222222
      TotalMilliseconds: 493.2071
      TotalMinutes: 0.00822011833333333
      TotalSeconds: 0.4932071
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        RepeatCount: 10240
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
    RelativeSpeed: 1.00127837777373
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20762.0693213865
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleHerestring
    Time: 
      Ticks: 4932588
      Days: 0
      Hours: 0
      Milliseconds: 493
      Minutes: 0
      Seconds: 0
      TotalDays: 5.70901388888889e-06
      TotalHours: 0.000137016333333333
      TotalMilliseconds: 493.2588
      TotalMinutes: 0.00822098
      TotalSeconds: 0.4932588
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        RepeatCount: 10240
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
    RelativeSpeed: 1.00138333589807
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20759.8931838621
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleQuote
    Time: 
      Ticks: 5100488
      Days: 0
      Hours: 0
      Milliseconds: 510
      Minutes: 0
      Seconds: 0
      TotalDays: 5.90334259259259e-06
      TotalHours: 0.000141680222222222
      TotalMilliseconds: 510.0488
      TotalMinutes: 0.00850081333333333
      TotalSeconds: 0.5100488
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        RepeatCount: 10240
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
    RelativeSpeed: 1.03546934958851
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20076.5103260708
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2594
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|SingleHerestring|10240      |00:00:00.492577|1x           |20788.61/s|
|DoubleQuote     |10240      |00:00:00.493207|1x           |20762.07/s|
|DoubleHerestring|10240      |00:00:00.493258|1x           |20759.89/s|
|SingleQuote     |10240      |00:00:00.510048|1.04x        |20076.51/s|
