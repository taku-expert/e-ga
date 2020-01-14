class Movie < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  has_many :comments
  mount_uploader :image, ImageUploader
  has_many :favorites
  has_many :users, through: :favorites
end
