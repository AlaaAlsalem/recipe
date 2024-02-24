# spec/models/culinary_recipe_spec.rb
require 'rails_helper'

RSpec.describe CulinaryRecipe, type: :model do
  describe "associations" do
    it { should belong_to(:user) }
    it { should have_many(:culinary_recipe_foods) }
    it { should have_many(:foods).through(:culinary_recipe_foods) }
  end

  describe "factory" do
    it "has a valid factory" do
      culinary_recipe = FactoryBot.build(:culinary_recipe)
      expect(culinary_recipe).to be_valid
    end
  end
end
