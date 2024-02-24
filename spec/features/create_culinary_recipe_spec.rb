# spec/features/create_culinary_recipe_spec.rb
require 'rails_helper'

RSpec.feature "CreateCulinaryRecipe", type: :feature do
  scenario "User creates a new culinary recipe" do
    # Create a user (assuming Devise is set up)
    user = FactoryBot.create(:user, email: "test@example.com", password: "password")

    # Sign in
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Log in"

    # Navigate to the new culinary recipe page
    visit new_culinary_recipe_path

    # Fill in the form to create a new culinary recipe
    fill_in "Name", with: "Delicious Pasta"
    fill_in "Preparation time", with: 30
    fill_in "Cooking time", with: 20
    fill_in "Description", with: "A tasty pasta recipe"
    check "Public" # Assuming there's a checkbox for public/private recipes
    click_button "Create Culinary recipe"

    # Expect to be redirected to the show page of the newly created recipe
    expect(page).to have_content("Culinary recipe was successfully created.")
    expect(page).to have_content("Delicious Pasta")
    expect(page).to have_content("Preparation time: 30 minutes")
    expect(page).to have_content("Cooking time: 20 minutes")
    expect(page).to have_content("Description: A tasty pasta recipe")
    expect(page).to have_content("Public: Yes")
  end
end
