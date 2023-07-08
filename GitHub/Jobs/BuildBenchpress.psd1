@{
    "runs-on" = "ubuntu-latest"    
    if = '${{ success() }}'
    steps = @(
        @{
            name = 'Check out repository'
            uses = 'actions/checkout@v2'
        }, 
        @{    
            name = 'Use PSSVG Action'
            uses = 'StartAutomating/PSSVG@main'
            id = 'PSSVG'
        },
        'RunPipeScript',
        'RunEZOut',        
        @{
            name = 'Use Benchpress (from master)'
            if   = '${{github.ref_name == ''master''}}'
            uses = 'StartAutomating/Benchpress@master'
            id = 'BenchpressMaster'
        },
        @{
            name = 'Use Benchpress (on branch)'
            if   = '${{github.ref_name != ''main'' && github.ref_name != ''master''}}'
            uses = './'
            id = 'BenchpressBranch'
        },                
        'PublishBenchmarks',
        'RunHelpOut',
        @{
            name = 'GitLogger'
            uses = 'GitLogging/GitLoggerAction@main'
            id = 'GitLogger'
        }

    )
}