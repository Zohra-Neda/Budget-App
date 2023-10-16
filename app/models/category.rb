class Category < ApplicationRecord
    belongs_to :user, foreign_key: 'author_id'
    has_many :exchanges, foreign_key: 'category_id'
end
