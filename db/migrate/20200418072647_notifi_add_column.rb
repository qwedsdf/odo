class NotifiAddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :do_user_id, :integer
  end
end
