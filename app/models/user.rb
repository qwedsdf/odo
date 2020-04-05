class User < ApplicationRecord
    has_secure_password

    validates :password, confirmation: true, on: :create
    validates :name, {presence: true, uniqueness: true}
    #���[�U�[�ɕR�Â����e�擾
    def posts
        return Post.where(user_id: self.id)
    end
end
