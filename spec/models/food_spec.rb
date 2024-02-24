require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
  end

  describe 'factory' do
    it 'has a valid factory' do
      food = FactoryBot.build(:food)
      expect(food).to be_valid
    end
  end
end
