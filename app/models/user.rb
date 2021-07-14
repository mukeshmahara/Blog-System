class User < ApplicationRecord
    # devise :database_authenticatable, :recoverabe, :rememberable
    has_many :blogs
    has_one_attached :avatar
    
    validates :username, presence:true
    validates :email, uniqueness:true
    validates :password, :length =>{ :minimum => 5}
end
