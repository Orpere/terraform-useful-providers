## terraform-useful-providers -> repo that you can use to see how useful providers work

how can I use this repository?

This repo has as dependencies a command line or shell git and terraform.You can find the install instructions bellow on [EXTRAS](#extras) section.

## task - clone repo terraform-useful-providers
- open your shell or command line and go to the directory where you pretend to add the repo

```bash
cd <directory where pretend to add the repo>
```

```git
git clone git@github.com:Orpere/terraform-useful-providers.git
```

## task - move to your repo folder

```bash
cd terraform-useful-providers
```

## task - terraform init

- this will retrive all dependencies for terraform scripts

```terraform
terraform init
```

## task - run terraform apply

```terraform
terraform apply
```

## Task - check the result of the useful provider

- In this case was used random_pet what should give to your resource a pet name as bellow

```terraform 
null_resource.example (local-exec): Executing: ["/bin/sh" "-c" "echo assured-teal"]
null_resource.example (local-exec): assured-teal
```

# EXTRAS
This repo was based on the [documentation](https://www.terraform.io/docs/providers/random/r/pet.html)

[Install git](https://gist.github.com/derhuerst/1b15ff4652a867391f03#file-intro-md)
for more instructions to use git you can check the [link](https://rogerdudler.github.io/git-guide/) it will have a much better explanation about all git steps

After clone the repo you can install terraform downloading the adequate version to your OS on [Terraform](https://www.terraform.io/downloads.html)
If you don't know how to install please follow the [tutorial](https://learn.hashicorp.com/terraform/getting-started/install.html)
