class CreateBestanswers < ActiveRecord::Migration[5.2]
  def change
    create_table :bestanswers do |t|

      t.timestamps
    end
  end
end
