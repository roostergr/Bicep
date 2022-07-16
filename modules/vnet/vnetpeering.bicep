param vnetName string
param peeringName string
param properties object

resource peering 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2022-01-01' = {
  name: '${vnetName}/${peeringName}'
  properties: properties
}
