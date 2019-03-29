Import-Module Benchpress -Global

$splat = @{MemberType='NoteProperty';Name='Test';Value=1;Passthru=$true;Force=$true;InputObject=[PSObject]::new()}

bench -Technique ([Ordered]@{
    Splatting = {
        Add-Member @splat 
    }
    Named = {
        Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
    }
    Piped = {
        [PSObject]::new() | 
            Add-Member -MemberType NoteProperty -Name Test -Value 1
    }
    Positional = {
        Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
    }
}) -RepeatCount 1kb -Detailed
