$pesterLoaded? = Import-Module Pester -Global -PassThru
if (-not $pesterLoaded?) { return } 
describe "Benchpress" {
    context "Get-Benchmark" {
        it "Can get it's own benchmarks" {
            Get-Benchmark -ModuleName Benchpress
        }
    }
    context "Measure-Benchmark" {
        it "Can time a command" {
            Measure-Benchmark -Command Get-Process -RepeatCount 10
        }
        it "Can time a command with parameters" {
            Measure-Benchmark -Command Get-Process -Parameter @{Name='PowerShell*'} -RepeatCount 10
        }
        it "Can time a script block" {
            Measure-Benchmark -ScriptBlock { ' ' } -RepeatCount 100
        }
        it "Can compare timings" {
            Measure-Benchmark -Technique @{
                AddStrings = {
                    'words ' + 'in ' + 'a ' + 'sentance.'
                }
                JoinStrings = {
                    'words', 'in', 'a', 'sentance.' -join ' '
                }
                StringBuilder = {
                    $sb = [text.stringbuilder]::new()
                    $_ = $sb.Append('words ')
                    $_ = $sb.Append('in ')
                    $_ = $sb.Append('a ')
                    $_ = $sb.Append('sentance.')
                    $sb.ToString()
                }
            } -RepeatCount 10
        } 
    }
    context "Checkpoint-Benchmark" {
        it "Can check it's own benchmarks" {
            Checkpoint-Benchmark -ModuleName Benchpress
        }
    }
}
