class Blog < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    has_many :comments, dependent: :destroy
    has_many_attached :images
    has_rich_text :content
    # validates :blog_title, :blog_author, presence:true
end
