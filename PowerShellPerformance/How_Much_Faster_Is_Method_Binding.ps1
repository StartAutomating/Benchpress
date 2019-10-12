#requires -Module Benchpress

Measure-Benchmark -Technique @{
    ParameterBinding = {
        function test-parambinding {
            param($target)
        }

        1..500 | ForEach-Object {test-parambinding $_}
    }

    MethodBinding    = {
        class MethodBinding {
            static TestBinding($target) {
            }
        }

        1..500 | ForEach-Object {[MethodBinding]::TestBinding($_)}
    }
}
