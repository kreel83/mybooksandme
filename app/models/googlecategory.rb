class Googlecategory < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :criterialists, dependent: :destroy
end
