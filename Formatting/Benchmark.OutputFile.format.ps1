Write-FormatView -TypeName Benchmark.OutputFile -Action {
    $outputFileInfo = $_
    
    $outputLines = @(
    "---"
    "layout: Benchmark"
    "title: $($outputFileInfo.FileName)"    
    $outputFileInfo | ConvertTo-Json -Depth 10 | ConvertFrom-Json | Format-YAML
    "---"

    [Environment]::Newline

    foreach ($group in $outputFileInfo.Data | Group-Object GroupName) {
        Format-Markdown -Heading $group.Name -HeadingSize 3
        
        [Environment]::Newline

        $group.Group |            
            Select-Object Technique, @{
                Name='Time'
                Expression = {
                    $_.Time.ToString().Substring(0,15)
                }
            }, @{
                Name = 'RelativeSpeed'
                Expression = {
                    [Math]::Round($_.RelativeSpeed, 2).ToString() + 'x'
                }
            }, @{
                Name = 'Throughput'
                Expression = {
                    [Math]::Round($_.Throughput,2).ToString() + "/s"
                }
            } |
            Format-Markdown -MarkdownTable

        [Environment]::Newline
    }
    )

    $outputLines -join [Environment]::Newline
}
