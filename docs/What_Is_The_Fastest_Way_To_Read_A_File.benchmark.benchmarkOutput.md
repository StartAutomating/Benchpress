---
layout: Benchmark

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 61638
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.13402777777778e-08
      TotalHours: 1.71216666666667e-06
      TotalMilliseconds: 6.1638
      TotalMinutes: 0.00010273
      TotalSeconds: 0.0061638
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    Throughput: 16223.7580713196
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 105329
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.21908564814815e-07
      TotalHours: 2.92580555555556e-06
      TotalMilliseconds: 10.5329
      TotalMinutes: 0.000175548333333333
      TotalSeconds: 0.0105329
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.70883221389403
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    Throughput: 9494.06146455392
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 127005
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.46996527777778e-07
      TotalHours: 3.52791666666667e-06
      TotalMilliseconds: 12.7005
      TotalMinutes: 0.000211675
      TotalSeconds: 0.0127005
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 2.06049839384795
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    Throughput: 7873.70575961576
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 591099
      Days: 0
      Hours: 0
      Milliseconds: 59
      Minutes: 0
      Seconds: 0
      TotalDays: 6.84142361111111e-07
      TotalHours: 1.64194166666667e-05
      TotalMilliseconds: 59.1099
      TotalMinutes: 0.000985165
      TotalSeconds: 0.0591099
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 9.58984717219897
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1691.76398538993
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 801169
      Days: 0
      Hours: 0
      Milliseconds: 80
      Minutes: 0
      Seconds: 0
      TotalDays: 9.27278935185185e-07
      TotalHours: 2.22546944444444e-05
      TotalMilliseconds: 80.1169
      TotalMinutes: 0.00133528166666667
      TotalSeconds: 0.0801169
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 12.9979720302411
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1248.17610266997
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2594
---
What Is The Fastest Way To Read A File
--------------------------------------
> @2594 Mhz


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.006163|1x           |16223.76/s|
|[IO.StreamReader].ReadToEnd|00:00:00.010532|1.71x        |9494.06/s |
|[IO.File]::ReadAllBytes    |00:00:00.012700|2.06x        |7873.71/s |
|Get-Content -Raw           |00:00:00.059109|9.59x        |1691.76/s |
|Get-Content                |00:00:00.080116|13x          |1248.18/s |
