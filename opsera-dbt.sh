curl ifconfig.me
apt-get update
apt-get install -y python3 python3-pip
pip3 install dbt-core dbt-postgres awscli
export AWS_ACCESS_KEY_ID=${opsera-limited-s3-access-key-id}
export AWS_SECRET_ACCESS_KEY=${opsera-limited-s3-secret-access-key}
