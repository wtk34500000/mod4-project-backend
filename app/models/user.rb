class User < ApplicationRecord
  has_many :histories
  has_many :videos, through: :histories
  has_many :comments, through: :histories
end
