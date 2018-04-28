function Invoke-Gigo
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [scriptblock]$Scriptblock
    )

    if ((Get-GigoMode) -eq 'Capture')
    {
        Trace-GigoInvocation $Scriptblock
    }
    else
    {
        Compare-GigoTrace $Scriptblock    
    }
}