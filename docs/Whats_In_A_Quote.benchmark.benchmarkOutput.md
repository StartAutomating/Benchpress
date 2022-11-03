---
layout: Benchmark

Data: 
  - Technique: SingleQuote
    Time: 
      Ticks: 5046470
      Days: 0
      Hours: 0
      Milliseconds: 504
      Minutes: 0
      Seconds: 0
      TotalDays: 5.84082175925926e-06
      TotalHours: 0.000140179722222222
      TotalMilliseconds: 504.647
      TotalMinutes: 0.00841078333333333
      TotalSeconds: 0.504647
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
    Throughput: 20291.4116204
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 5082605
      Days: 0
      Hours: 0
      Milliseconds: 508
      Minutes: 0
      Seconds: 0
      TotalDays: 5.88264467592593e-06
      TotalHours: 0.000141183472222222
      TotalMilliseconds: 508.2605
      TotalMinutes: 0.00847100833333333
      TotalSeconds: 0.5082605
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
    RelativeSpeed: 1.00716045077054
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 20147.1489521613
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleHerestring
    Time: 
      Ticks: 5241892
      Days: 0
      Hours: 0
      Milliseconds: 524
      Minutes: 0
      Seconds: 0
      TotalDays: 6.06700462962963e-06
      TotalHours: 0.000145608111111111
      TotalMilliseconds: 524.1892
      TotalMinutes: 0.00873648666666667
      TotalSeconds: 0.5241892
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
    RelativeSpeed: 1.03872449454767
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 19534.9312805376
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 5334592
      Days: 0
      Hours: 0
      Milliseconds: 533
      Minutes: 0
      Seconds: 0
      TotalDays: 6.1742962962963e-06
      TotalHours: 0.000148183111111111
      TotalMilliseconds: 533.4592
      TotalMinutes: 0.00889098666666667
      TotalSeconds: 0.5334592
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
    RelativeSpeed: 1.057093770497
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 19195.4698691109
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2594
---
Whats In A Quote
----------------
> @2594 Mhz


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|SingleQuote     |00:00:00.504647|1x           |20291.41/s|
|DoubleQuote     |00:00:00.508260|1.01x        |20147.15/s|
|DoubleHerestring|00:00:00.524189|1.04x        |19534.93/s|
|SingleHerestring|00:00:00.533459|1.06x        |19195.47/s|
