class Category < ApplicationRecord
  has_many :products
  validates_uniqueness_of :name
end
