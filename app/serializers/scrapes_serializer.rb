class ScrapesSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :selectors, :notes
end
