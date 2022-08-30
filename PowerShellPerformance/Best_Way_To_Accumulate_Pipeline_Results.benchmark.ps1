bench -Technique @{
    "Tee-Object" = { 
        & { 1..3 } | Tee-Object -Variable n 
    } 
    "Queue" = {
        $tq = [Collections.Queue]::new()
        & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
    }
    "Arraylist" = {
        $arrlist = [Collections.ArrayList]::new()
        & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
    }
    "Array" = {
        $outArray = @()
        & { 1..3 } | & { process { $outArray += $_; $_ } }
    }
}
