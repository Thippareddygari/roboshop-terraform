dev-apply:
	 git pull
	 rm -f .terraform/terraform.state
	 terraform init -backend-config=env-dev/state.tfvars
	 terraform apply -auto-approve -var-file=env-dev/main.tfvars -var vault_token=${vault_token}

dev-destroy:
	  git pull
	  rm -f .terraform/terraform.state
	  terraform init -backend-config=env-dev/state.tfvars
	  terraform destroy -auto-approve -var-file=env-dev/main.tfvars -var vault_token=${vault_token}

prod-apply:
	  git pull
	  rm -f .terraform/terraform.state
	  terraform init -backend-config=env-prod/state.tfvars
	  terraform apply -auto-approve -var-file=env-prod/main.tfvars -var vault_token=${vault_token}

prod-destroy:
	  git pull
	  rm -f .terraform/terraform.state
	  terraform init -backend-config=env-prod/state.tfvars
	  terraform apply -auto-approve -var-file=env-prod/main.tfvars -var vault_token=${vault_token}
	 