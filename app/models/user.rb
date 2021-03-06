class User < ApplicationRecord
    validates :name, {presence: true}
    validates :email, presence: true,uniqueness: true, length: { maximum: 300 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :password, {presence: true}
   
    has_many :photos
    
end
