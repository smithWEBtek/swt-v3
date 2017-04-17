class Ref < ApplicationRecord
  belongs_to :topic
  has_many :groups, through: :topic
end
