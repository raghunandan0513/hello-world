# These are the variables that control global resources for
# the portal are configured within GCE. 

# See variables.tf for descriptions of each of the variables
# used below.

#--------------------------------------------------------------
# General
#--------------------------------------------------------------

cluster_name        	= "demo-cluster"
IMAGE_PATH          	= "csriman09\\/helloworld:latest"
master_auth_user    	= "biarca"
master_auth_pswd    	= "biarcasecretpassword"
project_name        	= "demo123-project"
REPLICA_COUNT       	= "2"
network     		= "default"
static_ip_name      	= "service-ip"
static_ip_count     	= "1"
