@{
    "runs-on" = "ubuntu-latest"
    steps = @('Checkout','UseBenchpressAction', 'PublishBenchmarks')
}