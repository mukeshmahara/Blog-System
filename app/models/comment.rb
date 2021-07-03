class Comment < ApplicationRecord

    belongs_to :user, foreign_key: :user_id
    belongs_to :blog,foreign_key: :blog_id
    
    
end
