This module is defined to create a GKE cluster and to deploy portal/portlets and loadBalancer service on top of it.

Deployment of portal/portlets is defined in deploy.yml
Deployment of loadBalancer is defined in svc.yml

To know about the variables defined in this module, please check "variable.tf" file

we defined "output.tf" file and assigned a variable "gke_id" which is used as a dependent variable for email_notification module
