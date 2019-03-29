#requires -Module Benchpress
bench -Technique @{
    'ExecutionContextAndHashtable' = {
        $cmds = $ExecutionContext.InvokeCommand.GetCommands('*', 'Function,Cmdlet,Alias', $true)
        $cmdModules = @{}

        foreach ($_ in $cmds) {
            if (-not $_.Module) { continue } 
            if (-not $cmdModules[$_.Module.Name]) {
                $cmdModules[$_.Module.Name] = $_
            }
        }

        $cmdModules.Keys
    }
    'ExecutionContextAndArrayList' = {
            $cmds = $ExecutionContext.InvokeCommand.GetCommands('*', 'Function,Cmdlet,Alias', $true)
            $moduleNames = [Collections.ArrayList]::new()

            foreach ($_ in $cmds) {
                if (-not $_.Module.Name) { continue } 
                if ($moduleNames -notcontains $_.Module.Name) {
                    $null = $moduleNames.Add($_.Module.Name)
                }
            }
            $moduleNames
    }

    'Get-Module -ExpandProperty Name' = {
        $moduleNames = Get-Module | Select-Object -ExpandProperty Name
        $moduleNames
    }
    'foreach Get-Module' = {
        $moduleNames = foreach ($_ in Get-Module) {
            $_.Name
        }
        $moduleNames
    }

} -RepeatCount 10
