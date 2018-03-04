class ScrapesSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :selectors, :notes, :created_at, :updated_at
end
