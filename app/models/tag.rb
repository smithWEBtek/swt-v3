class Tag < ApplicationRecord
  has_many :refs
  has_many :projects
end
