class Readinglist < ApplicationRecord
  belongs_to :reading
  belongs_to :user
  has_many :public_reviews, dependent: :destroy
  has_many :private_reviews, dependent: :destroy
  has_many :criteria, dependent: :destroy
end
