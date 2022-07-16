targetScope = 'subscription'
param rgName string

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' existing = {
  name: rgName
}
output rgId string = rg.id
output rgName string = rg.name
