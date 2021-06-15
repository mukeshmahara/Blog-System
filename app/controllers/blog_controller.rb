class BlogController < ApplicationController

    def index

        @blog = Blog.all

    end


    def show
    
        @blog = Blog.find(params[:id])
    
    end

 

    def create 
        blog = Blog.new(params.require(:blog).permit(:blog_title,:blog_content,:blog_author,:user_id))
        if blog.save
            redirect_to blog_index_path
        else
            flash[:blog_errors] = ["Unable to create Blog"]  
            render :new
        end
    end

    def edit
        
    end

    def new
       blog = Blog.new 
    end

    def destroy
        
        @blog = Blog.find(params[:id]).destroy

        redirect_to blog_index_path
    
    end



end
