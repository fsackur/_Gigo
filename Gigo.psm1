[ValidateSet('Capture', 'Run')]
[string]$Script:Mode = 'Run'


$PackagePath = Join-Path $PSScriptRoot 'Packages'
$PackagePath | Get-ChildItem -Exclude '*beaut*' | select -ExpandProperty FullName | Import-Module

$FunctionPath = Join-Path $PSScriptRoot 'Functions'
$FunctionPath | Get-ChildItem | select -ExpandProperty FullName | foreach {. $_}
#. $PSScriptRoot\Initialize-TraceDB.ps1

