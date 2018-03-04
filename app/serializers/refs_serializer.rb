class RefsSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :description, :format, :url, :created_at, :updated_at
  has_many :tags
end