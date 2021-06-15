class LoginController < ApplicationController

def index

    
end

def check_credentials
    # @user = User.find_by(username: login_params[:username])
    # puts @user

    @uname = User.pluck(:username)
    @pass = User.pluck(:password)
    @username = params[:username]
    @password = params[:password]
    puts @uname
    puts "ok"
    puts @password
    # if @uname.include? username &&  @pass.include? password
    #     session[:user_id] = user_id
    #     redirect_to "blog_index_path"
    # else
    #     flash[:login_errors] = ["Invalid credentials"]
    #     redirect_to "/login"
    # end
end

# private 
#     def login_params
#         params.permit(:username, :password)
            
#     end



end
