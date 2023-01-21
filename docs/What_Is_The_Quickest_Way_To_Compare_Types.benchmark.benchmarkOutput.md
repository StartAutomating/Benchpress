---
layout: Benchmark

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 38067
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.40590277777778e-08
      TotalHours: 1.05741666666667e-06
      TotalMilliseconds: 3.8067
      TotalMinutes: 6.3445e-05
      TotalSeconds: 0.0038067
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 26269.4722463026
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 54768
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.33888888888889e-08
      TotalHours: 1.52133333333333e-06
      TotalMilliseconds: 5.4768
      TotalMinutes: 9.128e-05
      TotalSeconds: 0.0054768
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1.4387264559855
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 18258.8372772422
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 174273
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.01704861111111e-07
      TotalHours: 4.84091666666667e-06
      TotalMilliseconds: 17.4273
      TotalMinutes: 0.000290455
      TotalSeconds: 0.0174273
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 4.57805973677989
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 5738.12351884687
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 38003
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.39849537037037e-08
      TotalHours: 1.05563888888889e-06
      TotalMilliseconds: 3.8003
      TotalMinutes: 6.33383333333333e-05
      TotalSeconds: 0.0038003
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 26313.7120753625
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 42283
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.89386574074074e-08
      TotalHours: 1.17452777777778e-06
      TotalMilliseconds: 4.2283
      TotalMinutes: 7.04716666666667e-05
      TotalSeconds: 0.0042283
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1.11262268768255
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 23650.1667336755
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 48682
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.63449074074074e-08
      TotalHours: 1.35227777777778e-06
      TotalMilliseconds: 4.8682
      TotalMinutes: 8.11366666666667e-05
      TotalSeconds: 0.0048682
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1.2810041312528
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 20541.4732344604
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2793
---
What Is The Quickest Way To Compare Types
-----------------------------------------
> @2793 Mhz


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003800|1x           |26313.71/s|
|.GetType().Name|00:00:00.004228|1.11x        |23650.17/s|
|.GetType() -eq |00:00:00.004868|1.28x        |20541.47/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003806|1x           |26269.47/s|
|.GetType().Name|00:00:00.005476|1.44x        |18258.84/s|
|.GetType() -eq |00:00:00.017427|4.58x        |5738.12/s |
