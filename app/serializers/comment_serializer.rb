class CommentSerializer < ActiveModel::Serializer
  belongs_to :history
  attributes :id, :content, :created_at, :user_name
end
