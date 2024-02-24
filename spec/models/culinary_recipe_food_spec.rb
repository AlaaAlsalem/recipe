# spec/models/culinary_recipe_food_spec.rb

require 'rails_helper'

RSpec.describe CulinaryRecipeFood, type: :model do
  describe 'associations' do
    it { should belong_to(:culinary_recipe) }
    it { should belong_to(:food) }
  end

  describe 'validations' do
    it { should validate_presence_of(:culinary_recipe_id) }
    it { should validate_presence_of(:food_id) }
    # Add other validation tests as needed
  end

  describe 'factories' do
    it 'has a valid factory' do
      culinary_recipe_food = FactoryBot.build(:culinary_recipe_food)
      expect(culinary_recipe_food).to be_valid
    end
  end
end
