require 'rails_helper'

RSpec.describe Category, type: :model do

  describe 'valid factory' do
    it 'valid factory?' do
      expect(FactoryGirl.build(:category)).to be_valid
    end
  end

  describe 'validation' do
    it 'valid name' do
      expect(FactoryGirl.build(:category, name: 'any string')).to be_valid
      expect(FactoryGirl.build(:category, name: nil)).to_not be_valid
    end
  end

end
