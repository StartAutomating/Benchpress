---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      value: 00:00:00.0085532
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 11691.5306551934
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Static Constructors Only
    Time: 
      value: 00:00:00.0169834
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.98561941729411
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 5888.10250008832
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object PSObject -Property @{}
    Time: 
      value: 00:00:00.0208337
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.43577842211102
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 4799.91552148682
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object ; Add-Member
    Time: 
      value: 00:00:00.0327094
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.82422952812982
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 3057.22514017377
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object | Add-Member
    Time: 
      value: 00:00:00.0839439
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 9.81432680166487
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 1191.27178985013
    BenchmarkInput: System.Collections.Hashtable
  - Technique: PSCustomObject
    Time: 
      value: 00:00:00.0070320
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 14220.7053469852
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Static Constructors Only
    Time: 
      value: 00:00:00.0105974
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.50702502844141
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 9436.27682261687
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object PSObject -Property @{}
    Time: 
      value: 00:00:00.0167224
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.37804323094425
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 5980.00287040138
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object ; Add-Member
    Time: 
      value: 00:00:00.0442655
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 6.29486632536974
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 2259.0956839977
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object | Add-Member
    Time: 
      value: 00:00:00.1484330
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 21.1082195676906
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 673.70463441418
    BenchmarkInput: System.Collections.Hashtable
FileName: Creating Property Bags
ClockSpeed: 2095
---
Creating Property Bags
----------------------
> @2095 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.008553|1x           |11691.53/s|
|Static Constructors Only         |00:00:00.016983|1.99x        |5888.1/s  |
|New-Object PSObject -Property @{}|00:00:00.020833|2.44x        |4799.92/s |
|New-Object ; Add-Member          |00:00:00.032709|3.82x        |3057.23/s |
|New-Object \| Add-Member         |00:00:00.083943|9.81x        |1191.27/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.007032|1x           |14220.71/s|
|Static Constructors Only         |00:00:00.010597|1.51x        |9436.28/s |
|New-Object PSObject -Property @{}|00:00:00.016722|2.38x        |5980/s    |
|New-Object ; Add-Member          |00:00:00.044265|6.29x        |2259.1/s  |
|New-Object \| Add-Member         |00:00:00.148433|21.11x       |673.7/s   |
