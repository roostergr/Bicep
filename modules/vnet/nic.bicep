param subnetId string
param location string

resource jbnic 'Microsoft.Network/networkInterfaces@2022-01-01' = {
  name: 'jbnic'
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          subnet: {
            id: subnetId
          }
          privateIPAllocationMethod: 'Dynamic'
        }
      }
    ]
  }
}

output nicName string = jbnic.name
output nicId string = jbnic.id
