require 'rails_helper'

RSpec.describe Author, type: :model do

  describe 'valid factory' do
    it 'valid factory?' do
      expect(FactoryGirl.build(:author)).to be_valid
    end
  end

  describe 'validation' do
    it 'valid name' do
      expect(FactoryGirl.build(:author, name: 'any string')).to be_valid
      expect(FactoryGirl.build(:author, name: nil)).to_not be_valid
    end
  end
end
