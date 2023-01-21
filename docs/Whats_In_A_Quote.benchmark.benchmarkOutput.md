---
layout: Benchmark

Data: 
  - Technique: SingleQuote
    Time: 
      Ticks: 3838809
      Days: 0
      Hours: 0
      Milliseconds: 383
      Minutes: 0
      Seconds: 0
      TotalDays: 4.44306597222222e-06
      TotalHours: 0.000106633583333333
      TotalMilliseconds: 383.8809
      TotalMinutes: 0.006398015
      TotalSeconds: 0.3838809
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  'that which we call a single quotation'
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 26674.9400660465
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleHerestring
    Time: 
      Ticks: 3896092
      Days: 0
      Hours: 0
      Milliseconds: 389
      Minutes: 0
      Seconds: 0
      TotalDays: 4.50936574074074e-06
      TotalHours: 0.000108224777777778
      TotalMilliseconds: 389.6092
      TotalMinutes: 0.00649348666666667
      TotalSeconds: 0.3896092
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @"
          that which we call a doubly quoted herestring
          "@
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.01492207609183
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 26282.7469166539
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: DoubleQuote
    Time: 
      Ticks: 3900827
      Days: 0
      Hours: 0
      Milliseconds: 390
      Minutes: 0
      Seconds: 0
      TotalDays: 4.51484606481481e-06
      TotalHours: 0.000108356305555556
      TotalMilliseconds: 390.0827
      TotalMinutes: 0.00650137833333333
      TotalSeconds: 0.3900827
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "that which we call a double quotation"
              
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.01615553157242
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 26250.8437313421
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: Whats In A Quote
  - Technique: SingleHerestring
    Time: 
      Ticks: 3920386
      Days: 0
      Hours: 0
      Milliseconds: 392
      Minutes: 0
      Seconds: 0
      TotalDays: 4.5374837962963e-06
      TotalHours: 0.000108899611111111
      TotalMilliseconds: 392.0386
      TotalMinutes: 0.00653397666666667
      TotalSeconds: 0.3920386
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          @'
          that which we call a singly quoted herestring
          '@
        RepeatCount: 10240
        FileName: Whats In A Quote
    RelativeSpeed: 1.02125060142351
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 26119.8769712982
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
|SingleQuote     |00:00:00.383880|1x           |26674.94/s|
|DoubleHerestring|00:00:00.389609|1.01x        |26282.75/s|
|DoubleQuote     |00:00:00.390082|1.02x        |26250.84/s|
|SingleHerestring|00:00:00.392038|1.02x        |26119.88/s|
