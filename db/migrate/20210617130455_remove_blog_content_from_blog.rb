class RemoveBlogContentFromBlog < ActiveRecord::Migration[6.1]
  def change
    remove_column :blogs, :blog_content, :string
  end
end
