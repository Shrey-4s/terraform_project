# First User Creation
resource "aws_iam_user" "shreyas" {
  name = "shreyas"

  tags = {
    description = "Demo terraform user",
    name = "Terraform_User1"
  }
}

# Second User Creation
resource "aws_iam_user" "shri" {
  name = "shri"

  tags = {
    Description = "Second User",
    Name = "User 2"
  }
}

# Group Creation
resource "aws_iam_group" "administrators" {
  name = "administrators"
}

# Adding the users to the group
resource "aws_iam_group_membership" "administrators-users" {
  name = "administrators-users"
  users = [
    aws_iam_user.shreyas.name,
    aws_iam_user.shri.name,
  ]
  group = aws_iam_group.administrators.name
}

output "warning" {
  value = "WARNING: make sure you're not using the AdministratorAccess policy for other users/groups/roles. If this is the case, don't run terraform destroy, but manually unlink the created resources"
}
