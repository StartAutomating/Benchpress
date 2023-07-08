---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: SingleHerestring
    Time: 
      Ticks: 4879749
      Days: 0
      Hours: 0
      Milliseconds: 487
      Minutes: 0
      Seconds: 0
      TotalDays: 5.64785763888889e-06
      TotalHours: 0.000135548583333333
      TotalMilliseconds: 487.9749
      TotalMinutes: 0.008132915
      TotalSeconds: 0.4879749
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20984.6858926555
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleQuote
    Time: 
      Ticks: 4918526
      Days: 0
      Hours: 0
      Milliseconds: 491
      Minutes: 0
      Seconds: 0
      TotalDays: 5.69273842592593e-06
      TotalHours: 0.000136625722222222
      TotalMilliseconds: 491.8526
      TotalMinutes: 0.00819754333333333
      TotalSeconds: 0.4918526
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
    RelativeSpeed: 1.00794651528183
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20819.2454406056
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleQuote
    Time: 
      Ticks: 4999420
      Days: 0
      Hours: 0
      Milliseconds: 499
      Minutes: 0
      Seconds: 0
      TotalDays: 5.78636574074074e-06
      TotalHours: 0.000138872777777778
      TotalMilliseconds: 499.942
      TotalMinutes: 0.00833236666666667
      TotalSeconds: 0.499942
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
    RelativeSpeed: 1.02452400727988
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20482.3759556109
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleHerestring
    Time: 
      Ticks: 5038637
      Days: 0
      Hours: 0
      Milliseconds: 503
      Minutes: 0
      Seconds: 0
      TotalDays: 5.83175578703704e-06
      TotalHours: 0.000139962138888889
      TotalMilliseconds: 503.8637
      TotalMinutes: 0.00839772833333333
      TotalSeconds: 0.5038637
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
    RelativeSpeed: 1.03256069113391
    ClockSpeed: 2594
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20322.9563868165
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2594
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|SingleHerestring|10240      |00:00:00.487974|1x           |20984.69/s|
|SingleQuote     |10240      |00:00:00.491852|1.01x        |20819.25/s|
|DoubleQuote     |10240      |00:00:00.499942|1.02x        |20482.38/s|
|DoubleHerestring|10240      |00:00:00.503863|1.03x        |20322.96/s|
