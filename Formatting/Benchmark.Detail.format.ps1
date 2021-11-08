Write-FormatView -TypeName Benchmark.Detail, 
    Deserialized.Benchmark.Detail -Property Command, 
        RepeatCount, 
        TotalTime, 
        AverageTime,
        FastestTime,
        SlowestTime -Width 40 -AutoSize -Wrap -GroupByScript {
            $_.FileName + ' ' + $_.GroupName + $(if ($_.ClockSpeed) { '@~'+ $_.ClockSpeed+' Mhz'})
        } -GroupLabel 'Benchmark'