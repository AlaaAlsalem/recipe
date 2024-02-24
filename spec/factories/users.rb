FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password123' } # You may want to change this to match your password requirements
  end
end
