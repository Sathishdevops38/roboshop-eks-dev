environments = {
  default = {
    # Global variables
    cluster_name                   = "roboshop"
    env                            = "default"
    region                         = "us-west-2"
    vpc_id                         = "vpc-0a8fef454a275eea2"
    vpc_cidr                       = "10.0.0.0/16"
    public_subnet_ids              = ["subnet-0425e21bb906454e1", "subnet-07c6419ff82443e42"]
    cluster_version                = "1.32"
    cluster_endpoint_public_access = true
    ecr_names                      = ["codedevops"]

    # EKS variables
    eks_managed_node_groups = {
      generalworkload-v4 = {
        min_size       = 1
        max_size       = 1
        desired_size   = 1
        instance_types = ["t3.medium"]
        capacity_type  = "SPOT"
        disk_size      = 60
        ebs_optimized  = true
        iam_role_additional_policies = {
          ssm_access        = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
          cloudwatch_access = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
          service_role_ssm  = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
          default_policy    = "arn:aws:iam::aws:policy/AmazonSSMManagedEC2InstanceDefaultPolicy"
        }
      }
    }
    cluster_security_group_additional_rules = {}

    # EKS Cluster Logging
    cluster_enabled_log_types = ["audit"]
    eks_access_entries = {
      viewer = {
        user_arn = []
      }
      admin = {
        user_arn = ["arn:aws:iam::441700732169:root"]
      }
    }
    # EKS Addons variables 
    coredns_config = {
      replicaCount = 1
    }
  }

  dev = {
    # Global variables
    cluster_name                   = "roboshop-dev"
    env                            = "dev"
    region                         = "us-west-2"
    vpc_id                         = "vpc-0a8fef454a275eea2"
    vpc_cidr                       = "10.0.0.0/16"
    public_subnet_ids              = ["subnet-0425e21bb906454e1", "subnet-07c6419ff82443e42"]
    cluster_version                = "1.33"
    cluster_endpoint_public_access = true
    ecr_names                      = ["codedevops"]

    # EKS variables
    eks_managed_node_groups = {
      generalworkload-v4 = {
        min_size       = 1
        max_size       = 1
        desired_size   = 1
        instance_types = ["t3.micro"]
        capacity_type  = "SPOT"
        disk_size      = 60
        ebs_optimized  = true
        iam_role_additional_policies = {
          ssm_access        = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
          cloudwatch_access = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
          service_role_ssm  = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
          default_policy    = "arn:aws:iam::aws:policy/AmazonSSMManagedEC2InstanceDefaultPolicy"
        }
      }
    }
    cluster_security_group_additional_rules = {}

    # EKS Cluster Logging
    cluster_enabled_log_types = ["audit"]
    eks_access_entries = {
      viewer = {
        user_arn = []
      }
      admin = {
        user_arn = ["arn:aws:iam::441700732169:root"]
      }
    }
    # EKS Addons variables 
    coredns_config = {
      replicaCount = 1
    }
  }

}
