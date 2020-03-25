class Post < ApplicationRecord
    validates :content, {presence: true}

    enum tag:{
        question: 0,
        information:1,
        gaiji:2,
    }
end
