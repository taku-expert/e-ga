class Movie < ApplicationRecord
  has_many :comments
  # belongs_to :user
  mount_uploader :image, ImageUploader
end
