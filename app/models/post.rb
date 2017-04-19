class Post < ApplicationRecord
  has_many :post_refs
  has_many :refs, through: :post_refs
  accepts_nested_attributes_for :post_refs, :allow_destroy => true  
  # validates :title, presence: true, uniqueness: true

  # def self.upload(file)
  #   Cloudinary::Uploader.upload(file, public_id: "sample_md_file", resource_type: :raw)
  # end
end
