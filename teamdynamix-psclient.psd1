#
# Module manifest for module 'teamdynamix-psclient'
#
# Generated by: dliboon@nccu.edu
#
# Generated on: 4/19/2016
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'teamdynamix-psclient.psm1'

# Version number of this module.
ModuleVersion = '1.0.0.6'

# ID used to uniquely identify this module
GUID = 'fe4ae3cc-e9f3-4476-8291-4561217a0e52'

# Author of this module
Author = 'dliboon@nccu.edu'

# Company or vendor of this module
CompanyName = 'North Carolina Central University'

# Copyright statement for this module
Copyright = '(c) 2016 North Carolina Central University. All rights reserved.'

# Description of the functionality provided by this module
Description = 'PowerShell module for interacting with the TeamDynamix Web API 9.3'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module
FunctionsToExport = 'Set-TdpscPersonFunctionalRole', 'Set-TdpscPerson', 
               'Set-TdpscLocationRoom', 'Set-TdpscLocation', 
               'Set-TdpscApiBaseAddress', 'Set-TdpscAccount', 
               'Remove-TdpscPersonGroup', 'Remove-TdpscPersonFunctionalRole', 
               'Remove-TdpscLocationRoom', 'Remove-TdpscAttachment', 
               'New-TdpscPersonImport', 'New-TdpscPerson', 'New-TdpscLocationRoom', 
               'New-TdpscLocation', 'New-TdpscAuthLoginSso', 
               'New-TdpscAuthLoginAdmin', 'New-TdpscAuthLogin', 
               'New-TdpscAuthCached', 'New-TdpscAuth', 'New-TdpscAccount', 
               'Get-TdpscRestrictedPersonSearch', 'Get-TdpscPersonSearch', 
               'Get-TdpscPersonGroup', 'Get-TdpscPersonFunctionalRole', 
               'Get-TdpscPerson', 'Get-TdpscLocation', 'Get-TdpscGroup', 
               'Get-TdpscCustomAttribute', 'Get-TdpscAuth', 'Get-TdpscAttachment', 
               'Get-TdpscApiBaseAddress', 'Get-TdpscAccount', 'Set-TdpscPersonGroup'

# Cmdlets to export from this module
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module
AliasesToExport = 'Get-TdpscLoginSession', 'New-TdpscCachedLoginSession', 
               'New-TdpscLoginAdminSession', 'New-TdpscLoginSession'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable


    # TDWebApiBaseAddress
    TDWebApiBaseAddress = ''

    # TDWebApiBearer
    TDWebApiBearer = ''

    # TDReturnApiType
    TDReturnApiType = 'False'

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

