## Perquisites

- Docker preinstalled and a Docker account
- AWS account
- GitHub account

## Setting up your Jenkins

### Building the Jenkins image via JCasC

The provided JCaSC configuration allows access to Docker CLI and AWS CLI. Modify as needed.

- Navigate to /jenkins/jcasc
- Run the following Docker commands to build your image:

```
docker build -t yourDockerhubUsername/projectName:projectTag .
```

- Push the image to your Dockerhub

```
docker push yourDockerhubUsername/projectName:projectTag
```

## Terraform

- Navigate to /jenkins/terraform
- Paste in your SSH key directly into the directory, OR make sure to update the file source:

```
private_key = file(var.key_pair)
```

- Create your own terraform.tfvars file, and include:

```
aws_access_key = "YOUR_ACCESS_KEY"
aws_secret_access_key = "YOUR_SECRET_ACCESS_KEY"
key_pair_name = "YOUR_KEY"
key_pair = "YOUR_KEY.pem"
jenkins_admin_password = "YOUR_PASSWORD"
jenkins_image = "YOUR_IMAGE_HERE"
```

- Run the following commands:

```
terraform init
terraform plan
terraform apply
```

- Wait for terraform to finish. The console will output your AWS Public DNS.

## Jenkins

- You can now access Jenkins at http://your_public_dns:8080 with the username "jenkins" and the password you have provided via .tfvars (or use the default "password")

## Considerations

- Security might be of issue. Accessing Jenkins via HTTP is not ideal, and to further improve our infrastructure, we could look into reverse proxy.
- JCasC can be as simple or as elaborate as the user/s desire. As we are using a public repository, we have not configured credentials/clouds/etc. within the JCaSC, which could speed up the setup.
