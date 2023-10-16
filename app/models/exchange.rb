class Exchange < ApplicationRecord
    belongs_to :user, foreign_key: 'author_id'
    belongs_to :category, foreign_key: 'category_id'
end
