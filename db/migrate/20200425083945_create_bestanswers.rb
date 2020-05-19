class CreateBestanswers < ActiveRecord::Migration[5.2]
  def change
    create_table :bestanswers do |t|
      rename_column :notifications, :user_id, :post_user_id
      t.timestamps
    end
  end
end
