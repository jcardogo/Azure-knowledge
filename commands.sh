##to ssh the azure VM: ssh -i C:\Users\Alejandro\Projects\Azure\acardoso1_key.pem acardoso@4.205.77.175
az vm list-skus --location westus --output table #list all available VM sizes in the westus region
az vm list-skus --location westus --output table | grep DS #list all available VM sizes in the westus region that start with DS
az vm list-skus --location westus --output table | grep DS.*_v2 #list all available VM sizes in the westus region that start with DS and end with _v2

#Deploy ARM template
az login #login to azure
##Create a depoyment group to deploy the ARM template   
az deployment group create \ 
    --name {name of your resource grup} \
    --location westus 
##
templateFile="azuredeploy.json" #path to the ARM template file
az deployment group create \
    --name blanktemplate \
    --resource-group {name of your resource grup} \
    --template-file $templateFile \
    --parameters @azuredeploy.parameters.json #path to the ARM template parameters file

