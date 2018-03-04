class ProjectsSerializer < ActiveModel::Serializer
  attributes :id, :name, :business_model, :data_sources, :problem, :wishlist, :url, :screenshot, :created_at, :updated_at
  has_many :tags
end