class AddDetailsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :phone_number, :bigint
    add_column :users, :address, :string
    add_column :users, :fb_link, :string
    add_column :users, :insta_link, :string
    add_column :users, :twitter_link, :string
    add_column :users, :stack_overflow_link, :string
    add_column :users, :age, :integer
  end
end
