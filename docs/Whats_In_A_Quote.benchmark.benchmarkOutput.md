---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: DoubleQuote
    Time: 
      Ticks: 5726505
      Days: 0
      Hours: 0
      Milliseconds: 572
      Minutes: 0
      Seconds: 0
      TotalDays: 6.62789930555556e-06
      TotalHours: 0.000159069583333333
      TotalMilliseconds: 572.6505
      TotalMinutes: 0.009544175
      TotalSeconds: 0.5726505
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17881.7620869972
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleHerestring
    Time: 
      Ticks: 5731419
      Days: 0
      Hours: 0
      Milliseconds: 573
      Minutes: 0
      Seconds: 0
      TotalDays: 6.63358680555556e-06
      TotalHours: 0.000159206083333333
      TotalMilliseconds: 573.1419
      TotalMinutes: 0.009552365
      TotalSeconds: 0.5731419
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
    RelativeSpeed: 1.00085811502828
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17866.4306343682
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleQuote
    Time: 
      Ticks: 5769166
      Days: 0
      Hours: 0
      Milliseconds: 576
      Minutes: 0
      Seconds: 0
      TotalDays: 6.67727546296296e-06
      TotalHours: 0.000160254611111111
      TotalMilliseconds: 576.9166
      TotalMinutes: 0.00961527666666667
      TotalSeconds: 0.5769166
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
    RelativeSpeed: 1.00744974465228
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17749.5326014193
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleHerestring
    Time: 
      Ticks: 5939608
      Days: 0
      Hours: 0
      Milliseconds: 593
      Minutes: 0
      Seconds: 0
      TotalDays: 6.8745462962963e-06
      TotalHours: 0.000164989111111111
      TotalMilliseconds: 593.9608
      TotalMinutes: 0.00989934666666667
      TotalSeconds: 0.5939608
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
    RelativeSpeed: 1.03721344869165
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17240.1949758301
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2295
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|DoubleQuote     |10240      |00:00:00.572650|1x           |17881.76/s|
|DoubleHerestring|10240      |00:00:00.573141|1x           |17866.43/s|
|SingleQuote     |10240      |00:00:00.576916|1.01x        |17749.53/s|
|SingleHerestring|10240      |00:00:00.593960|1.04x        |17240.19/s|
