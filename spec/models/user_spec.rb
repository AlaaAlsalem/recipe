require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:culinary_recipes).dependent(:destroy) }
    it { should have_many(:foods).dependent(:destroy) }
  end
end
