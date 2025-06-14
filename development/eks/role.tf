resource "aws_iam_role" "eks" {
  name                 = "${local.eks_cluster_name}-role"
  max_session_duration = 3600

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "eks" {
    role       = aws_iam_role.eks.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

