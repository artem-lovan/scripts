# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.0/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# install kops
wget https://github.com/kubernetes/kops/releases/download/1.7.0/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops
