class Comment < ApplicationRecord
    validates :comment, presence: true
    belongs_to :user, foreign_key: :user_id
    belongs_to :blog,foreign_key: :blog_id
    
    
end
