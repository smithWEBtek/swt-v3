class Topic < ApplicationRecord
  has_many :group_topics
  has_many :groups, through: :group_topics
end
