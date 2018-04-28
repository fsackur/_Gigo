function Trace-GigoInvocation
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [scriptblock]$Scriptblock
    )


    $TraceID = Open-GigoTrace -Command $CommandName -BoundParameters $Parameters

    Set-GigoIrmTracing -TraceId $TraceID -On

    try
    {
        $Result = & $Scriptblock
    }
    catch
    {
        $Exception = $_
    }

    Set-GigoIrmTracing -Off

    Close-GigoTrace -Id $TraceID
}