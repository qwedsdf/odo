class AddPostsColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :best_answer_post_id, :integer, default:0
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
