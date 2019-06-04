#requires -Module BenchPress

bench -Technique @{
    'New-Object PSObject -Property @{}' = {
        New-Object PSObject -Property @{
            a = 'b'
        }
    }
    'New-Object | Add-Member' = { 
        New-Object PSObject | 
            Add-Member NoteProperty a b -PassThru
    }
    'PSCustomObject' = {
        [PSCustomObject]@{
            a='b'
        }
    }
    'New-Object ; Add-Member' = {
        $o = New-Object PSObject
        Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
    }
    'Static Constructors Only' = {
        $o = [PSObject]::new()
        $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
        $o
    }
} -GroupName '(1 property)'


bench -Technique @{
    'New-Object PSObject -Property @{}' = {
        New-Object PSObject -Property @{
            a = 'b'
            c = 'd'
        }
    }
    'New-Object | Add-Member' = { 
        New-Object PSObject | 
            Add-Member NoteProperty a b -PassThru |
            Add-Member NoteProperty c d -PassThru
    }
    'PSCustomObject' = {
        [PSCustomObject]@{
            a='b'
            c='d'
        }
    }
    'New-Object ; Add-Member' = {
        $o = New-Object PSObject
        Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
        Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
    }
    'Static Constructors Only' = {
        $o = [PSObject]::new()
        $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
        $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('c','d'))
        $o
    }
} -GroupName '(2 properties)'