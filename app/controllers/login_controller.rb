class LoginController < ApplicationController

def index

   
end

def check_credentials

    @uname = User.pluck(:username)
    @pass = User.pluck(:password)
    @username = params[:username]
    @password = params[:password]

   
    
    if (@uname.include? @username) && (@pass.include? @password)
        @user = User.find_by!(:username => @username,:password =>@password)  

        session[:user_id] = @user.id
        redirect_to "/blog"

     else 
        reset_session
        flash[:login_errors] = ["Invalid credentials"]
        redirect_to "/login"
    end

    

end
def logout
    # session[:user_id].
    reset_session  

    if session[:user].nil?
        flash[:logout_msg] = ["Successfully logout"]
        
    end
    redirect_to "/login" 

    
end

private 
    def login_params
        params.require(:login).permit(:username, :password)
            
    end



end
