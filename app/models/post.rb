class Post < ApplicationRecord
    validates :content, {presence: true}

    enum tag:{
        notType: 0,
        information: 1,
        gaiji: 2,
        question: 3,
        edit: 4,
    }

    def user
        return User.find_by(id: self.user_id)
    end

    def like_count
        return Like.where(post_id: self.id).count
    end

    def like_member_random
        @list = Like.where(post_id: self.id)
        @count = @list.count
        @user_id = @list.last.user_id
        return User.find_by(id: @user_id).name
    end
end
