---
layout: Benchmark

Data: 
  - Technique: SingleQuote
    Time: 
      Ticks: 5965672
      Days: 0
      Hours: 0
      Milliseconds: 596
      Minutes: 0
      Seconds: 0
      TotalDays: 6.90471296296296e-06
      TotalHours: 0.000165713111111111
      TotalMilliseconds: 596.5672
      TotalMinutes: 0.00994278666666667
      TotalSeconds: 0.5965672
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
    Throughput: 17164.8726245761
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleHerestring
    Time: 
      Ticks: 6136697
      Days: 0
      Hours: 0
      Milliseconds: 613
      Minutes: 0
      Seconds: 0
      TotalDays: 7.10265856481482e-06
      TotalHours: 0.000170463805555556
      TotalMilliseconds: 613.6697
      TotalMinutes: 0.0102278283333333
      TotalSeconds: 0.6136697
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.0286681869201
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 16686.5008977957
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: SingleHerestring
    Time: 
      Ticks: 6181462
      Days: 0
      Hours: 0
      Milliseconds: 618
      Minutes: 0
      Seconds: 0
      TotalDays: 7.15446990740741e-06
      TotalHours: 0.000171707277777778
      TotalMilliseconds: 618.1462
      TotalMinutes: 0.0103024366666667
      TotalSeconds: 0.6181462
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.03617195179353
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 16565.6603567247
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
  - Technique: DoubleQuote
    Time: 
      Ticks: 6188361
      Days: 0
      Hours: 0
      Milliseconds: 618
      Minutes: 0
      Seconds: 0
      TotalDays: 7.16245486111111e-06
      TotalHours: 0.000171898916666667
      TotalMilliseconds: 618.8361
      TotalMinutes: 0.010313935
      TotalSeconds: 0.6188361
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.03732840156147
    ClockSpeed: 2295
    FileName: Whats In A Quote
    Throughput: 16547.1923826034
    BenchmarkInput: 
      FileName: Whats In A Quote
      RepeatCount: 10240
FileName: Whats In A Quote
ClockSpeed: 2295
---
Whats In A Quote
----------------
> @2295 Mhz


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|SingleQuote     |00:00:00.596567|1x           |17164.87/s|
|DoubleHerestring|00:00:00.613669|1.03x        |16686.5/s |
|SingleHerestring|00:00:00.618146|1.04x        |16565.66/s|
|DoubleQuote     |00:00:00.618836|1.04x        |16547.19/s|
