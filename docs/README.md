## Benchpress is a quick and easy benchmarking toolkit for PowerShell

It helps you write and manage simple comparative benchmarks.
You can use this information to make your scripts more efficient.

For instance, here's a quick Benchmark to determine if you should use Foreach statement or foreach object

~~~PowerShell
Measure-Benchmark -Technique @{
    ForeachObject = { 1..100 | Foreach-Object { $_ } }
    ForeachStatement = { foreach ($n in 1..100) { $n }}
}
~~~

Benchmark comes with a number of PowerShell Performance experiments.


|Name                                                                                                                                                                                                         |Results                                                                                                                                           |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
|[Best Way To Accumulate Pipeline Results (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Best_Way_To_Accumulate_Pipeline_Results.benchmark.ps1)                    |[Best Way To Accumulate Pipeline Results (results)](Best_Way_To_Accumulate_Pipeline_Results.benchmark.benchmarkOutput.md)                    |
|[Checking If A File Exists (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Checking_If_A_File_Exists.benchmark.ps1)                                                |[Checking If A File Exists (results)](Checking_If_A_File_Exists.benchmark.benchmarkOutput.md)                                                |
|[Comparing Command Lookup (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Comparing_Command_Lookup.benchmark.ps1)                                                  |[Comparing Command Lookup (results)](Comparing_Command_Lookup.benchmark.benchmarkOutput.md)                                                  |
|[Creating Property Bags (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Creating_Property_Bags.benchmark.ps1)                                                      |[Creating Property Bags (results)](Creating_Property_Bags.benchmark.benchmarkOutput.md)                                                      |
|[Different Ways To Iterate (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Different_Ways_To_Iterate.benchmark.psd1)                                               |[Different Ways To Iterate (results)](Different_Ways_To_Iterate.benchmark.benchmarkOutput.md)                                                |
|[Different Ways To Set Many Variables (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Different_Ways_To_Set_Many_Variables.benchmark.psd1)                         |[Different Ways To Set Many Variables (results)](Different_Ways_To_Set_Many_Variables.benchmark.benchmarkOutput.md)                          |
|[How Much Faster Is Piping To A ScriptBlock (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/How_Much_Faster_Is_Piping_To_A_ScriptBlock.benchmark.psd1)             |[How Much Faster Is Piping To A ScriptBlock (results)](How_Much_Faster_Is_Piping_To_A_ScriptBlock.benchmark.benchmarkOutput.md)              |
|[How Much Faster Is Splatting (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/How_Much_Faster_Is_Splatting.benchmark.ps1)                                          |[How Much Faster Is Splatting (results)](How_Much_Faster_Is_Splatting.benchmark.benchmarkOutput.md)                                          |
|[How Much Faster Is The Static Constructor (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/How_Much_Faster_Is_The_Static_Constructor.benchmark.psd1)               |[How Much Faster Is The Static Constructor (results)](How_Much_Faster_Is_The_Static_Constructor.benchmark.benchmarkOutput.md)                |
|[Is Using Faster (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Is_Using_Faster.benchmark.ps1)                                                                    |[Is Using Faster (results)](Is_Using_Faster.benchmark.benchmarkOutput.md)                                                                    |
|[multithreading (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/multithreading.benchmark.ps1)                                                                      |[multithreading (results)](multithreading.benchmark.benchmarkOutput.md)                                                                      |
|[Random Number Generation (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Random_Number_Generation.benchmark.ps1)                                                  |[Random Number Generation (results)](Random_Number_Generation.benchmark.benchmarkOutput.md)                                                  |
|[Should I Include The System Namespace (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Should_I_Include_The_System_Namespace.benchmark.ps1)                        |[Should I Include The System Namespace (results)](Should_I_Include_The_System_Namespace.benchmark.benchmarkOutput.md)                        |
|[ToString Or Not ToString (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/ToString_Or_Not_ToString.benchmark.ps1)                                                  |[ToString Or Not ToString (results)](ToString_Or_Not_ToString.benchmark.benchmarkOutput.md)                                                  |
|[Ways To Hash A File (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Ways_To_Hash_A_File.benchmark.ps1)                                                            |[Ways To Hash A File (results)](Ways_To_Hash_A_File.benchmark.benchmarkOutput.md)                                                            |
|[What Is The Fastest Way To Concatenate (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/What_Is_The_Fastest_Way_To_Concatenate.benchmark.json)                     |[What Is The Fastest Way To Concatenate (results)](What_Is_The_Fastest_Way_To_Concatenate.benchmark.benchmarkOutput.md)                      |
|[What Is The Fastest Way To Filter (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/What_Is_The_Fastest_Way_To_Filter.benchmark.ps1)                                |[What Is The Fastest Way To Filter (results)](What_Is_The_Fastest_Way_To_Filter.benchmark.benchmarkOutput.md)                                |
|[What Is The Fastest Way To Get All Loaded Modules (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/What_Is_The_Fastest_Way_To_Get_All_Loaded_Modules.benchmark.ps1)|[What Is The Fastest Way To Get All Loaded Modules (results)](What_Is_The_Fastest_Way_To_Get_All_Loaded_Modules.benchmark.benchmarkOutput.md)|
|[What Is The Fastest Way To Sort (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/What_Is_The_Fastest_Way_To_Sort.benchmark.ps1)                                    |[What Is The Fastest Way To Sort (results)](What_Is_The_Fastest_Way_To_Sort.benchmark.benchmarkOutput.md)                                    |
|[Whats In A Quote (source)](https://github.com/StartAutomating/Benchpress/tree/master/PowerShellPerformance/Whats_In_A_Quote.benchmark.ps1)                                                                  |[Whats In A Quote (results)](Whats_In_A_Quote.benchmark.benchmarkOutput.md)                                                                  |



You can run all these built-in benchmarks by running.

~~~PowerShell
Checkpoint-Benchmark -ModuleName Benchpress
~~~




