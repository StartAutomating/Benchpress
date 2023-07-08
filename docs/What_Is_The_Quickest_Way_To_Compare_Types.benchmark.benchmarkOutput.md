---
layout: Benchmark

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 58779
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.803125e-08
      TotalHours: 1.63275e-06
      TotalMilliseconds: 5.8779
      TotalMinutes: 9.7965e-05
      TotalSeconds: 0.0058779
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 17012.8787492132
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 84041
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.72696759259259e-08
      TotalHours: 2.33447222222222e-06
      TotalMilliseconds: 8.4041
      TotalMinutes: 0.000140068333333333
      TotalSeconds: 0.0084041
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
    RelativeSpeed: 1.42977934296262
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 11898.9540819362
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 91268
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05634259259259e-07
      TotalHours: 2.53522222222222e-06
      TotalMilliseconds: 9.1268
      TotalMinutes: 0.000152113333333333
      TotalSeconds: 0.0091268
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
    RelativeSpeed: 1.55273141768319
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 10956.7427795065
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 56849
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.57974537037037e-08
      TotalHours: 1.57913888888889e-06
      TotalMilliseconds: 5.6849
      TotalMinutes: 9.47483333333333e-05
      TotalSeconds: 0.0056849
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 17590.4589350736
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 72704
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.41481481481482e-08
      TotalHours: 2.01955555555556e-06
      TotalMilliseconds: 7.2704
      TotalMinutes: 0.000121173333333333
      TotalSeconds: 0.0072704
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
    RelativeSpeed: 1.27889672641559
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 13754.4014084507
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 223066
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.58178240740741e-07
      TotalHours: 6.19627777777778e-06
      TotalMilliseconds: 22.3066
      TotalMinutes: 0.000371776666666667
      TotalSeconds: 0.0223066
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
    RelativeSpeed: 3.92383331281113
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 4482.97813203267
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2295
---
What Is The Quickest Way To Compare Types
-----------------------------------------
> @2295 Mhz


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.005684|1x           |17590.46/s|
|.GetType().Name|00:00:00.007270|1.28x        |13754.4/s |
|.GetType() -eq |00:00:00.022306|3.92x        |4482.98/s |


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.005877|1x           |17012.88/s|
|.GetType() -eq |00:00:00.008404|1.43x        |11898.95/s|
|.GetType().Name|00:00:00.009126|1.55x        |10956.74/s|
