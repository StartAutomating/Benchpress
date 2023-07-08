---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: DoubleQuote
    Time: 
      Ticks: 6332700
      Days: 0
      Hours: 0
      Milliseconds: 633
      Minutes: 0
      Seconds: 0
      TotalDays: 7.32951388888889e-06
      TotalHours: 0.000175908333333333
      TotalMilliseconds: 633.27
      TotalMinutes: 0.0105545
      TotalSeconds: 0.63327
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 16170.0380564372
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleHerestring
    Time: 
      Ticks: 6446446
      Days: 0
      Hours: 0
      Milliseconds: 644
      Minutes: 0
      Seconds: 0
      TotalDays: 7.46116435185185e-06
      TotalHours: 0.000179067944444444
      TotalMilliseconds: 644.6446
      TotalMinutes: 0.0107440766666667
      TotalSeconds: 0.6446446
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.01796169090593
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 15884.7215969854
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleHerestring
    Time: 
      Ticks: 6472314
      Days: 0
      Hours: 0
      Milliseconds: 647
      Minutes: 0
      Seconds: 0
      TotalDays: 7.49110416666667e-06
      TotalHours: 0.0001797865
      TotalMilliseconds: 647.2314
      TotalMinutes: 0.01078719
      TotalSeconds: 0.6472314
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.02204652044152
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 15821.2348782831
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleQuote
    Time: 
      Ticks: 6539559
      Days: 0
      Hours: 0
      Milliseconds: 653
      Minutes: 0
      Seconds: 0
      TotalDays: 7.56893402777778e-06
      TotalHours: 0.000181654416666667
      TotalMilliseconds: 653.9559
      TotalMinutes: 0.010899265
      TotalSeconds: 0.6539559
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.03266521388981
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 15658.5482293225
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2295
---
Whats In A Quote
----------------
> @2295 Mhz


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|DoubleQuote     |00:00:00.633270|1x           |16170.04/s|
|DoubleHerestring|00:00:00.644644|1.02x        |15884.72/s|
|SingleHerestring|00:00:00.647231|1.02x        |15821.23/s|
|SingleQuote     |00:00:00.653955|1.03x        |15658.55/s|
