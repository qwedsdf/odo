class Remove < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :icon_image
    add_column :users, :icon_image, :string
  end
end
