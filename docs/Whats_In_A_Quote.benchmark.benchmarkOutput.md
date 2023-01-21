---
layout: Benchmark

Data: 
  - Technique: SingleQuote
    Time: 
      Ticks: 6112866
      Days: 0
      Hours: 0
      Milliseconds: 611
      Minutes: 0
      Seconds: 0
      TotalDays: 7.07507638888889e-06
      TotalHours: 0.000169801833333333
      TotalMilliseconds: 611.2866
      TotalMinutes: 0.01018811
      TotalSeconds: 0.6112866
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Whats In A Quote
    Throughput: 16751.5531994321
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 6133956
      Days: 0
      Hours: 0
      Milliseconds: 613
      Minutes: 0
      Seconds: 0
      TotalDays: 7.09948611111111e-06
      TotalHours: 0.000170387666666667
      TotalMilliseconds: 613.3956
      TotalMinutes: 0.01022326
      TotalSeconds: 0.6133956
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
    RelativeSpeed: 1.00345010016578
    ClockSpeed: 2095
    FileName: Whats In A Quote
    Throughput: 16693.9573743274
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleHerestring
    Time: 
      Ticks: 6141471
      Days: 0
      Hours: 0
      Milliseconds: 614
      Minutes: 0
      Seconds: 0
      TotalDays: 7.10818402777778e-06
      TotalHours: 0.000170596416666667
      TotalMilliseconds: 614.1471
      TotalMinutes: 0.010235785
      TotalSeconds: 0.6141471
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
    RelativeSpeed: 1.00467947440693
    ClockSpeed: 2095
    FileName: Whats In A Quote
    Throughput: 16673.5298432574
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 6378144
      Days: 0
      Hours: 0
      Milliseconds: 637
      Minutes: 0
      Seconds: 0
      TotalDays: 7.38211111111111e-06
      TotalHours: 0.000177170666666667
      TotalMilliseconds: 637.8144
      TotalMinutes: 0.01063024
      TotalSeconds: 0.6378144
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
    RelativeSpeed: 1.04339666532851
    ClockSpeed: 2095
    FileName: Whats In A Quote
    Throughput: 16054.8272350076
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2095
---
Whats In A Quote
----------------
> @2095 Mhz


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|SingleQuote     |00:00:00.611286|1x           |16751.55/s|
|DoubleQuote     |00:00:00.613395|1x           |16693.96/s|
|DoubleHerestring|00:00:00.614147|1x           |16673.53/s|
|SingleHerestring|00:00:00.637814|1.04x        |16054.83/s|
