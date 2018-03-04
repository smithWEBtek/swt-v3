class RefsSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :description, :format, :url
  has_many :tags
end