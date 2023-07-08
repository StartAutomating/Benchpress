$nums = 1..100 -as [string[]]

bench -Technique @{
    "Hashtables" = {
        $hashtable = @{}
        foreach ($n in $nums) {
            $hashtable[$n] = $n
        }
    }
    "Ordered" = {
        $out = [Ordered]@{}
        foreach ($n in $nums) {
            $out[$n] = $n
        }
    }
} -GroupName "Simple Inserts" -RepeatCount 1kb

bench -Technique @{
    "Hashtables" = {
        @{
            1 = 1
            2 = 2
            3 = 3
            4 = 4
        }
        
    }
    "Ordered" = {
        [Ordered]@{
            1 = 1
            2 = 2
            3 = 3
            4 = 4 
        }
        
    }
} -GroupName "Inline Values" -RepeatCount 1kb

bench -Technique @{
    "Hashtables" = {
        $ht = @{}
        $ht.1 = 1
        $ht.2 = 2
        $ht.3 = 3
        $ht.4 = 4
    }
    "Ordered" = {
        $o = [Ordered]@{}
        $o."1" = 1
        $o."2" = 2
        $o."3" = 3
        $o."4" = 4 
    }        
} -GroupName "Dotted Values" -RepeatCount 1kb

bench -Technique @{
    "Hashtables" = {
        $ht = @{}
        $ht[1] = 1
        $ht[2] = 2
        $ht[3] = 3
        $ht[4] = 4
    }
    "Ordered" = {
        $o = [Ordered]@{}
        $o["1"] = 1
        $o["2"] = 2
        $o["3"] = 3
        $o["4"] = 4 
    }        
} -GroupName "Indexed Values" -RepeatCount 1kb




