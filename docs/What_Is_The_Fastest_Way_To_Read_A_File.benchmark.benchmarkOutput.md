---
layout: Benchmark

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 59369
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.87141203703704e-08
      TotalHours: 1.64913888888889e-06
      TotalMilliseconds: 5.9369
      TotalMinutes: 9.89483333333333e-05
      TotalSeconds: 0.0059369
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 16843.8073742189
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 103408
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.19685185185185e-07
      TotalHours: 2.87244444444444e-06
      TotalMilliseconds: 10.3408
      TotalMinutes: 0.000172346666666667
      TotalSeconds: 0.0103408
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
    RelativeSpeed: 1.74178443295322
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 9670.43168807056
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 320737
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.7122337962963e-07
      TotalHours: 8.90936111111111e-06
      TotalMilliseconds: 32.0737
      TotalMinutes: 0.000534561666666667
      TotalSeconds: 0.0320737
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
    RelativeSpeed: 5.40243224578484
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 3117.81927248805
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 353111
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.08693287037037e-07
      TotalHours: 9.80863888888889e-06
      TotalMilliseconds: 35.3111
      TotalMinutes: 0.000588518333333333
      TotalSeconds: 0.0353111
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
    RelativeSpeed: 5.9477336657178
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 2831.97068343949
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 719153
      Days: 0
      Hours: 0
      Milliseconds: 71
      Minutes: 0
      Seconds: 0
      TotalDays: 8.32353009259259e-07
      TotalHours: 1.99764722222222e-05
      TotalMilliseconds: 71.9153
      TotalMinutes: 0.00119858833333333
      TotalSeconds: 0.0719153
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
    RelativeSpeed: 12.1132746045916
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1390.52468668002
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2793
---
What Is The Fastest Way To Read A File
--------------------------------------
> @2793 Mhz


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.005936|1x           |16843.81/s|
|[IO.StreamReader].ReadToEnd|00:00:00.010340|1.74x        |9670.43/s |
|Get-Content -Raw           |00:00:00.032073|5.4x         |3117.82/s |
|[IO.File]::ReadAllBytes    |00:00:00.035311|5.95x        |2831.97/s |
|Get-Content                |00:00:00.071915|12.11x       |1390.52/s |
