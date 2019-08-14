#requires -Module Benchpress

$arr = 1..100 | Get-Random -Count 100


bench -Technique @{
    'Sort-Object' = {$arr | Sort-Object}
    'ArrayList.Sort' = { 
        $al = [collections.arraylist]::new($arr) 
        $al.Sort()
        $al
    }
}
 
