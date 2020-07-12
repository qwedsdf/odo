class AddUserColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :header_image, :string, default:"defult_back.jpg"
  end
end
