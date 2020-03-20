class AddImageColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :icon_image, :string
  end
end
