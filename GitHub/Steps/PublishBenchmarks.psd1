@{
    name = 'PublishBenchmarks'
    uses = 'actions/upload-artifact@v2'
    with = @{
        name = 'Benchmarks'
        path = '**.clixml'
    }
    if = '${{always()}}'
}
