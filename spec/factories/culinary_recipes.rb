# spec/factories/culinary_recipes.rb
FactoryBot.define do
    factory :culinary_recipe do
      name { Faker::Food.dish }
      preparation_time { Faker::Number.between(from: 10, to: 120) }
      cooking_time { Faker::Number.between(from: 10, to: 120) }
      description { Faker::Lorem.paragraph }
      public { [true, false].sample }
      association :user
    end
  end
  