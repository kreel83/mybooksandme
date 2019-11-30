class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :readinglists, dependent: :destroy
  has_many :wishslists, dependent: :destroy
  has_many :actualreadings, dependent: :destroy
end
