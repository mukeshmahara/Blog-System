module BlogHelper
    def comment_on_specific_blog(blog_id)
        @comments= Comment.where(:blog_id=>blog_id).order("created_at DESC")
        
        return @comments
      end

      def find_UserbyCommentID(user_id)
        @user = User.where(:id=>user_id)
        return @user.first;
      end


      def delete_comment(comment_id)
      
        @comment = Comment.where(:id=>comment_id)
      
      end

      def edit_comment(comment_id,new_comment)
      
        @comment = Comment.update(:id=>comment_id, :comment=>new_comment)
      
      end
end
