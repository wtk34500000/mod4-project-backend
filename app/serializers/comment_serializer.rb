class CommentSerializer < ActiveModel::Serializer
  belongs_to :history
  belongs_to :user, through: :history
  attributes :id, :content, :created_at
end
