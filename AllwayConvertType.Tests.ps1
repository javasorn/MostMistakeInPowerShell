#Allway convert type to Array
$DebugPreference = "Continue"
Set-StrictMode -Version Latest

Describe "Allway convert type to Array 1" {
    $myArray1 = @()
    $myArray1 = "A", "B"
    Write-Debug $myArray1.GetType()
}
Describe "Allway convert type to Array 2" {
    $myArray2 = @()
    $myArray2 = "A"
    Write-Debug $myArray2.GetType()
}
Describe "count in Array" {
    $myArray3 = @()
    $myArray3 = "A", "B"
    Write-Debug $myArray3.count
}
Describe "count in non Array" {
    $myArray4 = @()
    #$myArray4 = "A", "B"
    Write-Debug @($myArray4).count
}