class AddUsersTweetImage1To4ToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :image_1, :string
    add_column :posts, :image_2, :string
    add_column :posts, :image_3, :string
    add_column :posts, :image_4, :string
  end
end
