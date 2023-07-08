#require -Module Benchpress
$myScript = $MyInvocation.MyCommand.ScriptBlock.File

$techniques = @{
    DotNet = { 
        [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
    }
    GetFileHash = {
        @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
    }
    CertUtil = {
        @(certutil.exe -hashfile "$myScript")[1]
    }
}

if ($PSVersionTable.Platform -and $PSVersionTable.Platform -notlike 'Win*') {
    $techniques.Remove('CertUtil')
}

bench $techniques -RepeatCount 100
