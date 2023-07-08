---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: SingleQuote
    Time: 
      Ticks: 5069767
      Days: 0
      Hours: 0
      Milliseconds: 506
      Minutes: 0
      Seconds: 0
      TotalDays: 5.86778587962963e-06
      TotalHours: 0.000140826861111111
      TotalMilliseconds: 506.9767
      TotalMinutes: 0.00844961166666667
      TotalSeconds: 0.5069767
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 20198.1668980054
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 5069940
      Days: 0
      Hours: 0
      Milliseconds: 506
      Minutes: 0
      Seconds: 0
      TotalDays: 5.86798611111111e-06
      TotalHours: 0.000140831666666667
      TotalMilliseconds: 506.994
      TotalMinutes: 0.0084499
      TotalSeconds: 0.506994
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
    RelativeSpeed: 1.00003412385619
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 20197.4776821816
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleHerestring
    Time: 
      Ticks: 5118877
      Days: 0
      Hours: 0
      Milliseconds: 511
      Minutes: 0
      Seconds: 0
      TotalDays: 5.92462615740741e-06
      TotalHours: 0.000142191027777778
      TotalMilliseconds: 511.8877
      TotalMinutes: 0.00853146166666667
      TotalSeconds: 0.5118877
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
    RelativeSpeed: 1.00968683570665
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 20004.3876811262
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 5246598
      Days: 0
      Hours: 0
      Milliseconds: 524
      Minutes: 0
      Seconds: 0
      TotalDays: 6.07245138888889e-06
      TotalHours: 0.000145738833333333
      TotalMilliseconds: 524.6598
      TotalMinutes: 0.00874433
      TotalSeconds: 0.5246598
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
    RelativeSpeed: 1.03487951221427
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 19517.4091859144
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2594
---


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|SingleQuote     |00:00:00.506976|1x           |20198.17/s|
|DoubleQuote     |00:00:00.506994|1x           |20197.48/s|
|DoubleHerestring|00:00:00.511887|1.01x        |20004.39/s|
|SingleHerestring|00:00:00.524659|1.03x        |19517.41/s|
