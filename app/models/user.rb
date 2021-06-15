class User < ApplicationRecord
    # devise :database_authenticatable, :recoverabe, :rememberable
    # has_many :blogs

    validates :username, :email, :password, :job, presence:true
    
end
