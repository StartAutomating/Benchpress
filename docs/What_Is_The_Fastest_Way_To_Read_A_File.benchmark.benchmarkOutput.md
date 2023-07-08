---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 103795
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.20133101851852e-07
      TotalHours: 2.88319444444444e-06
      TotalMilliseconds: 10.3795
      TotalMinutes: 0.000172991666666667
      TotalSeconds: 0.0103795
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 9634.37545161135
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 111544
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.29101851851852e-07
      TotalHours: 3.09844444444444e-06
      TotalMilliseconds: 11.1544
      TotalMinutes: 0.000185906666666667
      TotalSeconds: 0.0111544
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
    RelativeSpeed: 1.07465677537454
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 8965.07207917952
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 323147
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.74012731481481e-07
      TotalHours: 8.97630555555556e-06
      TotalMilliseconds: 32.3147
      TotalMinutes: 0.000538578333333333
      TotalSeconds: 0.0323147
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
    RelativeSpeed: 3.11331952406185
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 3094.56686894819
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 360994
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.1781712962963e-07
      TotalHours: 1.00276111111111e-05
      TotalMilliseconds: 36.0994
      TotalMinutes: 0.000601656666666667
      TotalSeconds: 0.0360994
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
    RelativeSpeed: 3.47795173177899
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 2770.12914342067
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 643009
      Days: 0
      Hours: 0
      Milliseconds: 64
      Minutes: 0
      Seconds: 0
      TotalDays: 7.4422337962963e-07
      TotalHours: 1.78613611111111e-05
      TotalMilliseconds: 64.3009
      TotalMinutes: 0.00107168166666667
      TotalSeconds: 0.0643009
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
    RelativeSpeed: 6.19499012476516
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1555.18818554639
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2095
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.StreamReader].ReadToEnd|100        |00:00:00.010379|1x           |9634.38/s |
|[IO.File]::ReadAllBytes    |100        |00:00:00.011154|1.07x        |8965.07/s |
|Get-Content -Raw           |100        |00:00:00.032314|3.11x        |3094.57/s |
|[IO.File]::ReadAllText     |100        |00:00:00.036099|3.48x        |2770.13/s |
|Get-Content                |100        |00:00:00.064300|6.19x        |1555.19/s |
