require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  describe 'GET /foods' do
    it 'returns http success' do
      get foods_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /foods/:id' do
    it 'returns http success' do
      food = FactoryBot.create(:food)
      get food_path(food)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /foods/new' do
    it 'returns http success' do
      get new_food_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /foods' do
    it 'creates a new food' do
      expect do
        post foods_path, params: { food: FactoryBot.attributes_for(:food) }
      end.to change(Food, :count).by(1)
      expect(response).to redirect_to(foods_url)
    end
  end

  describe 'GET /foods/:id/edit' do
    it 'returns http success' do
      food = FactoryBot.create(:food)
      get edit_food_path(food)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PATCH /foods/:id' do
    it 'updates the food' do
      food = FactoryBot.create(:food)
      patch food_path(food), params: { food: { name: 'Updated Name' } }
      expect(food.reload.name).to eq('Updated Name')
      expect(response).to redirect_to(food)
    end
  end

  describe 'DELETE /foods/:id' do
    it 'destroys the food' do
      food = FactoryBot.create(:food)
      expect do
        delete food_path(food)
      end.to change(Food, :count).by(-1)
      expect(response).to redirect_to(foods_url)
    end
  end
end
