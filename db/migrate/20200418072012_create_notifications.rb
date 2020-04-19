class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.integer :post_id
      t.boolean :is_looked :default: false, null: false

      t.timestamps
    end
  end
end
