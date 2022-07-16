param routetableName string
param routeName string
param properties object

resource rtroutes 'Microsoft.Network/routeTables/routes@2022-01-01'  = {
  name: '${routetableName}/${routeName}'
  properties: properties
}
