# Get all properties of local or connected computer
Get-ComputerInfo

# Get specific properties of local or connected computer
# Example: Computer Name
Get-ComputerInfo -Property "CsCaption"
Get-ComputerInfo -Property "*Captio*"
# Get info
Get-ComputerInfo -Property "os*"
# Get only OS Name of local or connected computer
Get-ComputerInfo -Property "osName"

# All Properties
# Get-ComputerInfo
#    [[-Property] <String[]>]
#    [<CommonParameters>]

# Reference
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-computerinfo?view=powershell-6