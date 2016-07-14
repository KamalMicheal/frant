require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'valid factory' do
    it 'valid factory?' do
      expect(FactoryGirl.build(:book)).to be_valid
    end
  end

  describe 'validations' do
    it 'valid title?' do
      expect(FactoryGirl.build(:book, title: 'Test title')).to be_valid
      expect(FactoryGirl.build(:book, title: nil)).to_not be_valid
    end

    it 'valid file?' do
      expect(FactoryGirl.build(:book, file: 'Test_file.pdf')).to be_valid
      expect(FactoryGirl.build(:book, file: nil)).to_not be_valid
    end
  end

end
