terraform {
  required_providers {
    minio = {
      source  = "aminueza/minio"
      version = "1.7.0"
    }
  }
}

provider "minio" {
  # No se pasan credenciales aquí
}

resource "minio_s3_bucket" "dvcbucket" {
  bucket = "dvc-local"
  acl    = "private"
}
# Crear una política de acceso para el bucket
resource "minio_s3_bucket_policy" "dvc_policy" {
  bucket = minio_s3_bucket.dvcbucket.bucket
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:GetObject",
          "s3:PutObject"
        ]
        Effect   = "Allow"
        Resource = "arn:aws:s3:::${minio_s3_bucket.dvcbucket.bucket}/*"
        Principal = "*"
      }
    ]
  })
}