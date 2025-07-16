

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
