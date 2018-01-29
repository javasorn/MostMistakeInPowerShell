<#
blog Adam Bertram https://4sysops.com/archives/exceptions-and-errors-in-powershell/
#>
$DebugPreference = "Continue"
#$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

Describe "Non-terminating errors" {
    function Do-Foo {
        Write-Error 'An error occurred'
    }
    Do-Foo
    Write-Debug "End script"
}
Describe "Terminating errors" {
    $string = 'foo'
    if ($string -eq 'foo') {
        throw 'string equaled foo when it was not supposed to'
    }
    Write-Debug "End script"
}
Describe "Terminating errors try/catch blocks" {
    try {
        $string = 'foo'
        if ($string -eq 'foo') {
            throw 'string equaled foo when it was not supposed to'
        }
        Write-Debug 'the string variable did not equal foo'
    } catch {
        Write-Debug 'we ended up in the catch block'
    }
}