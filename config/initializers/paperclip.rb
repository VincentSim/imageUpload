Paperclip::Attachment.default_options[:storage] = :s3
Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:rails_env/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_credentials] = {
  bucket:             ENV['s3_bucket_name'],
  access_key_id:      ENV['s3_key_id'],
  secret_access_key:  ENV['s3_secret_key']
}