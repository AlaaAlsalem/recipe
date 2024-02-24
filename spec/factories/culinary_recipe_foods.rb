# spec/factories/culinary_recipe_foods.rb

FactoryBot.define do
    factory :culinary_recipe_food do
      association :culinary_recipe
      association :food
      quantity { 1 } # Default quantity
    end
  end
  