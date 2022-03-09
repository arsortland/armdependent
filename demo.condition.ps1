# $tenantid = "02feabb9-444e-4f66-9c13-6a8f04b75c2f"
# $subscriptionsid = "efc1e7b1-5729-4eea-b33e-12cc6b1c0183"
# $credentials = Get-Credential
# Connect-AzAccount -ServicePrincipal -Credential $credentials -TenantId $tenantid -Environment AzureCloud -SubscriptionId $subscriptionsid

$rg  ="iac-cond-drey"
New-AzResourceGroup -Name $rg -Location "West Europe" -Force

New-AzResourceGroupDeployment `
    -Name "new-iac-cond-demo" `
    -ResourceGroupName $rg `
    -TemplateFile '.\demo-condition.json'


    # Remove-AzResourceGroup -Name $rg -Force:$true
    # Remove-AzResourceGroup -Name iac-demo-cond-drey-01 -Force:$true
    # Remove-AzResourceGroup -Name iac-demo-cond-drey-02 -Force:$true
    # Remove-AzResourceGroup -Name iac-cond-drey -Force:$true
    # Remove-AzResourceGroup -Name iac-demo-cond-drey-03 -Force:$true