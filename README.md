# terraform_github_provider_kitchen

### Purpose of the repository 
- The repository creates repository in GitHub oraganization and test that with `kitchen` framework.

#### List of files in the repository

File name                            | File description 
------------------------------------ | --------------------------------------------------------------
`main.tf` | Terraform configuration file for creating the repo in your GitHub organization.
`test/integration/default/default_test.rb` | basic test to make sure we are creting repo in GitHub organization.
`.kitchen.yml` | configuration file for `kitchen` test framework.
`Gemfile` | used for ruby dependencies.

### SECURITY WARNING: THE FILE MENTIONED BELOW CONTAINS SENSITIVE INFORMATION, MAKE SURE THE FILE IS NOT EXPOSED TO THE INTERNET OR ANY OTHER PUBLIC PLACES.
- You need to create `filename.tfvars` file that has your GitHub organization token (file must have `.tfvars` extension). 
- Terraform will use the token in the file to create repository in your GitHub organization.
- The file must be local to your computer and to be uploaded to GitHub.
- To get your GitHub token follow this [instructions](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/)
- the file format should be as follow:

```
github_token = "token_from_GitHub"

```

### How to use this repository. 
- Install `terraform` by following this [instructions](https://www.terraform.io/intro/getting-started/install.html).
- Clone the repository to your local computer: `git clone git@github.com:nikcbg/terraform_github_provider_kitchen`.
- Go to the cloned repo on your computer: `cd terraform__github_provider_kitchen`.

## Setting up `ruby` environment for `kitchen` testing framework:

Command execution |	Command outcome
------------------|--------------------------
`sudo apt update` | to update the packages on your machine.
`sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev` | to install ruby dependencies.
`git clone https://github.com/rbenv/rbenv.git ~/.rbenv` | to clone rbenv repo.
`echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc` | to change your `~/.bashrc` file.
`'eval "$(rbenv init -)"' >> ~/.bashrc` | so rbenv loads automatically.
`source ~/.bashrc` | to reload bash profile.
`rbenv` | command to verify that `rbenv` is set up properly.
`rbenv install 2.3.1`	| to install ruby 2.3.1 version.
`rbenv local 2.3.1`	| to set the default version of ruby to your local directory.
`rbenv -v`	| to make sure ruby is installed and you have the correct version.
`gem install bundler`	| to install gem which is package manager for ruby.


### Commands needed to test with `kitchen`.

Command execution |	Command outcome
------------------|--------------------------
`bundle exec kitchen list` | to list `kitchen` instances.
`bundle exec kitchen converge` | to create `kitchen` environment.
`bundle exec kitchen verify` | command to execute `kitchen` test.
`bundle exec kitchen destroy` | to destroy `kitchen` environment.
`bundle exec kitchen test` | to automatically build, test and destroy `kitchen` environment.


### TO DO: 
- Check if everything works as expected. 
