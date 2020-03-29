class Post < ApplicationRecord
    validates :content, {presence: true}

    enum tag:{
        notType: 0,
        information: 1,
        gaiji: 2,
        question: 3,
    }
end
