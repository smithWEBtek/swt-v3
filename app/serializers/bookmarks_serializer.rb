class BookmarksSerializer < ActiveModel::Serializer
  attributes :id, :bm_id, :bm_dateAddedLocal, :bm_dateAddedUTC, :bm_index, :bm_parentId, :bm_title, :bm_url, :created_at, :updated_at
	has_many :tags
end