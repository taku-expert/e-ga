class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :favorites, through: :movies
         has_many :movies, through: :favorites
         has_many :goods
         has_many :comments, through: :goods

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre


end
