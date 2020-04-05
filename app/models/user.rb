class User < ApplicationRecord
    has_secure_password

    validates :password, confirmation: true, on: :create
    validates :name, {presence: true, uniqueness: true}
    #ƒ†[ƒU[‚É•R‚Ã‚­“ŠeŽæ“¾
    def posts
        return Post.where(user_id: self.id)
    end
end
