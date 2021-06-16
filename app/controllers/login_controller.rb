class LoginController < ApplicationController

def index

   
end

def check_credentials

    
    # @user = User.authenticate(params[:username], params[:password])
    # puts @user
    # @user = User.find_by(:username => params[:username])
    # @user = User.create(params.require(:user).permit(:username,        
    #     :password))  
    # @user = User.find_by(:id)  
    # puts @user.id
    
    

    @uname = User.pluck(:username).to_a
    @pass = User.pluck(:password).to_a
    username = params[:username]
    password = params[:password]

    @user = User.find_by(:username => username)  
    puts @user
    
    if username =="test" && password == "test"
        
        session[:user_id] = username
        # session[:user_id]
        redirect_to "/blog"
    else
        flash[:login_errors] = ["Invalid credentials"]
        redirect_to "/login"
    end

    

end
def logout
    # session[:user_id].
    reset_session  

    if session[:user_id].nil?
        flash[:logout_msg] = ["Successfully logout"]
        
    end
    redirect_to "/login" 

    
end

private 
    def login_params
        params.require(:login).permit(:username, :password)
            
    end



end
