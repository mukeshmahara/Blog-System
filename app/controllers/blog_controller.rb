

class BlogController < ApplicationController

    def index
        
        @user = User.joins(:blogs)
        @blog = Blog.joins(:user)
        
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
    @blog = Blog.find(params[:id])
    
    end

    def update
        blog=Blog.find(params[:id])
        blog.update(params.require(:blog).permit(:blog_title,:content, :blog_author,:user_id))
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


    # Blog Search Functionality
    def blogSearch

        searchKey = params[:query]

        @searchedBlog = Blog.where('blog_title like ? OR blog_author like ?',"%#{searchKey}%","%#{searchKey}%")
        render "search"
    end

end
