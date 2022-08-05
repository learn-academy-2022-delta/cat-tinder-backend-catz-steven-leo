class Cat < ApplicationRecord
    validates :name, :age, :status, :looking_for, :about_me, :hobbies, :image, presence: true
    validates :about_me, length: { minimum: 10 }

end
