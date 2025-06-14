resource "aws_dynamodb_table" "terraform_state_lock" {
    name         = "terraform-state-lock-pet-project-eks"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }

    lifecycle {
        prevent_destroy = true
    }
}
