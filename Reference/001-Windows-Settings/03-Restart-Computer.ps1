# Restart the local computer
Restart-Computer

# Restart several computers including the local computer
Restart-Computer -ComputerName "Server01", "Server02", "localhost"

# Restart a remote computer
Restart-Computer -ComputerName "Server01" -Impersonation Anonymous -DcomAuthentication PacketIntegrity

# Restart a remote computer and wait
Restart-Computer -ComputerName "Server01" -Wait -For PowerShell -Timeout 300 -Delay 2

# Use the AsJob parameter of Restart-Computer to run the command as a background job.
# Store the resulting job object in the $j variable.
$j = Restart-Computer -ComputerName "Server01", "Server02" -AsJob
# Uses the pipeline operator to send the job object to the Receive-Job cmdlet, which gets the job results.
$j | Receive-Job

# All Properties
# Restart-Computer
#        [-WsmanAuthentication <String>]
#        [[-ComputerName] <String[]>]
#        [[-Credential] <PSCredential>]
#        [-Force]
#        [-Wait]
#        [-Timeout <Int32>]
#        [-For <WaitForServiceTypes>]
#        [-Delay <Int16>]
#        [-WhatIf]
#        [-Confirm]
#        [<CommonParameters>]

# Reference
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/restart-computer?view=powershell-6