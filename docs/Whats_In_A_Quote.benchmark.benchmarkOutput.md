---
layout: Benchmark

Data: 
  - Technique: SingleHerestring
    Time: 
      Ticks: 5746843
      Days: 0
      Hours: 0
      Milliseconds: 574
      Minutes: 0
      Seconds: 0
      TotalDays: 6.65143865740741e-06
      TotalHours: 0.000159634527777778
      TotalMilliseconds: 574.6843
      TotalMinutes: 0.00957807166666667
      TotalSeconds: 0.5746843
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
    ClockSpeed: 2394
    FileName: Whats In A Quote
    Throughput: 17818.4787717361
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleHerestring
    Time: 
      Ticks: 5832242
      Days: 0
      Hours: 0
      Milliseconds: 583
      Minutes: 0
      Seconds: 0
      TotalDays: 6.75028009259259e-06
      TotalHours: 0.000162006722222222
      TotalMilliseconds: 583.2242
      TotalMinutes: 0.00972040333333333
      TotalSeconds: 0.5832242
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.01486015887332
    ClockSpeed: 2394
    FileName: Whats In A Quote
    Throughput: 17557.570484901
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleQuote
    Time: 
      Ticks: 6078456
      Days: 0
      Hours: 0
      Milliseconds: 607
      Minutes: 0
      Seconds: 0
      TotalDays: 7.03525e-06
      TotalHours: 0.000168846
      TotalMilliseconds: 607.8456
      TotalMinutes: 0.01013076
      TotalSeconds: 0.6078456
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.0577035078216
    ClockSpeed: 2394
    FileName: Whats In A Quote
    Throughput: 16846.383357879
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleQuote
    Time: 
      Ticks: 6120250
      Days: 0
      Hours: 0
      Milliseconds: 612
      Minutes: 0
      Seconds: 0
      TotalDays: 7.08362268518519e-06
      TotalHours: 0.000170006944444444
      TotalMilliseconds: 612.025
      TotalMinutes: 0.0102004166666667
      TotalSeconds: 0.612025
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.06497602248748
    ClockSpeed: 2394
    FileName: Whats In A Quote
    Throughput: 16731.3426739104
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2394
---
Whats In A Quote
----------------
> @2394 Mhz


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|SingleHerestring|00:00:00.574684|1x           |17818.48/s|
|DoubleHerestring|00:00:00.583224|1.01x        |17557.57/s|
|DoubleQuote     |00:00:00.607845|1.06x        |16846.38/s|
|SingleQuote     |00:00:00.612025|1.06x        |16731.34/s|
