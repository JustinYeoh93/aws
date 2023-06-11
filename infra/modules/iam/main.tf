resource "aws_iam_user" "this" {
  name = var.name
  path = "/"

  tags = var.tags
}

resource "aws_iam_access_key" "this" {
  user = aws_iam_user.this.name
}

resource "aws_iam_user_policy" "this" {
  for_each = var.user_policies
  name     = each.key
  user     = aws_iam_user.this.name

  policy = jsonencode(each.value)
}