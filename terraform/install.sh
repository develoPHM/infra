sudo apt update

# Terraform 설치를 위한 도구 3종세트
# curl, gnupg, software-properties-common
sudo apt install -y gnupg software-properties-common curl

# HashiCorp 공식 GPG 키 등록
# /usr/share/keyrings/hashicorp.gpg 생성
curl -fsSL https://apt.releases.hashicorp.com/gpg \
| sudo gpg --dearmor -o /usr/share/keyrings/hashicorp.gpg

# Terrafrom APT 저장소 추가,설치
echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
| sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt install -y terraform
# 설치확인
terraform version

mkdir -p ~/terraform/proxmox
cd ~/terraform/proxmox
vim main.tf