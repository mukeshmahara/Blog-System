class Blog < ApplicationRecord
    # belongs_to :user

    validates :blog_title, :blog_content, :blog_author, presence:true
end
