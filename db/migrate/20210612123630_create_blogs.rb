class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :bolg_title
      t.string :blog_content
      t.string :blog_category

      t.timestamps
    end
  end
end
