class PostsSerializer < ActiveModel::Serializer
	attributes :id, :date, :title, :repo, :video_url, :site_url, :summary, :content_md,:content_html
	has_many :tags
end