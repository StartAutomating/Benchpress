---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: SingleQuote
    Time: 
      Ticks: 4321303
      Days: 0
      Hours: 0
      Milliseconds: 432
      Minutes: 0
      Seconds: 0
      TotalDays: 5.00150810185185e-06
      TotalHours: 0.000120036194444444
      TotalMilliseconds: 432.1303
      TotalMinutes: 0.00720217166666667
      TotalSeconds: 0.4321303
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23696.556339604
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 4473327
      Days: 0
      Hours: 0
      Milliseconds: 447
      Minutes: 0
      Seconds: 0
      TotalDays: 5.17746180555556e-06
      TotalHours: 0.000124259083333333
      TotalMilliseconds: 447.3327
      TotalMinutes: 0.007455545
      TotalSeconds: 0.4473327
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
    RelativeSpeed: 1.03518012969699
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 22891.2395628578
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleHerestring
    Time: 
      Ticks: 4482035
      Days: 0
      Hours: 0
      Milliseconds: 448
      Minutes: 0
      Seconds: 0
      TotalDays: 5.18754050925926e-06
      TotalHours: 0.000124500972222222
      TotalMilliseconds: 448.2035
      TotalMinutes: 0.00747005833333333
      TotalSeconds: 0.4482035
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
    RelativeSpeed: 1.03719526263259
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 22846.7649181678
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 4526940
      Days: 0
      Hours: 0
      Milliseconds: 452
      Minutes: 0
      Seconds: 0
      TotalDays: 5.23951388888889e-06
      TotalHours: 0.000125748333333333
      TotalMilliseconds: 452.694
      TotalMinutes: 0.0075449
      TotalSeconds: 0.452694
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
    RelativeSpeed: 1.04758680425788
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 22620.1363393374
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2793
---


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|SingleQuote     |00:00:00.432130|1x           |23696.56/s|
|DoubleQuote     |00:00:00.447332|1.04x        |22891.24/s|
|DoubleHerestring|00:00:00.448203|1.04x        |22846.76/s|
|SingleHerestring|00:00:00.452694|1.05x        |22620.14/s|
