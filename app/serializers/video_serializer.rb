class VideoSerializer < ActiveModel::Serializer
  has_many :histories
  has_many :comments, through: :history
  attributes :id, :title,:creater_name, :description
end
