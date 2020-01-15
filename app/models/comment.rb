class Comment < ApplicationRecord
  belongs_to :movie
  has_many :goods
  has_many :users, through: :goods
end
