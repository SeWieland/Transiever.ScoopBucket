#Requires -Version 5.1
#Requires -Modules @{ ModuleName = 'BuildHelpers'; ModuleVersion = '2.0.1' }
#Requires -Modules @{ ModuleName = 'Pester'; ModuleVersion = '5.2.0' }

$pesterConfig = New-PesterConfiguration -Hashtable @{
    Run    = @{
        Path     = "$PSScriptRoot/.."
        PassThru = $true
    }
    Output = @{
        Verbosity = 'Detailed'
    }
}
$result = Invoke-Pester -Configuration $pesterConfig
$failureCount = $result.FailedCount
foreach ($property in 'FailedBlocksCount', 'FailedContainersCount') {
    if ($result.PSObject.Properties.Name -contains $property) {
        $failureCount += $result.$property
    }
}
exit [Math]::Min($failureCount, 255)
