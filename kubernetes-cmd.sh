

# After login into CLI using (aws configure)
# This command is use to initilise cluster in to local systme
aws eks --region ap-south-1 update-kubeconfig --name demo-eks-cluster

# To get all running pods
kubectl get pods -A

# To get all Running nodes
kubectl get nodes -A

kubectl apply -f deploy.yaml

# To ssh into paticular pode
kubectl exec -it <pod-name> -n <namespace> -- <command>
kubectl exec -it -n eks-sample-app eks-sample-linux-deployment-7fd879d6f-d8drc -- bin/bash

# To get all the IPs of a Pode
kubectl get pods -o wide -A

# Apply Services
kubectl apply -f service.yaml

# View All the services 
kubectl get svc -A


kubectl apply -f service_account.yaml

kubectl describe serviceaccount aws-load-balancer-controller -n kube-system

# EKS ALB Trust-Policy
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::095185554382:oidc-provider/oidc.eks.ap-south-1.amazonaws.com/id/4EF90824F700020EB1B6F913C29D7B08"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-south-1.amazonaws.com/id/4EF90824F700020EB1B6F913C29D7B08:sub": "system:serviceaccount:kube-system:aws-load-balancer-controller",
          "oidc.eks.ap-south-1.amazonaws.com/id/4EF90824F700020EB1B6F913C29D7B08:aud": "sts.amazonaws.com"
        }
      }
    }
  ]
}



helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=demo-eks-cluster-v2 \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  --set region=ap-south-1 \
  --set vpcId=vpc-0ec7e2c91cd8f62d2


kubectl get deployment -n kube-system aws-load-balancer-controller



aws ec2 describe-subnets --filters "Name=tag:kubernetes.io/cluster/demo-eks-cluster-v2,Values=shared"



