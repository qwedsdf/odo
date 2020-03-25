class AddLabel < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :tag, :integer
  end
end
