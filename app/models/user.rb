class User < ApplicationRecord
  has_secure_password
  has_many :histories
  has_many :videos, through: :histories
  has_many :comments, through: :histories

  validates :user_name, :user_email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
end
