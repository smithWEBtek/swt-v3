class Ref < ApplicationRecord
  belongs_to :topic
  has_many :groups, through: :topic
  has_many :post_refs
  has_many :posts, through: :post_refs
end
