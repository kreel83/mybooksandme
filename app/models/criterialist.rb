class Criterialist < ApplicationRecord
  belongs_to :googlecategory
  has_many :criteria, dependent: :destroy
end
