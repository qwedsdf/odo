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
end
