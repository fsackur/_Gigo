function Set-GigoMode
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateSet('Capture', 'Run')]
        [string]$Mode
    )

    $Script:Mode = $Mode
}