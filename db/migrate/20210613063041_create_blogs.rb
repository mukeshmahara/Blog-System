class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :blog_title
      t.string :blog_content
      t.string :blog_author

      t.timestamps
    end
  end
end
