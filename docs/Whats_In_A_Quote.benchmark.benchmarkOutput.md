---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: DoubleHerestring
    Time: 
      Ticks: 4210799
      Days: 0
      Hours: 0
      Milliseconds: 421
      Minutes: 0
      Seconds: 0
      TotalDays: 4.8736099537037e-06
      TotalHours: 0.000116966638888889
      TotalMilliseconds: 421.0799
      TotalMinutes: 0.00701799833333333
      TotalSeconds: 0.4210799
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
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 24318.4250779959
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleQuote
    Time: 
      Ticks: 4236083
      Days: 0
      Hours: 0
      Milliseconds: 423
      Minutes: 0
      Seconds: 0
      TotalDays: 4.90287384259259e-06
      TotalHours: 0.000117668972222222
      TotalMilliseconds: 423.6083
      TotalMinutes: 0.00706013833333333
      TotalSeconds: 0.4236083
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
    RelativeSpeed: 1.00600456112961
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 24173.2751695375
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleHerestring
    Time: 
      Ticks: 4251605
      Days: 0
      Hours: 0
      Milliseconds: 425
      Minutes: 0
      Seconds: 0
      TotalDays: 4.92083912037037e-06
      TotalHours: 0.000118100138888889
      TotalMilliseconds: 425.1605
      TotalMinutes: 0.00708600833333333
      TotalSeconds: 0.4251605
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
    RelativeSpeed: 1.00969079739973
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 24085.0220093353
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleQuote
    Time: 
      Ticks: 4294051
      Days: 0
      Hours: 0
      Milliseconds: 429
      Minutes: 0
      Seconds: 0
      TotalDays: 4.96996643518519e-06
      TotalHours: 0.000119279194444444
      TotalMilliseconds: 429.4051
      TotalMinutes: 0.00715675166666667
      TotalSeconds: 0.4294051
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
    RelativeSpeed: 1.01977106957611
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 23846.9454601261
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2594
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|DoubleHerestring|10240      |00:00:00.421079|1x           |24318.43/s|
|DoubleQuote     |10240      |00:00:00.423608|1.01x        |24173.28/s|
|SingleHerestring|10240      |00:00:00.425160|1.01x        |24085.02/s|
|SingleQuote     |10240      |00:00:00.429405|1.02x        |23846.95/s|
