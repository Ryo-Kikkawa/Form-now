class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name, presence: true, uniqueness: true
         validates :income, presence: true
         validates :spending, presence: true
         validates :target, presence: true
         validates :target_amount, presence: true
end
