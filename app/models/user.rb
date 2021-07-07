class User < ApplicationRecord
    # devise :database_authenticatable, :recoverabe, :rememberable
    has_many :blogs
    has_one_attached :avatar
    
    # validates :username, :email, :password, :job, presence:true
    
end
