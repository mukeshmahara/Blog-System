class ApplicationController < ActionController::Base
    def current_user    
        return User.find_by(id: session[:user_id])  
        
    end

    def isLogged_in
       
        return !current_user.nil?  
    end


    helper_method :current_user
    helper_method :isLogged_in
    # def current_user
    # User.find_by(id: session[:user_id])
    # end
    # def logged_in?
        
    #     !current_user.nil?
    # end

end
