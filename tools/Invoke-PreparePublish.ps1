<#
    Prepares module for publishing.
#>

#Requires -Version 3

Set-StrictMode -Version 3

$Script:DebugPreference       = 'SilentlyContinue'
$Script:VerbosePreference     = 'SilentlyContinue'

<#
(Get-help -Name '*tdpsc*' | Where-Object { $_.Category -eq 'Alias' } | ForEach-Object { "'$($_.Name)'" }) -join ', ' | Clip

(Get-help -Name '*tdpsc*' | Where-Object { $_.Category -eq 'Function' } | ForEach-Object { "'$($_.Name)'" }) -join ', ' | Clip
#>

$param = @{
    'Author'            = 'dliboon@nccu.edu'
    'CompanyName'       = 'North Carolina Central University'
    'Copyright'         = '(c) 2016 North Carolina Central University. All rights reserved.'
    'Description'       = 'PowerShell module for interacting with the TeamDynamix Web API 9.3'
    'AliasesToExport'   = 'Get-TdpscLoginSession', 'New-TdpscCachedLoginSession', 'New-TdpscLoginAdminSession', 'New-TdpscLoginSession'
    'CmdletsToExport'   = ''
    'FunctionsToExport' = 'Get-TdpscAccount', 'Get-TdpscApiBaseAddress', 'Get-TdpscAuth', 'Get-TdpscPerson', 'Get-TdpscPersonSearch', 'Get-TdpscRestrictedPersonSearch', 'New-TdpscAuth', 'New-TdpscAuthCached', 'New-TdpscAuthLogin', 'New-TdpscAuthLoginAdmin', 'New-TdpscAuthLoginSso', 'New-TdpscPersonImport', 'Set-TdpscApiBaseAddress', 'Set-TdpscPerson'
    'VariablesToExport' = ''
    'Guid'              = 'fe4ae3cc-e9f3-4476-8291-4561217a0e52'
    'ModuleVersion'     = '1.0.0.4'
    'Path'              = "$PSScriptRoot\..\teamdynamix-psclient.psd1"
    'PowerShellVersion' = '3.0'
    'PrivateData'       = @{
        'TDWebApiBaseAddress' = $null
        'TDWebApiBearer'      = $null
        'TDReturnApiType'     = 'False'
    }
    'RootModule'        = 'teamdynamix-psclient.psm1'
}

New-ModuleManifest @param

Set-Content -Path "$PSScriptRoot\..\teamdynamix-psclient.psd1" -Encoding ASCII -Value (Get-Content -Path "$PSScriptRoot\..\teamdynamix-psclient.psd1")

. "$PSScriptRoot\Export-TdWebApiTypes.ps1" | Out-File -FilePath "$PSScriptRoot\..\lib\tdtypes.internal.ps1"

. "$PSScriptRoot\Invoke-PSScriptAnalyzer.ps1"

. "$PSScriptRoot\Get-InstallFiles.ps1" -Path "$PSScriptRoot\..\" | Clip

Invoke-Pester -Script "$PSScriptRoot\.."
