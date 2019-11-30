class Reading < ApplicationRecord
  belongs_to :category
  has_many :wishslists, dependent: :destroy
  has_many :readinglists, dependent: :destroy
  has_many :endings, dependent: :destroy
  has_many :actualreadings, dependent: :destroy
end
