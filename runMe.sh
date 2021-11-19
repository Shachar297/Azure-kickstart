RESOURCE_GROUP_NAME="ShacharWeb"
VM_NAME="FirstVM"
USER_NAME="Shachar"


#az login
#az group create --name ${RESOURCE_GROUP_NAME} --location eastus

echo ${RESOURCE_GROUP_NAME}
echo ${VM_NAME}
echo ${USER_NAME}

az vm create \
--resource-group ${RESOURCE_GROUP_NAME} \
 --name ${VM_NAME} \
  --image win2019Datacenter \
   --public-ip-sku Standard \
    --admin-username ${USER_NAME}

