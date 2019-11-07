## terraform-useful-providers -> repo that I can use to see how useful providers work

This repo has as target to define and show what I have learned about terraform useful providers

how can I use this repository?
You can use this repo as reference or you can clone the repository to your computer using the follow commands 

```git
git clone git@github.com:Orpere/terraform-useful-providers.git
```

you can also fork this repo using the fork button on top right on github and use it as yours as the follow example:

![fork](fork.png)

like this you can clone and edit the repository and commit your own changes.

you can clone your own repo as:

```git
git clone git@github.com:<YourGitUser>/terraform-useful-providers.git
```

and use the commands add, commit and push to your own changes

for more instructions to use git you can check the [link](https://rogerdudler.github.io/git-guide/) it will have a much better explination about all git steps

# Terraform useful providers
[]
The inspiration for this repository come from the Hashicorp [documentation](https://www.terraform.io/docs/modules/index.html)

NOTE: these terraform files are using a null Provider

Null Provider
[The null provider is a rather-unusual provider that has constructs that intentionally do nothing. This may sound strange, and indeed these constructs do not need to be used in most cases, but they can be useful in various situations to help orchestrate tricky behavior or work around limitations.](https://www.terraform.io/docs/providers/null/index.html)

![terraform](terraform.png)

**Providers** are plugins which give to terraform the capacity of interact with the infrastructure APIs, is the way of create,destroy,update or just take meta information from the servers or cloud providers.
For a complete list of providers you can check the [link](https://www.terraform.io/docs/providers/index.html)

## Random Providers or useful providers

Random Providers permit us to use the terraform logical with out interfere directly with the infrastructure as example it can attribute random values to variables.

we know the follow resources:

1) [random_id](https://www.terraform.io/docs/providers/random/r/id.html)
2) [random_integer](https://www.terraform.io/docs/providers/random/r/integer.html)
3) [random_password](https://www.terraform.io/docs/providers/random/r/password.html)
4) [random_pet](https://www.terraform.io/docs/providers/random/r/pet.html)
5) [random_shuffle](https://www.terraform.io/docs/providers/random/r/shuffle.html)
6) [random_string](https://www.terraform.io/docs/providers/random/r/string.html)
7) [random_uuid](https://www.terraform.io/docs/providers/random/r/uuid.html)

Note: [for more information](https://www.terraform.io/docs/providers/index.html)

example: the random_pet module which will tag the server on this case with a pet name like "web-server-dog"

```terraform
resource "random_pet" "server" {
  keepers = {
    # Generate a new pet name each time we switch to a new AMI id
    ami_id = "${var.ami_id}"
  }
   byte_length = 8
}

resource "aws_instance" "server" {
  tags = {
    Name = "web-server-${random_pet.server.id}"
  }

  # Read the AMI id "through" the random_pet resource to ensure that
  # both will change together.
  ami = "${random_pet.server.keepers.ami_id}"
  # ... (other aws_instance arguments) ...

}
```