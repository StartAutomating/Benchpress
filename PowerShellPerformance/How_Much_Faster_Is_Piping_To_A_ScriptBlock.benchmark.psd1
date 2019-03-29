@{
    Technique = 
        @{
            ScriptBlock = '
                1..100 | &{
                    process { $_}
                }
            '
            ScriptBlockWithPipelineParameter = '
            1..100 | & {
                param([Parameter(ValueFromPipeline=$true)]$inputobject)
                process { $inputObject } 
            }
            '
            DotScriptBlock = '
                1..100 | . {
                    process { $_ } 
                }
            '
            
            ForeachObject = '
                1..100 | % {
                    $_
                }            
            '
        }
    RepeatCount = 1kb 
}