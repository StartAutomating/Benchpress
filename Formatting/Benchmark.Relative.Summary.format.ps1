Write-FormatView -TypeName Benchmark.Relative.Summary, Deserialized.Benchmark.Relative.Summary -Property Technique, 
    Time, RelativeSpeed, Throughput -GroupByScript {
        $_.FileName + ' ' + $_.GroupName + $(if ($_.ClockSpeed) { '@~'+ $_.ClockSpeed+' Mhz'})
    } -GroupLabel 'Benchmark' -VirtualProperty @{
        Throughput = {[Math]::Round($_.Throughput,2).ToString() + "/s"}
        RelativeSpeed = { [Math]::Round($_.RelativeSpeed, 2).ToString() + 'x'}
        Time = { $_.Time.ToString().Substring(0,15) }
    }
