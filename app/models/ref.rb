class Ref < ApplicationRecord
  has_many :ref_topics
  has_many :topics, through: :ref_topics
  has_many :post_refs
  has_many :posts, through: :post_refs
end
