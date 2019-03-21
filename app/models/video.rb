class Video < ApplicationRecord
  has_many :histories
  has_many :users, through: :histories
  has_many :comments, through: :histories
end
