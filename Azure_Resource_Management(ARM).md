ARM (Azure Resource Manager) templates are JSON (Java Script Object Notation) files that define the infrastructure and configuration for your deployment.
- It uses declarative syntax

It declares what you intend to deploy without having to write the sequence of programming commands to create it.

Allow you to automate deploiments (Infrasstructure as code)

ARM template file structure
When you're writing an ARM template, you need to understand all the parts that make up the template and what they do. ARM template files are made up of the following elements:

Element	Description
- schema:	A required section that defines the location of the JSON schema file that describes the structure of JSON data. The version number you use depends on the scope of the deployment and your JSON editor.
- contentVersion:	A required section that defines the version of your template (such as 1.0.0.0). You can use this value to document significant changes in your template to ensure you're deploying the right template.
- apiProfile:	An optional section that defines a collection of API versions for resource types. You can use this value to avoid having to specify API versions for each resource in the template.
- parameters:	An optional section where you define values that are provided during deployment. You can provide these values in a parameter file, by command-line parameters, or in the Azure portal.
- variables:	An optional section where you define values that are used to simplify template language expressions.
- functions:	An optional section where you can define user-defined functions that are available within the template. User-defined functions can simplify your template when complicated expressions are used repeatedly in your template.
- resources:	A required section that defines the actual items you want to deploy or update in a resource group or a subscription.
- output:	An optional section where you specify the values that are returned at the end of the deployment.

