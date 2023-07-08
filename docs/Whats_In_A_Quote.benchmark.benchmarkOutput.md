---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: DoubleHerestring
    Time: 
      Ticks: 3508344
      Days: 0
      Hours: 0
      Milliseconds: 350
      Minutes: 0
      Seconds: 0
      TotalDays: 4.06058333333333e-06
      TotalHours: 9.7454e-05
      TotalMilliseconds: 350.8344
      TotalMinutes: 0.00584724
      TotalSeconds: 0.3508344
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        FileName: Whats In A Quote
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 29187.5597147828
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 3568520
      Days: 0
      Hours: 0
      Milliseconds: 356
      Minutes: 0
      Seconds: 0
      TotalDays: 4.13023148148148e-06
      TotalHours: 9.91255555555555e-05
      TotalMilliseconds: 356.852
      TotalMinutes: 0.00594753333333333
      TotalSeconds: 0.356852
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        FileName: Whats In A Quote
    RelativeSpeed: 1.01715225188864
    ClockSpeed: 2793
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 28695.3695089281
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleQuote
    Time: 
      Ticks: 3572494
      Days: 0
      Hours: 0
      Milliseconds: 357
      Minutes: 0
      Seconds: 0
      TotalDays: 4.13483101851852e-06
      TotalHours: 9.92359444444444e-05
      TotalMilliseconds: 357.2494
      TotalMinutes: 0.00595415666666667
      TotalSeconds: 0.3572494
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        FileName: Whats In A Quote
    RelativeSpeed: 1.01828498003617
    ClockSpeed: 2793
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 28663.4491198586
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 3672938
      Days: 0
      Hours: 0
      Milliseconds: 367
      Minutes: 0
      Seconds: 0
      TotalDays: 4.25108564814815e-06
      TotalHours: 0.000102026055555556
      TotalMilliseconds: 367.2938
      TotalMinutes: 0.00612156333333333
      TotalSeconds: 0.3672938
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        FileName: Whats In A Quote
    RelativeSpeed: 1.04691501175483
    ClockSpeed: 2793
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 27879.5884929177
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2793
---


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|DoubleHerestring|00:00:00.350834|1x           |29187.56/s|
|SingleHerestring|00:00:00.356852|1.02x        |28695.37/s|
|SingleQuote     |00:00:00.357249|1.02x        |28663.45/s|
|DoubleQuote     |00:00:00.367293|1.05x        |27879.59/s|
