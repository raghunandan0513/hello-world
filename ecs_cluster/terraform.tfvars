#--------------------------------------------------------------
# General
#--------------------------------------------------------------

access_key		= "xxx"
secret_key      	= "yyy"
project_region	        = "us-east-2"
cluster_name		= "test-cluster"
instance_type		= "t2.micro"
security_group_id       = ["sg-17d10b7e"]
availability_zones	= ["us-east-2a", "us-east-2b", "us-east-2c"]
autoscaling_group_name	= "ECS-scaling"
min_size		= "2"
max_size		= "4"
desired_capacity	= "2"
vpc_zone_identifier	= ["subnet-ff67be96", "subnet-330fe148", "subnet-e6474bac"]