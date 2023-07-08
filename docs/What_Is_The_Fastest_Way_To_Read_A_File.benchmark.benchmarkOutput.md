---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 64906
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.51226851851852e-08
      TotalHours: 1.80294444444444e-06
      TotalMilliseconds: 6.4906
      TotalMinutes: 0.000108176666666667
      TotalSeconds: 0.0064906
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    Throughput: 15406.8961267063
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 111824
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.29425925925926e-07
      TotalHours: 3.10622222222222e-06
      TotalMilliseconds: 11.1824
      TotalMinutes: 0.000186373333333333
      TotalSeconds: 0.0111824
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.72286075247281
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    Throughput: 8942.62412362284
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 351075
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.06336805555556e-07
      TotalHours: 9.75208333333333e-06
      TotalMilliseconds: 35.1075
      TotalMinutes: 0.000585125
      TotalSeconds: 0.0351075
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 5.40897605768342
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    Throughput: 2848.39421775974
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 433887
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.02184027777778e-07
      TotalHours: 1.20524166666667e-05
      TotalMilliseconds: 43.3887
      TotalMinutes: 0.000723145
      TotalSeconds: 0.0433887
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 6.68485193972822
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    Throughput: 2304.74754947717
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 785818
      Days: 0
      Hours: 0
      Milliseconds: 78
      Minutes: 0
      Seconds: 0
      TotalDays: 9.09511574074074e-07
      TotalHours: 2.18282777777778e-05
      TotalMilliseconds: 78.5818
      TotalMinutes: 0.00130969666666667
      TotalSeconds: 0.0785818
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 12.1070163004961
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1272.55929490035
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2594
---


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.006490|1x           |15406.9/s |
|[IO.StreamReader].ReadToEnd|00:00:00.011182|1.72x        |8942.62/s |
|Get-Content -Raw           |00:00:00.035107|5.41x        |2848.39/s |
|[IO.File]::ReadAllBytes    |00:00:00.043388|6.68x        |2304.75/s |
|Get-Content                |00:00:00.078581|12.11x       |1272.56/s |
