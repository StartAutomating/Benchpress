---
layout: Benchmark

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 48967
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.66747685185185e-08
      TotalHours: 1.36019444444444e-06
      TotalMilliseconds: 4.8967
      TotalMinutes: 8.16116666666667e-05
      TotalSeconds: 0.0048967
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 20421.916801111
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 49677
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.74965277777778e-08
      TotalHours: 1.37991666666667e-06
      TotalMilliseconds: 4.9677
      TotalMinutes: 8.2795e-05
      TotalSeconds: 0.0049677
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.01449956092879
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 20130.0400587797
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 89574
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03673611111111e-07
      TotalHours: 2.48816666666667e-06
      TotalMilliseconds: 8.9574
      TotalMinutes: 0.00014929
      TotalSeconds: 0.0089574
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      $sb = [text.stringbuilder]::new()
                      $_ = $sb.Append('words ')
                      $_ = $sb.Append('in ')
                      $_ = $sb.Append('a ')
                      $_ = $sb.Append('sentance.')
                      $sb.ToString()
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.82927277554271
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 11163.953825887
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2594
---
What Is The Fastest Way To Concatenate
--------------------------------------
> @2594 Mhz


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|AddStrings   |00:00:00.004896|1x           |20421.92/s|
|JoinStrings  |00:00:00.004967|1.01x        |20130.04/s|
|StringBuilder|00:00:00.008957|1.83x        |11163.95/s|
