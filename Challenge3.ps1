Login-AzureRmAccount

Select-AzureRmSubscription -Subscription DEVSUB

#Command to get the details of VM and OS details
(Get-AzureRmVM -ResourceGroupName DEVRG -Name DEVVM  | Select-Object Name,OSProfile) | ConvertTo-Json

#command to get the details related to VM Disk and VM status
(Get-AzureRmVM -ResourceGroupName DEVRG -Name DEVVM  | Select-Object Name,OSProfile,Disks,Statuses) | ConvertTo-Json
