---
layout: Benchmark
title: Whats In A Quote

Data: 
  - Technique: SingleHerestring
    Time: 
      Ticks: 4982248
      Days: 0
      Hours: 0
      Milliseconds: 498
      Minutes: 0
      Seconds: 0
      TotalDays: 5.76649074074074e-06
      TotalHours: 0.000138395777777778
      TotalMilliseconds: 498.2248
      TotalMinutes: 0.00830374666666667
      TotalSeconds: 0.4982248
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
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20552.9712691941
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleHerestring
    Time: 
      Ticks: 5050662
      Days: 0
      Hours: 0
      Milliseconds: 505
      Minutes: 0
      Seconds: 0
      TotalDays: 5.84567361111111e-06
      TotalHours: 0.000140296166666667
      TotalMilliseconds: 505.0662
      TotalMinutes: 0.00841777
      TotalSeconds: 0.5050662
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
    RelativeSpeed: 1.01373155250401
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 20274.5699474643
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleQuote
    Time: 
      Ticks: 5327439
      Days: 0
      Hours: 0
      Milliseconds: 532
      Minutes: 0
      Seconds: 0
      TotalDays: 6.16601736111111e-06
      TotalHours: 0.000147984416666667
      TotalMilliseconds: 532.7439
      TotalMinutes: 0.008879065
      TotalSeconds: 0.5327439
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
    RelativeSpeed: 1.06928418657602
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 19221.2430775838
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 5343859
      Days: 0
      Hours: 0
      Milliseconds: 534
      Minutes: 0
      Seconds: 0
      TotalDays: 6.18502199074074e-06
      TotalHours: 0.000148440527777778
      TotalMilliseconds: 534.3859
      TotalMinutes: 0.00890643166666667
      TotalSeconds: 0.5343859
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
    RelativeSpeed: 1.07257988763305
    ClockSpeed: 2095
    FileName: Whats In A Quote
    RepeatCount: 10240
    Throughput: 19162.1822357214
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2095
---




|Technique       |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------|-----------|---------------|-------------|----------|
|SingleHerestring|10240      |00:00:00.498224|1x           |20552.97/s|
|DoubleHerestring|10240      |00:00:00.505066|1.01x        |20274.57/s|
|SingleQuote     |10240      |00:00:00.532743|1.07x        |19221.24/s|
|DoubleQuote     |10240      |00:00:00.534385|1.07x        |19162.18/s|
