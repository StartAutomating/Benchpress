---
layout: Benchmark

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 106334
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.23071759259259e-07
      TotalHours: 2.95372222222222e-06
      TotalMilliseconds: 10.6334
      TotalMinutes: 0.000177223333333333
      TotalSeconds: 0.0106334
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    Throughput: 9404.32975341847
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 159672
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.84805555555556e-07
      TotalHours: 4.43533333333333e-06
      TotalMilliseconds: 15.9672
      TotalMinutes: 0.00026612
      TotalSeconds: 0.0159672
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.50160814038783
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    Throughput: 6262.83881958014
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 195333
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.26079861111111e-07
      TotalHours: 5.42591666666667e-06
      TotalMilliseconds: 19.5333
      TotalMinutes: 0.000325555
      TotalSeconds: 0.0195333
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.83697594372449
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    Throughput: 5119.46266119908
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 668299
      Days: 0
      Hours: 0
      Milliseconds: 66
      Minutes: 0
      Seconds: 0
      TotalDays: 7.73494212962963e-07
      TotalHours: 1.85638611111111e-05
      TotalMilliseconds: 66.8299
      TotalMinutes: 0.00111383166666667
      TotalSeconds: 0.0668299
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 6.28490416987981
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1496.33622076346
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 839967
      Days: 0
      Hours: 0
      Milliseconds: 83
      Minutes: 0
      Seconds: 0
      TotalDays: 9.72184027777778e-07
      TotalHours: 2.33324166666667e-05
      TotalMilliseconds: 83.9967
      TotalMinutes: 0.001399945
      TotalSeconds: 0.0839967
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 7.89932664998966
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1190.52296102109
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2295
---
What Is The Fastest Way To Read A File
--------------------------------------
> @2295 Mhz


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.010633|1x           |9404.33/s |
|[IO.StreamReader].ReadToEnd|00:00:00.015967|1.5x         |6262.84/s |
|[IO.File]::ReadAllBytes    |00:00:00.019533|1.84x        |5119.46/s |
|Get-Content -Raw           |00:00:00.066829|6.28x        |1496.34/s |
|Get-Content                |00:00:00.083996|7.9x         |1190.52/s |
