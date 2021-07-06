module BlogHelper
    def comment_on_specific_blog(id)
        @comments= Comment.where(:blog_id=>id)
        
        puts "TESTING"
        puts @comments.first.inspect
        puts "TESTING"
        return @comments
      end
end
