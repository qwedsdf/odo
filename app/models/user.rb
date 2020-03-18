class User < ApplicationRecord
    validates :name, {presence: true}
    validates :password, {presence: true}

    def check_login
        
    end
end
