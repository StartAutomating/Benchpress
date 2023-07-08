---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: DoubleHerestring
    Time: 
      Ticks: 4060220
      Days: 0
      Hours: 0
      Milliseconds: 406
      Minutes: 0
      Seconds: 0
      TotalDays: 4.6993287037037e-06
      TotalHours: 0.000112783888888889
      TotalMilliseconds: 406.022
      TotalMinutes: 0.00676703333333333
      TotalSeconds: 0.406022
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        FileName: Whats In A Quote
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 25220.3082591584
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleQuote
    Time: 
      Ticks: 4068232
      Days: 0
      Hours: 0
      Milliseconds: 406
      Minutes: 0
      Seconds: 0
      TotalDays: 4.70860185185185e-06
      TotalHours: 0.000113006444444444
      TotalMilliseconds: 406.8232
      TotalMinutes: 0.00678038666666667
      TotalSeconds: 0.4068232
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        FileName: Whats In A Quote
        RepeatCount: 10240
    RelativeSpeed: 1.00197329208762
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 25170.6392359138
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleQuote
    Time: 
      Ticks: 4075709
      Days: 0
      Hours: 0
      Milliseconds: 407
      Minutes: 0
      Seconds: 0
      TotalDays: 4.71725578703704e-06
      TotalHours: 0.000113214138888889
      TotalMilliseconds: 407.5709
      TotalMinutes: 0.00679284833333333
      TotalSeconds: 0.4075709
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        FileName: Whats In A Quote
        RepeatCount: 10240
    RelativeSpeed: 1.00381481791627
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 25124.4630075405
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleHerestring
    Time: 
      Ticks: 4162102
      Days: 0
      Hours: 0
      Milliseconds: 416
      Minutes: 0
      Seconds: 0
      TotalDays: 4.81724768518519e-06
      TotalHours: 0.000115613944444444
      TotalMilliseconds: 416.2102
      TotalMinutes: 0.00693683666666667
      TotalSeconds: 0.4162102
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        FileName: Whats In A Quote
        RepeatCount: 10240
    RelativeSpeed: 1.02509272896543
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 24602.9530271003
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2594
---


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|DoubleHerestring|00:00:00.406022|1x           |25220.31/s|
|DoubleQuote     |00:00:00.406823|1x           |25170.64/s|
|SingleQuote     |00:00:00.407570|1x           |25124.46/s|
|SingleHerestring|00:00:00.416210|1.03x        |24602.95/s|
