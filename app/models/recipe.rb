class Recipe < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0 }
end
