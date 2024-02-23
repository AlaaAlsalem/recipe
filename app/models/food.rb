class Food < ApplicationRecord
    belongs_to :user
    has_many :foods, through: :culinary_recipe_foods
end
