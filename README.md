## TechDocs setup

Role name: emea-tap-tech-docs-reader
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "ReadTechDocs",
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket",
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::emea-tap-tech-docs",
                "arn:aws:s3:::emea-tap-tech-docs/*"
            ]
        }
    ]
}

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::377668981663:role/emea-tap-eks-worker-role"
            },
            "Action": "sts:AssumeRole"
        }
    ]
}
