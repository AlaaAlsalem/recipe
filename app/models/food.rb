class Food < ApplicationRecord
  belongs_to :user
  has_many :culinary_recipe, through: :culinary_recipe_foods
end
