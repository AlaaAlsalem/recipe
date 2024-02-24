class PublicRecipesController < ApplicationController
  def index
    @culinary_recipes = CulinaryRecipe.where(public: true)
  end
end
