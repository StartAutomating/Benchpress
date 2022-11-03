---
layout: Benchmark

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 39747
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.60034722222222e-08
      TotalHours: 1.10408333333333e-06
      TotalMilliseconds: 3.9747
      TotalMinutes: 6.6245e-05
      TotalSeconds: 0.0039747
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [int]
              
        GroupName: Single Type comparison
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 25159.1315067804
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 56984
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.59537037037037e-08
      TotalHours: 1.58288888888889e-06
      TotalMilliseconds: 5.6984
      TotalMinutes: 9.49733333333333e-05
      TotalSeconds: 0.0056984
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        GroupName: Single Type comparison
    RelativeSpeed: 1.43366794978237
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 17548.7856240348
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 67780
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.84490740740741e-08
      TotalHours: 1.88277777777778e-06
      TotalMilliseconds: 6.778
      TotalMinutes: 0.000112966666666667
      TotalSeconds: 0.006778
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        GroupName: Single Type comparison
    RelativeSpeed: 1.70528593352957
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 14753.6146355857
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 39555
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.578125e-08
      TotalHours: 1.09875e-06
      TotalMilliseconds: 3.9555
      TotalMinutes: 6.5925e-05
      TotalSeconds: 0.0039555
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        GroupName: Multitype comparison
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 25281.2539501959
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 44399
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.13877314814815e-08
      TotalHours: 1.23330555555556e-06
      TotalMilliseconds: 4.4399
      TotalMinutes: 7.39983333333333e-05
      TotalSeconds: 0.0044399
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        GroupName: Multitype comparison
    RelativeSpeed: 1.12246239413475
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 22523.0297979684
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 50057
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.79363425925926e-08
      TotalHours: 1.39047222222222e-06
      TotalMilliseconds: 5.0057
      TotalMinutes: 8.34283333333333e-05
      TotalSeconds: 0.0050057
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        GroupName: Multitype comparison
    RelativeSpeed: 1.26550372898496
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 19977.2259624029
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2594
---
What Is The Quickest Way To Compare Types
-----------------------------------------
> @2594 Mhz


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003955|1x           |25281.25/s|
|.GetType().Name|00:00:00.004439|1.12x        |22523.03/s|
|.GetType() -eq |00:00:00.005005|1.27x        |19977.23/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003974|1x           |25159.13/s|
|.GetType().Name|00:00:00.005698|1.43x        |17548.79/s|
|.GetType() -eq |00:00:00.006778|1.71x        |14753.61/s|
