---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: SingleQuote
    Time: 
      Ticks: 5796399
      Days: 0
      Hours: 0
      Milliseconds: 579
      Minutes: 0
      Seconds: 0
      TotalDays: 6.70879513888889e-06
      TotalHours: 0.000161011083333333
      TotalMilliseconds: 579.6399
      TotalMinutes: 0.009660665
      TotalSeconds: 0.5796399
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17666.140650428
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleQuote
    Time: 
      Ticks: 5804154
      Days: 0
      Hours: 0
      Milliseconds: 580
      Minutes: 0
      Seconds: 0
      TotalDays: 6.71777083333333e-06
      TotalHours: 0.0001612265
      TotalMilliseconds: 580.4154
      TotalMinutes: 0.00967359
      TotalSeconds: 0.5804154
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.00133789961664
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17642.5367073306
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleHerestring
    Time: 
      Ticks: 5816647
      Days: 0
      Hours: 0
      Milliseconds: 581
      Minutes: 0
      Seconds: 0
      TotalDays: 6.73223032407407e-06
      TotalHours: 0.000161573527777778
      TotalMilliseconds: 581.6647
      TotalMinutes: 0.00969441166666667
      TotalSeconds: 0.5816647
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.00349320328017
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17604.6440500859
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleHerestring
    Time: 
      Ticks: 5879851
      Days: 0
      Hours: 0
      Milliseconds: 587
      Minutes: 0
      Seconds: 0
      TotalDays: 6.80538310185185e-06
      TotalHours: 0.000163329194444444
      TotalMilliseconds: 587.9851
      TotalMinutes: 0.00979975166666667
      TotalSeconds: 0.5879851
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.01439721454648
    ClockSpeed: 2295
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 17415.4072951849
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2295
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|SingleQuote     |10240      |00:00:00.579639|1x           |17666.14/s|
|DoubleQuote     |10240      |00:00:00.580415|1x           |17642.54/s|
|SingleHerestring|10240      |00:00:00.581664|1x           |17604.64/s|
|DoubleHerestring|10240      |00:00:00.587985|1.01x        |17415.41/s|
