param bastionpipId string
param subnetId string
param location string

resource bastion 'Microsoft.Network/bastionHosts@2022-01-01' = {
  name: 'bastion'
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconf'
        properties: {
          publicIPAddress: {
            id: bastionpipId
          }
          subnet: {
            id: subnetId
          }
        }
      }
    ]
  }
}
