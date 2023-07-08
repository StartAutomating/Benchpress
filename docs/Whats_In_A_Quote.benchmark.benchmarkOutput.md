---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: DoubleQuote
    Time: 
      Ticks: 4357255
      Days: 0
      Hours: 0
      Milliseconds: 435
      Minutes: 0
      Seconds: 0
      TotalDays: 5.04311921296296e-06
      TotalHours: 0.000121034861111111
      TotalMilliseconds: 435.7255
      TotalMinutes: 0.00726209166666667
      TotalSeconds: 0.4357255
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        FileName: Whats In A Quote
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23501.0344815715
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleQuote
    Time: 
      Ticks: 4406191
      Days: 0
      Hours: 0
      Milliseconds: 440
      Minutes: 0
      Seconds: 0
      TotalDays: 5.09975810185185e-06
      TotalHours: 0.000122394194444444
      TotalMilliseconds: 440.6191
      TotalMinutes: 0.00734365166666667
      TotalSeconds: 0.4406191
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        FileName: Whats In A Quote
    RelativeSpeed: 1.01123092405654
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23240.0274976732
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleHerestring
    Time: 
      Ticks: 4440816
      Days: 0
      Hours: 0
      Milliseconds: 444
      Minutes: 0
      Seconds: 0
      TotalDays: 5.13983333333333e-06
      TotalHours: 0.000123356
      TotalMilliseconds: 444.0816
      TotalMinutes: 0.00740136
      TotalSeconds: 0.4440816
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        FileName: Whats In A Quote
    RelativeSpeed: 1.01917744084292
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23058.8252249136
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleHerestring
    Time: 
      Ticks: 4443843
      Days: 0
      Hours: 0
      Milliseconds: 444
      Minutes: 0
      Seconds: 0
      TotalDays: 5.14333680555556e-06
      TotalHours: 0.000123440083333333
      TotalMilliseconds: 444.3843
      TotalMinutes: 0.007406405
      TotalSeconds: 0.4443843
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        FileName: Whats In A Quote
    RelativeSpeed: 1.01987214427432
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23043.1183099853
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2793
---
Whats In A Quote
----------------
> @2793 Mhz


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|DoubleQuote     |00:00:00.435725|1x           |23501.03/s|
|SingleQuote     |00:00:00.440619|1.01x        |23240.03/s|
|DoubleHerestring|00:00:00.444081|1.02x        |23058.83/s|
|SingleHerestring|00:00:00.444384|1.02x        |23043.12/s|
