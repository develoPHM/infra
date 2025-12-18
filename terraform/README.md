terraform plan / apply
        ↓
Terraform 엔진 시작
        ↓
모든 *.tf 파일 로딩 (순서 없음)
        ↓
variables.tf 에 선언된 변수 수집
        ↓
값 소스에서 변수 값 채움
  - terraform.tfvars
  - *.tfvars
  - TF_VAR_*
  - -var / -var-file
        ↓
var.xxx 로 치환
        ↓
provider / resource / data 에 주입