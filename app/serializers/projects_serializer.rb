class ProjectsSerializer < ActiveModel::Serializer
  attributes :id, :name, :business_model, :data_sources, :problem, :wishlist, :url, :screenshot
  has_many :tags
end