FactoryBot.define do
    factory :food do
      name { Faker::Food.dish }
      # Add other attributes as needed
      association :user
    end
  end