class RefTopic < ApplicationRecord
  belongs_to :ref 
  belongs_to :topic 
end