class History < ApplicationRecord
  belongs_to :user
  belongs_to :video
  has_many  :comments
end
