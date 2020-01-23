#requires -Module Benchpress

$valueList = 1..10000
$linqWhere = [Func[object,bool]]{param($_) $_ -gt 1000}
$whereGt1000 = { $_ -gt 1000 } 

Measure-Benchmark -GroupName "Filtering Values" -RepeatCount 10 -Technique @{
    "ForEach Loop" = {
        foreach ($v in $valueList) { if ($v -gt 1000) { $v } }
    }
    "Where-Object Script (Positional)" = {
        $valueList | Where-Object $whereGt1000
    }
    "Pipe to ScriptBlock" = {
        $valueList | & { process { if ($_ -gt 1000) { $_ } } }
    }
    "Operator Filter (Assumed Array)" = {
        # VERY DANGEROUS if $valueList isn't already typed as an array, it will
        # return $true/$false instead of acting as a filter on single objects
        $valueList -gt 1000
    }
    "Operator Filter (Explicit Array)" = {
        # Safe for arrays or single values
        @($valueList) -gt 1000
    }
    ".Where Method" = {
        $valueList.Where({$_ -gt 1000})
    }
    "Linq.Enumerable::Where" = {
        [System.Linq.Enumerable]::Where($valueList, $linqWhere)
    }
}


$objectList = foreach ($v in 1..100000) { [pscustomobject]@{Value=$v} }

Measure-Benchmark -GroupName "Filtering by Property Values" -RepeatCount 10 -Technique @{
    "ForEach Loop" = {
        foreach ($o in $objectList) { if ($o.Value -gt 1000) { $o } }
    }
    "Where-Object Property (Positional)" = {
        $objectList | Where-Object Value -GT 1000
    }
    "Pipe to ScriptBlock" = {
        $objectList | & { process { if ($_.Value -gt 1000) { $_ } } }
    }
    ".Where Method" = {
        $objectList.Where({$_.Value -gt 1000})
    }
}

$IsOdd = { process { if ($_ % 2) { $_ }  } } 
filter IsOdd { if ($_ % 2) { $_ }  } 
Measure-Benchmark -GroupName 'Filtering a Pipeline' -Technique @{
    "InlineScriptBlock" = {
        1..10 | & { process { if ($_ % 2) { $_ }  } }
    }
    ScriptBlockVariable = { 
        1..10 | 
            & $IsOdd 
    }
    'DotInline' = {
        1..10 | . { process { if ($_ % 2) { $_ }  } }
    }
    'DotScriptBlockVariable' = {
        1..10 | . $IsOdd
    }
    Filter = {
        1..10 | isOdd        
    }
    WhereObject = {
        1..10 | ? $IsOdd
    }
}
