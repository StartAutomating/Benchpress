---
layout: Benchmark

Data: 
  - Technique: DoubleHerestring
    Time: 
      Ticks: 5559037
      Days: 0
      Hours: 0
      Milliseconds: 555
      Minutes: 0
      Seconds: 0
      TotalDays: 6.43407060185185e-06
      TotalHours: 0.000154417694444444
      TotalMilliseconds: 555.9037
      TotalMinutes: 0.00926506166666667
      TotalSeconds: 0.5559037
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
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 18420.4566366441
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 5565202
      Days: 0
      Hours: 0
      Milliseconds: 556
      Minutes: 0
      Seconds: 0
      TotalDays: 6.44120601851852e-06
      TotalHours: 0.000154588944444444
      TotalMilliseconds: 556.5202
      TotalMinutes: 0.00927533666666667
      TotalSeconds: 0.5565202
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        FileName: Whats In A Quote
        RepeatCount: 10240
    RelativeSpeed: 1.00110900503091
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 18400.0508876407
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 5597094
      Days: 0
      Hours: 0
      Milliseconds: 559
      Minutes: 0
      Seconds: 0
      TotalDays: 6.47811805555556e-06
      TotalHours: 0.000155474833333333
      TotalMilliseconds: 559.7094
      TotalMinutes: 0.00932849
      TotalSeconds: 0.5597094
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        FileName: Whats In A Quote
        RepeatCount: 10240
    RelativeSpeed: 1.0068459699045
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 18295.2081919653
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleQuote
    Time: 
      Ticks: 5635909
      Days: 0
      Hours: 0
      Milliseconds: 563
      Minutes: 0
      Seconds: 0
      TotalDays: 6.52304282407407e-06
      TotalHours: 0.000156553027777778
      TotalMilliseconds: 563.5909
      TotalMinutes: 0.00939318166666667
      TotalSeconds: 0.5635909
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        FileName: Whats In A Quote
        RepeatCount: 10240
    RelativeSpeed: 1.01382829436106
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 18169.2074872039
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2295
---
Whats In A Quote
----------------
> @2295 Mhz


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|DoubleHerestring|00:00:00.555903|1x           |18420.46/s|
|SingleHerestring|00:00:00.556520|1x           |18400.05/s|
|DoubleQuote     |00:00:00.559709|1.01x        |18295.21/s|
|SingleQuote     |00:00:00.563590|1.01x        |18169.21/s|
