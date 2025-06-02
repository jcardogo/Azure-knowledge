Get-Command -Noun alias* # List all commands related to aliases
Get-Command -Verb Get -Noun alias* # List all commands related to aliases with the 'Get' verb
$PASVersionTable # Display the PowerShell Azure Services (PAS) version table
$PASVersionTable.PSVersion # Display the PowerShell Azure Services (PAS) version
Get-Command -Noun File* # List all commands related to files
Get-Command -Verb Get -Noun File* # List all commands related to files with the 'Get' verb
#
Connect-AzAccount # Connect to Azure account
Get-AzSubscription # List all Azure subscriptions
$context = Get-AzSubscription -SubscriptionId {Your subscription ID} # Get the context for a specific subscription
Set-AzContext $context # Set the context to the specified subscription
Set-AzDefault -ResourceGroupName learn-2ee9d189-712a-43c0-a164-dbcbf4376b4f # Set the default resource group for the current session
