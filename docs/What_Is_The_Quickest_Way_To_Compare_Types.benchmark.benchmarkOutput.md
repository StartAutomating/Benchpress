---
layout: Benchmark

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 37770
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.37152777777778e-08
      TotalHours: 1.04916666666667e-06
      TotalMilliseconds: 3.777
      TotalMinutes: 6.295e-05
      TotalSeconds: 0.003777
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 26476.039184538
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 54962
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.36134259259259e-08
      TotalHours: 1.52672222222222e-06
      TotalMilliseconds: 5.4962
      TotalMinutes: 9.16033333333333e-05
      TotalSeconds: 0.0054962
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.45517606566058
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 18194.3888504785
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 62563
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.24108796296296e-08
      TotalHours: 1.73786111111111e-06
      TotalMilliseconds: 6.2563
      TotalMinutes: 0.000104271666666667
      TotalSeconds: 0.0062563
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.65642043950225
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 15983.8882406534
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 37777
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.37233796296296e-08
      TotalHours: 1.04936111111111e-06
      TotalMilliseconds: 3.7777
      TotalMinutes: 6.29616666666667e-05
      TotalSeconds: 0.0037777
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 26471.1332292135
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 42176
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.88148148148148e-08
      TotalHours: 1.17155555555556e-06
      TotalMilliseconds: 4.2176
      TotalMinutes: 7.02933333333333e-05
      TotalSeconds: 0.0042176
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.11644651507531
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 23710.1669195751
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 48097
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.56678240740741e-08
      TotalHours: 1.33602777777778e-06
      TotalMilliseconds: 4.8097
      TotalMinutes: 8.01616666666667e-05
      TotalSeconds: 0.0048097
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.27318209492548
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 20791.3175457929
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
|-is operator   |00:00:00.003777|1x           |26471.13/s|
|.GetType().Name|00:00:00.004217|1.12x        |23710.17/s|
|.GetType() -eq |00:00:00.004809|1.27x        |20791.32/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003777|1x           |26476.04/s|
|.GetType().Name|00:00:00.005496|1.46x        |18194.39/s|
|.GetType() -eq |00:00:00.006256|1.66x        |15983.89/s|
