class Topic < ApplicationRecord
  has_many :group_topics
  has_many :groups, through: :group_topics
  has_many :ref_topics 
  has_many :refs, through: :ref_topics
end
