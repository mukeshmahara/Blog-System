

class BlogController < ApplicationController

    def index
        # @user = User.joins(:blogs)

        user = User.all;
        user.each do |user|
            puts user.id
        end
        @blog = Blog.joins(:user)

        # @blog = Blog.find(params[:id])
       
        # user_id = @blog.user_id
       
        # @user = User.find(user_id)
    

    end


    def show
        
        if current_user.nil?
            flash[:login_restrict] = ["User must login first"]
            redirect_to "/blog"
        else
        
        @blog = Blog.find(params[:id])
       
        user_id = @blog.user_id
       
        @user = User.find(user_id)
        end
    end


    def create 
        blog = Blog.new(params.require(:blog).permit(:blog_title,:content, :blog_author,:user_id))
        if blog.save!
            redirect_to blog_index_path
        else
            flash[:blog_errors] = ["Unable to create Blog"]  
            render :new
        end
    end

    def edit
        blog = Blog.update(params.require(:blog).permit(:blog_title,:content, :blog_author,:user_id))
        if blog.save!
            redirect_to blog_index_path
        else
            flash[:blog_errors] = ["Unable to Update Blog"]  
            render :new
        end
    end

    def new
       blog = Blog.new 
    end

    def destroy
        
        @blog = Blog.find(params[:id]).destroy

        redirect_to blog_index_path
    
    end



end
