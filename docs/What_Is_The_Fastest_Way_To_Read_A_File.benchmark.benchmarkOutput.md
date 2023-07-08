---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 63820
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.38657407407407e-08
      TotalHours: 1.77277777777778e-06
      TotalMilliseconds: 6.382
      TotalMinutes: 0.000106366666666667
      TotalSeconds: 0.006382
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 15669.0692572861
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 107626
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2456712962963e-07
      TotalHours: 2.98961111111111e-06
      TotalMilliseconds: 10.7626
      TotalMinutes: 0.000179376666666667
      TotalSeconds: 0.0107626
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.68639924788468
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 9291.43515507405
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 232323
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.68892361111111e-07
      TotalHours: 6.45341666666667e-06
      TotalMilliseconds: 23.2323
      TotalMinutes: 0.000387205
      TotalSeconds: 0.0232323
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 3.64028517706048
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 4304.35213043909
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 345304
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 3.99657407407407e-07
      TotalHours: 9.59177777777778e-06
      TotalMilliseconds: 34.5304
      TotalMinutes: 0.000575506666666667
      TotalSeconds: 0.0345304
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 5.41059229081793
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 2895.99888793643
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 585731
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.77929398148148e-07
      TotalHours: 1.62703055555556e-05
      TotalMilliseconds: 58.5731
      TotalMinutes: 0.000976218333333333
      TotalSeconds: 0.0585731
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 9.17785960513945
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1707.26835356162
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2594
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |100        |00:00:00.006382|1x           |15669.07/s|
|[IO.StreamReader].ReadToEnd|100        |00:00:00.010762|1.69x        |9291.44/s |
|[IO.File]::ReadAllBytes    |100        |00:00:00.023232|3.64x        |4304.35/s |
|Get-Content -Raw           |100        |00:00:00.034530|5.41x        |2896/s    |
|Get-Content                |100        |00:00:00.058573|9.18x        |1707.27/s |
