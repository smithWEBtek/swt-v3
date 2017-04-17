class Group < ApplicationRecord
  has_many :group_topics
  has_many :topics, through: :group_topics
end
