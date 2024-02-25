class Food < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :measurement, presence: true, length: { minimum: 1, maximum: 10 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
  belongs_to :user
end
