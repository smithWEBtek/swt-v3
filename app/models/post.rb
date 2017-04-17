class Post < ApplicationRecord
  has_many :post_refs
  has_many :refs, through: :post_refs
end
