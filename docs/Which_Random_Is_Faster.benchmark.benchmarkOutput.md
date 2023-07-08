---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 645173
      Days: 0
      Hours: 0
      Milliseconds: 64
      Minutes: 0
      Seconds: 0
      TotalDays: 7.46728009259259e-07
      TotalHours: 1.79214722222222e-05
      TotalMilliseconds: 64.5173
      TotalMinutes: 0.00107528833333333
      TotalSeconds: 0.0645173
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        GroupName: RandomLetters
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 15871.7119284285
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: Guid
    Time: 
      Ticks: 657147
      Days: 0
      Hours: 0
      Milliseconds: 65
      Minutes: 0
      Seconds: 0
      TotalDays: 7.60586805555556e-07
      TotalHours: 1.82540833333333e-05
      TotalMilliseconds: 65.7147
      TotalMinutes: 0.001095245
      TotalSeconds: 0.0657147
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        GroupName: RandomLetters
    RelativeSpeed: 1.01855936314756
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 15582.5104580862
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1155893
      Days: 0
      Hours: 0
      Milliseconds: 115
      Minutes: 0
      Seconds: 0
      TotalDays: 1.33783912037037e-06
      TotalHours: 3.21081388888889e-05
      TotalMilliseconds: 115.5893
      TotalMinutes: 0.00192648833333333
      TotalSeconds: 0.1155893
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        GroupName: RandomLetters
    RelativeSpeed: 1.79160163243037
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 8858.95147734263
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 612830
      Days: 0
      Hours: 0
      Milliseconds: 61
      Minutes: 0
      Seconds: 0
      TotalDays: 7.09293981481481e-07
      TotalHours: 1.70230555555556e-05
      TotalMilliseconds: 61.283
      TotalMinutes: 0.00102138333333333
      TotalSeconds: 0.061283
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        GroupName: RandomNumbers
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 16709.3647504202
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
  - Technique: Get-Random
    Time: 
      Ticks: 1118954
      Days: 0
      Hours: 0
      Milliseconds: 111
      Minutes: 0
      Seconds: 0
      TotalDays: 1.29508564814815e-06
      TotalHours: 3.10820555555556e-05
      TotalMilliseconds: 111.8954
      TotalMinutes: 0.00186492333333333
      TotalSeconds: 0.1118954
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: RandomNumbers
    RelativeSpeed: 1.82587993407633
    GroupName: RandomNumbers
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 9151.40390042844
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
FileName: Which Random Is Faster
ClockSpeed: 2793
---


### RandomLetters


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[BitConverter] + [Random]  |00:00:00.064517|1x           |15871.71/s|
|Guid                       |00:00:00.065714|1.02x        |15582.51/s|
|[BitConverter] + Get-Random|00:00:00.115589|1.79x        |8858.95/s |


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.061283|1x           |16709.36/s|
|Get-Random            |00:00:00.111895|1.83x        |9151.4/s  |
