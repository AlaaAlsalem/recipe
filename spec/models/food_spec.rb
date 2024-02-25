require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3).is_at_most(50) }

    it { should validate_presence_of(:measurement) }
    it { should validate_length_of(:measurement).is_at_least(1).is_at_most(10) }

    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price).only_integer.is_greater_than(0) }
  end

  describe 'factory' do
    it 'has a valid factory' do
      food = FactoryBot.build(:food)
      expect(food).to be_valid
    end
  end
end
