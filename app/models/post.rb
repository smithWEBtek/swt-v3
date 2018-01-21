class Post < ApplicationRecord
  has_many :post_refs
  has_many :refs, through: :post_refs
  accepts_nested_attributes_for :post_refs, :allow_destroy => true  
  validates :title, presence: true, uniqueness: true

end
