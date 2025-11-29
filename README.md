Instructions for Using This Repo
1️⃣ Clone the Repository
git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>



2️⃣ Install Terraform
- Make sure Terraform is installed on your system.
- Verify installation:
terraform -version



3️⃣ Initialize Terraform
terraform init


This downloads provider plugins and sets up the working directory.

4️⃣ Select/Create a Workspace
Workspaces isolate state for each environment.
terraform workspace new dev     # create dev workspace
terraform workspace select dev  # switch to dev


For stage/prod:
terraform workspace new stage
terraform workspace select stage

terraform workspace new prod
terraform workspace select prod



5️⃣ Plan Infrastructure
Run plan with the environment’s .tfvars file:
terraform plan -var-file="dev.tfvars" -out="dev.plan"



6️⃣ Apply Infrastructure
Apply the plan to create resources:
terraform apply "dev.plan"


Repeat for stage/prod:
terraform plan -var-file="stage.tfvars" -out="stage.plan"
terraform apply "stage.plan"

terraform plan -var-file="prod.tfvars" -out="prod.plan"
terraform apply "prod.plan"



7️⃣ Destroy Environment (when needed)
To clean up resources:
terraform workspace select dev
terraform destroy -var-file="dev.tfvars"

terraform workspace select prod
terraform destroy -var-file="prod.tfvars"



✅ Notes
- Do not commit state files (terraform.tfstate, .terraform/) to GitHub.
- .tfvars files should contain only non‑sensitive values. If secrets are required, use environment variables or a secrets manager.
- Always confirm your current workspace:
terraform workspace show



👉 This way, anyone cloning your repo can immediately spin up dev, stage, or prod environments safely.

