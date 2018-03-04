class ActiveAdminCommentsSerializer < ActiveModel::Serializer
	attributes :id, :namespace, :body, :resource_type, :resource_id, :author_type, :author_id, :created_at, :updated_at
end