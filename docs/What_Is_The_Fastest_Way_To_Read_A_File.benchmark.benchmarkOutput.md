---
layout: Benchmark

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 76626
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.86875e-08
      TotalHours: 2.1285e-06
      TotalMilliseconds: 7.6626
      TotalMinutes: 0.00012771
      TotalSeconds: 0.0076626
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    Throughput: 13050.4006472999
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 128792
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.49064814814815e-07
      TotalHours: 3.57755555555556e-06
      TotalMilliseconds: 12.8792
      TotalMinutes: 0.000214653333333333
      TotalSeconds: 0.0128792
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.68078720016705
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    Throughput: 7764.45741971551
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 157054
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.81775462962963e-07
      TotalHours: 4.36261111111111e-06
      TotalMilliseconds: 15.7054
      TotalMinutes: 0.000261756666666667
      TotalSeconds: 0.0157054
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 2.04961762326103
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    Throughput: 6367.23674659671
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 733940
      Days: 0
      Hours: 0
      Milliseconds: 73
      Minutes: 0
      Seconds: 0
      TotalDays: 8.49467592592593e-07
      TotalHours: 2.03872222222222e-05
      TotalMilliseconds: 73.394
      TotalMinutes: 0.00122323333333333
      TotalSeconds: 0.073394
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 9.57821105107927
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1362.50919693708
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 944338
      Days: 0
      Hours: 0
      Milliseconds: 94
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0929837962963e-06
      TotalHours: 2.62316111111111e-05
      TotalMilliseconds: 94.4338
      TotalMinutes: 0.00157389666666667
      TotalSeconds: 0.0944338
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 12.3239892464699
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1058.94287850325
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2095
---
What Is The Fastest Way To Read A File
--------------------------------------
> @2095 Mhz


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.007662|1x           |13050.4/s |
|[IO.StreamReader].ReadToEnd|00:00:00.012879|1.68x        |7764.46/s |
|[IO.File]::ReadAllBytes    |00:00:00.015705|2.05x        |6367.24/s |
|Get-Content -Raw           |00:00:00.073394|9.58x        |1362.51/s |
|Get-Content                |00:00:00.094433|12.32x       |1058.94/s |
