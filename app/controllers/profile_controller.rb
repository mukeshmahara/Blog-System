class ProfileController < ApplicationController

def show
    username = request.path_parameters.values
    @user = User.find_by(:username => username[2])



    @blog = Blog.where(:blog_author => username[2])

    

    
end

end
