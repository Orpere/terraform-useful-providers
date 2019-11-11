## terraform-useful-providers -> repo that I can use to see how useful providers work

This repo has as target to define and show what I have learned about terraform useful providers

how can I use this repository?
You can use this repo as reference or you can clone the repository to your computer using the follow commands 

```git
git clone git@github.com:Orpere/terraform-useful-providers.git
```

for more instructions to use git you can check the [link](https://rogerdudler.github.io/git-guide/) it will have a much better explanation about all git steps

After clone the repo you can install terraform downloading the adequate version to your OS on [Terraform](https://www.terraform.io/downloads.html).

Terraform most used commands are:

- terraform fmt - cleans up your code formatting
- terraform init - retrieves your modules and dependencies
- terraform plan - plans the AWS infrastructure
- terraform apply - creates the AWS infrastructure

# Terraform useful providers

The inspiration for this repository come from the Hashicorp [documentation](https://www.terraform.io/docs/providers/random/index.html)

![terraform](terraform.png)

**Providers** are plugins which give to terraform the capacity of interact with the infrastructure APIs, is the way of create,destroy,update or just take meta information from the servers or cloud providers.
For a complete list of providers you can check the [link](https://www.terraform.io/docs/providers/index.html)

## Random Providers or useful providers

Random Providers permit us to use the terraform logical with out interfere directly with the infrastructure as example it can attribute random values to variables.
It is used to avoid the time wasting inventing attributes names and values to resources.

we know the follow resources:

1) [random_id](https://www.terraform.io/docs/providers/random/r/id.html) generates random numbers that are intended to be used as unique identifiers for other resources.
2) [random_integer](https://www.terraform.io/docs/providers/random/r/integer.html) generates random values from a given range, described by the min and max attributes of a given resource.
3) [random_password](https://www.terraform.io/docs/providers/random/r/password.html) Identical to random_string with the exception that the result is treated as sensitive and, thus, not displayed in console output.
4) [random_pet](https://www.terraform.io/docs/providers/random/r/pet.html) generates random pet names that are intended to be used as unique identifiers for other resources.(this is the example he have on this repo)
5) [random_shuffle](https://www.terraform.io/docs/providers/random/r/shuffle.html) generates a random permutation of a list of strings given as an argument.
6) [random_string](https://www.terraform.io/docs/providers/random/r/string.html) generates a random permutation of alphanumeric characters and optionally special characters.
7) [random_uuid](https://www.terraform.io/docs/providers/random/r/uuid.html) generates random uuid string that is intended to be used as unique identifiers for other resources.

Note: [for more information](https://www.terraform.io/docs/providers/index.html)

example: the random_pet module which will tag the server on this case with a pet name like "web-server-dog"

```terraform
resource "random_pet" "example" {
  length = 2
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo ${random_pet.example}"
  }

}
```

After run terraform apply as you can see it generate an animal label to the ip as below.

```terraform
random_pet.example: Creating...
random_pet.example: Creation complete after 0s [id=precious-antelope]
null_resource.example: Creating...
```
