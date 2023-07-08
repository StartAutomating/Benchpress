---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: SingleHerestring
    Time: 
      Ticks: 6322581
      Days: 0
      Hours: 0
      Milliseconds: 632
      Minutes: 0
      Seconds: 0
      TotalDays: 7.31780208333333e-06
      TotalHours: 0.00017562725
      TotalMilliseconds: 632.2581
      TotalMinutes: 0.010537635
      TotalSeconds: 0.6322581
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: Whats In A Quote
    Throughput: 16195.9174583924
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleHerestring
    Time: 
      Ticks: 6412266
      Days: 0
      Hours: 0
      Milliseconds: 641
      Minutes: 0
      Seconds: 0
      TotalDays: 7.42160416666667e-06
      TotalHours: 0.0001781185
      TotalMilliseconds: 641.2266
      TotalMinutes: 0.01068711
      TotalSeconds: 0.6412266
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.01418487165289
    ClockSpeed: 2397
    FileName: Whats In A Quote
    Throughput: 15969.3936589655
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleQuote
    Time: 
      Ticks: 6426311
      Days: 0
      Hours: 0
      Milliseconds: 642
      Minutes: 0
      Seconds: 0
      TotalDays: 7.4378599537037e-06
      TotalHours: 0.000178508638888889
      TotalMilliseconds: 642.6311
      TotalMinutes: 0.0107105183333333
      TotalSeconds: 0.6426311
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.01640627458944
    ClockSpeed: 2397
    FileName: Whats In A Quote
    Throughput: 15934.4918103092
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleQuote
    Time: 
      Ticks: 6440328
      Days: 0
      Hours: 0
      Milliseconds: 644
      Minutes: 0
      Seconds: 0
      TotalDays: 7.45408333333333e-06
      TotalHours: 0.000178898
      TotalMilliseconds: 644.0328
      TotalMinutes: 0.01073388
      TotalSeconds: 0.6440328
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.01862324895482
    ClockSpeed: 2397
    FileName: Whats In A Quote
    Throughput: 15899.8113139579
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2397
---


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|SingleHerestring|00:00:00.632258|1x           |16195.92/s|
|DoubleHerestring|00:00:00.641226|1.01x        |15969.39/s|
|DoubleQuote     |00:00:00.642631|1.02x        |15934.49/s|
|SingleQuote     |00:00:00.644032|1.02x        |15899.81/s|
