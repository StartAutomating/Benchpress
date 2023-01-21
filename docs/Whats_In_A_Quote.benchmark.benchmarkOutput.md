---
layout: Benchmark

Data: 
  - Technique: DoubleHerestring
    Time: 
      Ticks: 4362701
      Days: 0
      Hours: 0
      Milliseconds: 436
      Minutes: 0
      Seconds: 0
      TotalDays: 5.0494224537037e-06
      TotalHours: 0.000121186138888889
      TotalMilliseconds: 436.2701
      TotalMinutes: 0.00727116833333333
      TotalSeconds: 0.4362701
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23471.6979229152
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleQuote
    Time: 
      Ticks: 4380706
      Days: 0
      Hours: 0
      Milliseconds: 438
      Minutes: 0
      Seconds: 0
      TotalDays: 5.07026157407407e-06
      TotalHours: 0.000121686277777778
      TotalMilliseconds: 438.0706
      TotalMinutes: 0.00730117666666667
      TotalSeconds: 0.4380706
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.00412703047951
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23375.2276459548
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 4415454
      Days: 0
      Hours: 0
      Milliseconds: 441
      Minutes: 0
      Seconds: 0
      TotalDays: 5.11047916666667e-06
      TotalHours: 0.0001226515
      TotalMilliseconds: 441.5454
      TotalMinutes: 0.00735909
      TotalSeconds: 0.4415454
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.0120918210989
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23191.2731963689
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 4418478
      Days: 0
      Hours: 0
      Milliseconds: 441
      Minutes: 0
      Seconds: 0
      TotalDays: 5.11397916666667e-06
      TotalHours: 0.0001227355
      TotalMilliseconds: 441.8478
      TotalMinutes: 0.00736413
      TotalSeconds: 0.4418478
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.01278496967819
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23175.4011222869
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
FileName: Whats In A Quote
ClockSpeed: 2793
---
Whats In A Quote
----------------
> @2793 Mhz


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|DoubleHerestring|00:00:00.436270|1x           |23471.7/s |
|SingleQuote     |00:00:00.438070|1x           |23375.23/s|
|SingleHerestring|00:00:00.441545|1.01x        |23191.27/s|
|DoubleQuote     |00:00:00.441847|1.01x        |23175.4/s |
