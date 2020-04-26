class Notification < ApplicationRecord
    def post
        return Post.find_by(id: self.post_id)
    end

    def user
        return User.find_by(id: self.do_user_id)
    end
end
