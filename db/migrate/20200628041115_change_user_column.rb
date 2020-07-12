class ChangeUserColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :header_image, :string, default:"defult_back.jpg"
  end
end
