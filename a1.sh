sudo apt-get update
sudo apt-get install -y unzip
cd /home/ubuntu
wget https://releases.hashicorp.com/terraform/1.1.7/terraform_1.1.7_linux_amd64.zip
unzip terraform_1.1.7_linux_amd64.zip
sudo mv terraform /usr/local/bin/
echo "sn1-> sn10"
echo "Installed Terraform"
rm -rf terraform_1.1.7_linux_amd64.zip

mkdir deployAWS
cd deployAWS
rm -rf a1_v2.tf
aws s3 sync s3://terraformconfigjan .
terraform init
terraform apply -auto-approve
echo "AWS Config Deployed"
