class Photo < ApplicationRecord
  belongs_to :article
  has_attached_file :image, url: ':s3_domain_url', styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
