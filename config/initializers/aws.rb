Aws.config.update({
  region: 'eu-west-1',
  credentials: Aws::Credentials.new(ENV['s3_key_id'], ENV['s3_secret_key'])
})
S3_BUCKET = Aws::S3::Resource.new.bucket(
            ENV['s3_bucket_name'])