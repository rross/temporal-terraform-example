# Simple Temporal Terraform to create a namespace

This is a simple Terraform example that uses the [Terraform Provider](https://registry.terraform.io/providers/temporalio/temporalcloud/latest) to create a new namespace. It requires an [API Key](https://docs.temporal.io/cloud/api-keys) for a user that has permissions to
create namespaces. 

Copy or modify the example.tfvars and fill in the appropriate information. You'll need to supply
* A name of the new namespace 
* Your API Key
* What region you want to use
* Path to your CA certificate you wish to use for validating workers to use that namespace. More information can be found [here](https://docs.temporal.io/cloud/certificates)

Once you have your variables configured, use the following commands. Remember to match the name of your file with the -var-file parameter:

```bash
terraform init
terraform plan -var-file=your-config.tfvars
terraform apply -var-file=your-config.tfvars
```

Creating a new namespace could take a few minutes.

If you want to delete the namespace, execute the following command:

```bash
temporal destroy -var-file=your-config.tfvars
```