module "eks" {
    source          = "terraform-aws-modules/eks/aws"
    version         = "~>20.31"
    cluster_name    = local.name
    cluster_version = "1.27"
    cluster_endpoint_private_access = true
    vpc_id          = module.vpc.vpc_id
    subnet_ids      = module.vpc.private_subnets
    control_plane_subnet_ids = module.vpc.intra_subnets
    eks_managed_node_group_defaults = {
        instance_type = "t3.medium"
        attach_cluster_primary_security_group = true


    }   

    eks_managed_node_groups = {
        practice_cluster_node_group = {
            desired_capacity = 2
            max_capacity     = 3
            min_capacity     = 1
            instance_types   = ["t3.medium"]
            capacty_type     = "SPOT"

            cluster_addons= {
                vpc-cni = {
                    most-recent= true
                }

                kube-proxy = {
                     most-recent= true
                }

                core-dns = {
                     most-recent= true
                }

            }
        }
    }
    
    
    tags = {
        Environment = local.env
        Terraform   = "true"
        Name        = local.name
    }               
  
}