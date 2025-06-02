##to ssh the azure VM: ssh -i C:\Users\Alejandro\Projects\Azure\acardoso1_key.pem acardoso@4.205.77.175
az vm list-skus --location westus --output table #list all available VM sizes in the westus region
az vm list-skus --location westus --output table | grep DS #list all available VM sizes in the westus region that start with DS
az vm list-skus --location westus --output table | grep DS.*_v2 #list all available VM sizes in the westus region that start with DS and end with _v2

#Subscriotion management
az login #login to azure
##list all subscriptions and filter by name
az account list \
    --refresh --query "[?contains(name, 'Concierge Subscription')].id" \
    --output table 
az account set --subscription "Concierge Subscription" #set the subscription to use
##Resource group management
az group list --output table #list all resource groups in the current subscription
az configure --defaults group={name of your resource grup} #set the default resource group to use

#Deploy ARM template
##Create a depoyment group to deploy the ARM template   
templateFile="azuredeploy.json"
today=$(date +"%d-%b-%Y")
DeploymentName="blanktemplate2-"$today

az deployment group create --name $DeploymentName --template-file $templateFile

##
templateFile="azuredeploy.json" #path to the ARM template file
az deployment group create \
    --name blanktemplate \
    --resource-group {name of your resource grup} \
    --template-file $templateFile \
    --parameters @azuredeploy.parameters.json #path to the ARM template parameters file

