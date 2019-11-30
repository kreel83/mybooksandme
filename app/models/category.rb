class Category < ApplicationRecord
  belongs_to :googlecategory
  has_many :readings, dependent: :destroy
end
