@{
    Technique = 
        @{
            "Simple Assignment" = @'
                $a = 'b'
                $c = 'd'
                $e = 'f'
                $h = 'i'
'@ 
            'Multiple Assignment' = @'
                $a, $c, $e, $h = 'b','d','f','i'
'@
            'ExecutionContext' = @'
                $ExecutionContext.SessionState.PSVariable.Set('a', 'b')
                $ExecutionContext.SessionState.PSVariable.Set('c', 'd')
                $ExecutionContext.SessionState.PSVariable.Set('e', 'f')
                $ExecutionContext.SessionState.PSVariable.Set('h', 'i')
'@
            'SetFromSplat' = @'
                foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                    $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                }
'@
            'Set-Variable' = @'
                Set-Variable a b
                Set-Variable c d
                Set-Variable e f
                Set-Variable h i
'@
        }
    RepeatCount = 1kb
} 
