default:
	 git pull
	 rm -f .terraform/terraform.state
	 terraform init -backend-config=env-dev/state.tfvars
	 terraform apply -auto-approve -var-file=env-dev/main.tfvars 
	 