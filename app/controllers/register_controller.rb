class RegisterController < ApplicationController

    def create
    
        @user = User.new(params.require(:register).permit(:username, :email, :password,:gender,:fb_link,:insta_link,:age,:twitter_link,:stack_overflow_link,:address,:job, :phone_number,:avatar ))
        if(@user.save)
            flash[:user_created_msg] = ["User has been created successfully"]
            redirect_to "/login"
        else
            flash[:user_creation_failure_msg] = ["Some thing went wrong"]
            redirect_to "/register"
        end
    end


end
