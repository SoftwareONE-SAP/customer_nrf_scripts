# suk4vtsapapp16 Variables
$resourceGroupName = "rg-gpms-non-prod-ukwest-qa1-epoch"
$vmName = "suk4vtsapapp16"
$logFile = "$vmName-disk-swap.log"

# Function to log and display messages
function Log-Message {
    param (
        [string]$message
    )
    Write-Output $message
    Add-Content -Path $logFile -Value $message
}

# Step 1: Check for OS disk with format "md-$vmName-osdisk" and its attachment status
Log-Message "Checking for OS disk 'md-$vmName-osdisk' in resource group '$resourceGroupName'."
$osDiskName = "md-$vmName-osdisk"
$osDisk = Get-AzDisk -ResourceGroupName $resourceGroupName | Where-Object { $_.Name -eq $osDiskName }

if ($osDisk -ne $null) {
    Log-Message "Found OS disk: '$osDiskName'."

    # Check if the disk is attached to the VM
    $vm = Get-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
    if ($vm.StorageProfile.OsDisk.ManagedDisk.Id -eq $osDisk.Id) {
        Log-Message "The disk '$osDiskName' is currently attached to the VM '$vmName'. No action needed."
        exit
    } else {
        Log-Message "The disk '$osDiskName' is not attached to the VM '$vmName'. The disk needs to be deleted."
        # Delete the disk
        exit
    }
} else {
    Log-Message "No OS disk with the name '$osDiskName' found. Proceeding with snapshot creation."
}

# Step 2: Snapshot the OS disk of the VM
$vm = Get-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
$currentOsDiskName = $vm.StorageProfile.OsDisk.Name
$snapshotName = "md-$vmName-osdisk-snapshot"

Log-Message "Creating snapshot '$snapshotName' from current OS disk '$currentOsDiskName'."

$snapshotConfig = New-AzSnapshotConfig -SourceUri $vm.StorageProfile.OsDisk.ManagedDisk.Id -Location $vm.Location -CreateOption Copy
$snapshot = New-AzSnapshot -ResourceGroupName $resourceGroupName -SnapshotName $snapshotName -Snapshot $snapshotConfig

Log-Message "Snapshot created: $($snapshot.Id)"

# Step 3: Stop the VM
Log-Message "Stopping VM '$vmName'."
Stop-AzVM -ResourceGroupName $resourceGroupName -Name $vmName -Force
Log-Message "VM '$vmName' stopped."

# Step 4: Swap the current OS disk for the snapshot one
Log-Message "Swapping OS disk to snapshot '$snapshotName'."

$snapshot = Get-AzSnapshot -ResourceGroupName $resourceGroupName -SnapshotName $snapshotName
$newOsDiskName = "md-$vmName-new-osdisk"
$osDiskConfig = New-AzDiskConfig -Location $vm.Location -SourceResourceId $snapshot.Id -CreateOption Copy
$newOsDisk = New-AzDisk -ResourceGroupName $resourceGroupName -DiskName $newOsDiskName -Disk $osDiskConfig

$vm.StorageProfile.OsDisk.ManagedDisk.Id = $newOsDisk.Id
Update-AzVM -ResourceGroupName $resourceGroupName -VM $vm
Log-Message "OS disk swapped to '$newOsDisk.Id'."

# Step 5: Restart the VM
Log-Message "Starting VM '$vmName'."
Start-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
Log-Message "VM '$vmName' started."

Log-Message "Disk swap completed successfully."
