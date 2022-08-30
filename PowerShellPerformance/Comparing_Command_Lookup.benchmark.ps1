#requires -Module Benchpress
<#
.SYNOPSIS
    Compares ways to look up a command
.DESCRIPTION
    Compares the performance of various ways to look up a command in PowerShell.
#>

bench -Technique @{
    "Get-Command" = {
        Get-Command git -CommandType Application
    }
    '$executionContext' = {
        $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
    }
} -GroupName Applications

bench -Technique @{
    "Get-Command" = {
        Get-Command Get-Process -CommandType Cmdlet
    }

    '$executionContext' = {
        $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
    }
} -GroupName Cmdlets

bench -Technique @{
    "Get-Command" = {
        Get-Command gps -CommandType Alias
    }
    
    '$executionContext' = {
        $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
    }
} -GroupName Aliases

bench -Technique @{
    "Get-Command" = {
        Get-Command Measure-Benchmark -CommandType Function
    }
    
    '$executionContext' = {
        $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
    }
} -GroupName Function

bench -Technique @{
    "Get-Command" = {
        Get-Command Measure-Benchmark
    }
    
    '$executionContext' = {
        $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
    }
} -GroupName All


bench -Technique @{
    "Get-Command" = {
        Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
    }
    '$executionContext' = {
        $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
    }
} -GroupName WildcardMiss