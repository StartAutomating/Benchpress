#requires -Module Benchpress
bench -Technique @{
    "-is operator" = {
        1 -is [int]
    }
    ".GetType() -eq" = {        
        (1).GetType() -eq [int]
    }
    ".GetType().Name" = {
        (1).GetType().Name -eq 'int32'
    }   
} -GroupName "Single Type comparison"


bench -Technique @{
    "-is operator" = {
        1 -is [double] -or 1 -is [int]
    }
    ".GetType() -eq" = {
        $one = 1
        $one.GetType() -eq [double] -or $one.GetType() -eq [int]
    }
    ".GetType().Name" = {
        (1).GetType().Name -in 'double','int32'
    }   
} -GroupName "Multitype comparison"