---
layout: Benchmark

Data: 
  - Technique: DoubleHerestring
    Time: 
      Ticks: 4819242
      Days: 0
      Hours: 0
      Milliseconds: 481
      Minutes: 0
      Seconds: 0
      TotalDays: 5.57782638888889e-06
      TotalHours: 0.000133867833333333
      TotalMilliseconds: 481.9242
      TotalMinutes: 0.00803207
      TotalSeconds: 0.4819242
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 21248.1547928077
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 4833598
      Days: 0
      Hours: 0
      Milliseconds: 483
      Minutes: 0
      Seconds: 0
      TotalDays: 5.59444212962963e-06
      TotalHours: 0.000134266611111111
      TotalMilliseconds: 483.3598
      TotalMinutes: 0.00805599666666667
      TotalSeconds: 0.4833598
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
    RelativeSpeed: 1.00297889170123
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 21185.0468326079
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 4879670
      Days: 0
      Hours: 0
      Milliseconds: 487
      Minutes: 0
      Seconds: 0
      TotalDays: 5.6477662037037e-06
      TotalHours: 0.000135546388888889
      TotalMilliseconds: 487.967
      TotalMinutes: 0.00813278333333333
      TotalSeconds: 0.487967
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
    RelativeSpeed: 1.0125389013459
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 20985.025626733
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleQuote
    Time: 
      Ticks: 4991370
      Days: 0
      Hours: 0
      Milliseconds: 499
      Minutes: 0
      Seconds: 0
      TotalDays: 5.77704861111111e-06
      TotalHours: 0.000138649166666667
      TotalMilliseconds: 499.137
      TotalMinutes: 0.00831895
      TotalSeconds: 0.499137
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        FileName: Whats In A Quote
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
    RelativeSpeed: 1.03571682019704
    ClockSpeed: 2594
    FileName: Whats In A Quote
    Throughput: 20515.4095969644
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2594
---
Whats In A Quote
----------------
> @2594 Mhz


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|DoubleHerestring|00:00:00.481924|1x           |21248.15/s|
|SingleHerestring|00:00:00.483359|1x           |21185.05/s|
|DoubleQuote     |00:00:00.487967|1.01x        |20985.03/s|
|SingleQuote     |00:00:00.499137|1.04x        |20515.41/s|
