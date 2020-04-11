class AddPostColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :reply_id, :integer
  end
end
