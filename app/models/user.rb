class User < ApplicationRecord
  has_many :categories, foreign_key: 'author_id'
  has_many :exchanges, foreign_key: 'author_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
