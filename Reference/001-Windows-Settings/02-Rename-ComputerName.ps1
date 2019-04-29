# Rename the local computer name
Rename-Computer -NewName "dc01"

# Rename the remote computer name
Rename-Computer -ComputerName "name-or-ip" -NewName "dc01"

# Rename the local computer name connected to a domain
Rename-Computer -NewName "Server044" -DomainCredential Domain01\Admin01 -Restart

# All Properties
# Rename-Computer
#       [-ComputerName <String>]
#       [-PassThru]
#       [-DomainCredential <PSCredential>]
#       [-LocalCredential <PSCredential>]
#       [-NewName] <String>
#       [-Force]
#       [-Restart]
#       [-WsmanAuthentication <String>]
#       [-WhatIf]
#       [-Confirm]
#       [<CommonParameters>]


# Reference
# https://docs.microsoft.com/en-us/powershell/module/Microsoft.PowerShell.Management/Rename-Computer?view=powershell-6