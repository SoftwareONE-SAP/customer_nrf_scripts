# Define your list of VM names
$vmList = @(
    "SUK3VDSAPAPP01","SUK3VDSAPAPP02","SUK3VDSAPAPP03","SUK3VDSAPAPP05",
    "SUK3VDSAPHANA01","SUK3VDSAPHANA02","SUK3VDSAPASE01","SUK3VDSAPSQL01",
    "SUK3VDSAPASE02","SUK4VTSAPAPP01","SUK4VTSAPAPP02","SUK4VTSAPAPP03",
    "SUK4VTSAPAPP04","SUK4VTSAPAPP05","SUK4VTSAPAPP06","SUK4VTSAPAPP08",
    "SUK4VTSAPAPP09","SUK4VTSAPAPP10","SUK4VDSAPAPP21","SUK4VDSAPAPP22",
    "SUK4VDSAPAPP23","SUK4VDSAPAPP24","SUK4VDSAPAPP25","SUK4VDSAPAPP26",
    "SUK4VTSAPNFS01","SUK4VTSAPHANA01","SUK4VTSAPHANA02","SUK4VTSAPASE01",
    "SUK4VTSAPASE02","SUK4VTSAPASE03","SUK4VTSAPASE04","SUK4VDSAPHANA03",
    "SUK4VDSAPASE05","SUK4VDSAPASE06","SUK4VDSAPASE07","SUK4CTSAPAPP31",
    "SUK4CTSAPAPP32","SUK4VTSAPAPP33","SUK4VTSAPAPP34","SUK4VTSAPAPP35",
    "SUK4VTSAPAPP36","SUK4VTSAPAPP37","SUK4VTSAPAPP38","SUK4CTSAPAPP39",
    "SUK4CTSAPAPP40","SUK4VTSAPAPP41","SUK4VTSAPAPP42","SUK4CTSAPAPP43",
    "SUK4CTSAPAPP44","SUK4VTSAPAPP45","SUK4VTSAPAPP46","SUK4VTSAPAPP47",
    "SUK4VTSAPAPP48","SUK4VTSAPAPP49","SUK4CTSAPAPP51","SUK4CTSAPAPP52",
    "SUK4VTSAPAPP53","SUK4VTSAPAPP54","SUK4VTSAPAPP60","SUK4VTSAPAPP67",
    "SUK4VTSAPAPP68","SUK4VPSAPAPP51","SUK4VPSAPAPP52","SUK4VPSAPAPP53",
    "suk4vtsaphana10","suk4vtsaphana12","SUK4VTSAPASE11","SUK4VTSAPASE12",
    "SUK4VTSAPASE13","SUK4VPSAPASE51","SUK4VPSAPASE52","SUK4VPSAPASE53",
    "SUK4VPSAPASE54"
)

# Initialize an array to hold the results
$results = @()

# Loop through each VM in the list
foreach ($vmName in $vmList) {
    # Get the VM details using Azure CLI
    $vmDetails = az vm list --query "[?name=='$vmName'].[name, resourceGroup]" -o json | ConvertFrom-Json

    # Check if the VM exists
    if ($vmDetails) {
        foreach ($vm in $vmDetails) {
            $results += [PSCustomObject]@{
                Name          = $vm[0]
                ResourceGroup = $vm[1]
            }
        }
    } else {
        Write-Warning "VM $vmName not found"
    }
}

# Output the results
$results | Format-Table -AutoSize

# Optionally, export the results to a CSV file
$results | Export-Csv -Path "./VMs_with_ResourceGroups.csv" -NoTypeInformation
