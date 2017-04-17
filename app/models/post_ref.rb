class PostRef < ApplicationRecord
  belongs_to :post
  belongs_to :ref
end